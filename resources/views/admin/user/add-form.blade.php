@extends('layouts.admin.main')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="card card-secondary my-0">
                <div class="card-header">
                    <ol class="breadcrumb float-sm-left ">
                        <li class="breadcrumb-item"><a class="card-title" href="{{route('user.index')}}">Danh sách tài khoản</a></li>
                        <li class="breadcrumb-item active">Thêm tài khoản</li>
                    </ol>
                </div>
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid pb-1">
            <div class="card">
                <div class="card-body">
                    <form action="" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" class="form-control" value="{{old('name')}}" placeholder="Tên tài khoản">
                                    @error('name')
                                        <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="text" name="email" class="form-control" value="{{old('email')}}" placeholder="admin@gmail.com">
                                    @error('email')
                                        <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="">Password</label>
                                    <input type="password" name="password" class="form-control" value="{{old('password')}}" placeholder="Mật khẩu">
                                    @error('password')
                                        <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="">Confirm Password</label>
                                    <input type="password" name="cfpassword" class="form-control" value="{{old('cfpassword')}}" placeholder="Nhập lại mật khẩu">
                                    @error('cfpassword')
                                        <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="">Số điện thoại</label>
                                    <input type="text" name="phone" class="form-control" value="{{old('phone')}}" placeholder="Nhập vào số điện thoại">
                                    @error('phone')
                                        <span class="text-danger">{{$message}}</span>
                                    @enderror   
                                </div>
                                <div class="form-group">
                                    <label for="">Ảnh đại diện</label>
                                    <input type="file" name="uploadfile" class="form-control">
                                    @error('uploadfile')
                                        <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="text-right">
                                <button type="submit" class="btn btn-primary">Lưu</button>
                                <a href="{{route('user.index')}}" class="btn btn-danger">Hủy</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@endsection