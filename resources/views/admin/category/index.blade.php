@extends('layouts.admin.main')
@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="card card-secondary my-0">
                <div class="card-header">
                    <ol class="breadcrumb float-sm-left ">
                        <li class="breadcrumb-item card-title">Danh sách danh mục</li>
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
                    <form action="" method="get">
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="">Tên danh mục</label>
                                    <input class="form-control" placeholder="Search" type="text" name="keyword" @isset($searchData['keyword']) value="{{$searchData['keyword']}}" @endisset>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label for="">Sắp xếp theo</label>
                                    <select class="form-control" name="order_by" >
                                        <option value="0">Mặc định</option>
                                        <option @if(isset($searchData['order_by']) &&  $searchData['order_by'] == 1) selected @endif  value="1">Tên alphabet</option>
                                        <option @if(isset($searchData['order_by']) &&  $searchData['order_by'] == 2) selected @endif value="2">Tên giảm dần alphabet</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <br>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary mt-2">Tìm kiếm</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="row">
                        <table class="table table-striped">
                            <thead>
                                <th>STT</th>
                                <th>Tên danh mục</th>
                                <th>Số lượng sản phẩm</th>
                                <th>Trạng thái</th>
                                <th>Show menu</th>
                                <th><a href="{{route('category.add')}}" class="btn btn-primary">Tạo mới</a></th>
                            </thead>
                            <tbody>
                                @foreach($cates as $c)
                                <tr>
                                    <td>{{(($cates->currentPage()-1)*5) + $loop->iteration}}</td>
                                    <td>{{$c->name}}</td>
                                    <td>{{count($c->products)}}</td>
                                    <td><i class="{{ $c->status == 1 ? 'fas fa-eye text-success' : 'fas fa-eye-slash text-danger'  }}"></i></td>
                                    <td><i class="{{ $c->show_menu == 1 ? 'fas fa-eye text-success' : 'fas fa-eye-slash text-danger'  }}"></i></td>
                                    <td>
                                        <a href="{{route('category.edit', ['id' => $c->id])}}" class="btn btn-success"><i class="far fa-edit"></i></a>
                                        
                                        @if(count($c->products) > 0)
                                            <a class="btn btn-danger" href="{{route('category.remove', ['id' => $c->id])}}" onclick="return confirm('Danh mục này đang tồn tại sp')">
                                        @else
                                            <a class="btn btn-danger" href="{{route('category.remove', ['id' => $c->id])}}" onclick="return confirm('Bạn có chắc muốn xóa danh mục này?')">
                                        @endif
                                            <i class="far fa-trash-alt"></i>
                                        </a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="d-flex justify-content-end">
                            {{$cates->links()}}
                        </div>
                    </div>
                </div>
            </div>
            
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@endsection
@section('pagejs')
    <script>
        
    </script>
@endsection