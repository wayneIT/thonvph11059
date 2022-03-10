<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function loginForm(Request $request){
        return view('auth.login');
    }

    public function postLogin(Request $request){
        // thực hiện validate bằng $request
        $request->validate(
            [
                'email' => 'required|email',
                'password' => 'required'
            ],
            [
                'email.required' => "Hãy nhập tài khoản",
                'email.email' => "Không đúng định dạng email",
                'password.required' => "Hãy nhập mật khẩu"
            ]
        );
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
            
            return redirect(route('product.index'));
        }

        return redirect()->back()->with('msg', "Sai thông tin đăng nhập");
    }

    public function registrationForm(Request $request){
        return view('auth.registration');
    }

    public function postRegistration(Request $request){
        $users = User::all();
        $request->validate(
            [
                'name' => 'required|min:3|max:32',
                'email' => 'required|email|unique:users',
                'password' => 'required|min:6|max:32',
                'cfpassword' => 'required|same:password|'
            ],
            [
                'name.required' => "Hãy nhập vào tên",
                'email.required' => "Hãy nhập email",
                'email.email' => "Không đúng định dạng email",
                'email.unique' => "Email này đã được sử dụng",
                'password.required' => "Hãy nhập mật khẩu",
                'password.min' => "Mật khẩu phải hơn 6 ký tự",
                'password.max' => "Mật khẩu phải dưới 32 ký tự",
                'cfpassword.required' => "Hãy nhập xác nhận mật khẩu",
                'cfpassword.same' => "Mật khẩu xác nhận không giống mật khẩu"
            ]
        );
        $model = new User();
        $model->fill($request->all());
        $model->password = Hash::make($request->password);
        $model->save();

        return redirect(route('login'));
    }
}