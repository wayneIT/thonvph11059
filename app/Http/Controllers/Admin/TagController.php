<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    public function index(Request $request){
        $pagesize = 5;
        $searchData = $request->except('page');
        
        if(count($request->all()) == 0){
            // Lấy ra danh sách sản phẩm & phân trang cho nó
            $tags = Tag::paginate($pagesize);
        }else{
            $tagQuery = Tag::where('name', 'like', "%" .$request->keyword . "%");
            if($request->has('order_by') && $request->order_by > 0){
                if($request->order_by == 1){
                    $tagQuery = $tagQuery->orderBy('name');
                }else{
                    $tagQuery = $tagQuery->orderByDesc('name');
                }
            }
            $tags = $tagQuery->paginate($pagesize)->appends($searchData);
        }

        // trả về cho người dùng 1 giao diện + dữ liệu tags vừa lấy đc 
        return view('admin.tag.index', [
            'tags' => $tags,
            'searchData' => $searchData
        ]);
    }

    public function remove($id){
        Tag::destroy($id);
        return redirect()->back();
    }

    public function addForm(){
        return view('admin.tag.add-form');
    }

    public function saveAdd(Request $request){
        $tags = Tag::all();
        $model = new Tag();
        $model->fill($request->all());

        $request->validate(
            [
                'name' => 'required|unique:tags'
            ],
            [
                'name.required' => "Hãy nhập vào tên thẻ tag!",
                'name.unique' => "Thẻ tag này đã tồn tại!"
            ]
        );

        $model->save();
        return redirect(route('tag.index'));
    }

    public function editForm($id){
        $model = Tag::find($id);
        if(!$model){
            return redirect()->back();
        }
        return view('admin.tag.edit-form', compact('model'));
    }

    public function saveEdit($id, Request $request){
        $model = Tag::find($id); 
        if(!$model){
            return redirect()->back();
        }

        $request->validate(
            [
                'name' => 'required|unique:tags'
            ],
            [
                'name.required' => "Hãy nhập vào tên thẻ tag!",
                'name.unique' => "Thẻ tag này đã tồn tại!"
            ]
        );
        
        $model->fill($request->all());
        $model->save();
        return redirect(route('tag.index'));
    }
}
