<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Company;
use App\Models\Product;
use App\Http\Requests\CompanyFormRequest;

class CompanyController extends Controller
{
    public function index(Request $request){
        $pagesize = 5;
        $searchData = $request->except('page');
        
        if(count($request->all()) == 0){
            // Lấy ra danh sách sản phẩm & phân trang cho nó
            $companies = Company::paginate($pagesize);
        }else{
            $companyQuery = Company::where('name', 'like', "%" .$request->keyword . "%");
            if($request->has('order_by') && $request->order_by > 0){
                if($request->order_by == 1){
                    $companyQuery = $companyQuery->orderBy('name');
                }else{
                    $companyQuery = $companyQuery->orderByDesc('name');
                }
            }
            $companies = $companyQuery->paginate($pagesize)->appends($searchData);
        }
        //$companies->load('product');
        
        $companies->load('products');
        // trả về cho người dùng 1 giao diện + dữ liệu companies vừa lấy đc 
        return view('admin.company.index', [
            'comp' => $companies,
            'searchData' => $searchData
        ]);
    }

    public function remove($id){
        //Company::destroy($id);
        $company = Company::find($id);
        $company->products()->delete();
        $company->delete();
        return redirect()->back();
    }

    public function addForm(){
        return view('admin.company.add-form');
    }

    public function saveAdd(CompanyFormRequest $request){
        $model = new Company(); 

        $model->fill($request->all());
        // upload ảnh
        if($request->hasFile('uploadfile')){
            $model->logo = $request->file('uploadfile')->storeAs('uploads/companies', uniqid() . '-' . $request->uploadfile->getClientOriginalName());
        }

        $model->save();
        return redirect(route('company.index'));
    }

    public function editForm($id){
        $model = Company::find($id);
        if(!$model){
            return redirect()->back();
        }
        return view('admin.company.edit-form', compact('model'));
    }

    public function saveEdit($id, CompanyFormRequest $request){
        $model = Company::find($id);

        if(!$model){
            return redirect()->back();
        }
        $model->fill($request->all());
        // upload ảnh
        if($request->hasFile('uploadfile')){
            $model->logo = $request->file('uploadfile')->storeAs('uploads/companies', uniqid() . '-' . $request->uploadfile->getClientOriginalName());
        }
        $model->save();
        return redirect(route('company.index'));
    }
}
