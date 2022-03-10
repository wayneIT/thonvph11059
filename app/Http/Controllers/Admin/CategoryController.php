<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\CategoryFormRequest;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;

class CategoryController extends Controller
{
    public function index(Request $request){
        $pagesize = 5;
        $searchData = $request->except('page');
        
        if(count($request->all()) == 0){
            // Lấy ra danh sách sản phẩm & phân trang cho nó
            $categories = Category::paginate($pagesize);
        }else{
            $categoryQuery = Category::where('name', 'like', "%" .$request->keyword . "%");
            if($request->has('order_by') && $request->order_by > 0){
                if($request->order_by == 1){
                    $categoryQuery = $categoryQuery->orderBy('name');
                }else{
                    $categoryQuery = $categoryQuery->orderByDesc('name');
                }
            }
            $categories = $categoryQuery->paginate($pagesize)->appends($searchData);
        }
        //$categories->load('product');
        
        $categories->load('products');
        // trả về cho người dùng 1 giao diện + dữ liệu categories vừa lấy đc 
        return view('admin.category.index', [
            'cates' => $categories,
            'searchData' => $searchData
        ]);
    }

    public function remove($id){
        $category = Category::find($id);
        $category->products()->delete();
        $category->delete();
        return redirect()->back();
    }

    public function addForm(){
        return view('admin.category.add-form');
    }

    public function saveAdd(CategoryFormRequest $request){
        $model = new Category();
        $model->fill($request->all());
        $model->save();
        return redirect(route('category.index'));
    }

    public function editForm($id){
        $model = Category::find($id);
        if(!$model){
            return redirect()->back();
        }
        return view('admin.category.edit-form', compact('model'));
    }

    public function saveEdit($id, CategoryFormRequest $request){
        $model = Category::find($id); 
        if(!$model){
            return redirect()->back();
        }
        
        $model->fill($request->all());
        $model->save();
        return redirect(route('category.index'));
    }

    public function detail($id)
    {
        $cate = Category::find($id);
        $cate->load('products');
        return view('admin.category.detail', ['cate' => $cate]);
    }
}
