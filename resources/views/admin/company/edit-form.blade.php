@extends('layouts.admin.main')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="card card-secondary my-0">
                <div class="card-header">
                    <ol class="breadcrumb float-sm-left ">
                        <li class="breadcrumb-item"><a class="card-title" href="{{route('company.index')}}">Danh sách hãng xe</a></li>
                        <li class="breadcrumb-item active">Sửa hãng xe</li>
                    </ol>
                </div>
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form action="" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card">
                    <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="add-product-preview-img">
                                        <img src="{{asset('storage/' . $model->logo)}}" class="img-thumbnail float-ju">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="">Tên hãng xe</label>
                                        <input type="text" name="name" class="form-control" placeholder="Tên hãng xe" value="{{$model->name}}">
                                        @error('name')
                                            <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="">Logo hãng xe</label>
                                        <input type="file" name="uploadfile" class="form-control">
                                        @error('uploadfile')
                                            <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Lưu</button>
                                        <a href="{{route('company.index')}}" class="btn btn-danger">Hủy</a>
                                    </div>
                                </div>
                                    
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <br>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@endsection