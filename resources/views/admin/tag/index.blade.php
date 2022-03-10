@extends('layouts.admin.main')
@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="card card-secondary my-0">
                <div class="card-header">
                    <ol class="breadcrumb float-sm-left ">
                        <li class="breadcrumb-item card-title">Danh sách tag</li>
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
                                    <label for="">Search</label>
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
                                <th>Tên thẻ tag</th>
                                <th>Số lượng sản phẩm đang dùng thẻ</th>
                                <th>Created_at</th>
                                <th><a href="{{route('tag.add')}}" class="btn btn-primary">Tạo mới</a></th>
                            </thead>
                            <tbody>
                                @foreach($tags as $tg)
                                <tr>
                                    <td>{{(($tags->currentPage()-1)*5) + $loop->iteration}}</td>
                                    <td>{{$tg->name}}</td>
                                    <td></td>
                                    <td>{{$tg->created_at}}</td>
                                    <td>
                                        <a href="{{route('tag.edit', ['id' => $tg->id])}}" class="btn btn-success"><i class="far fa-edit"></i></a>
                                        <a class="btn btn-danger" href="{{route('tag.remove', ['id' => $tg->id])}}" onclick="return confirm('Bạn có chắc muốn xóa thẻ tag này')">
                                            <i class="far fa-trash-alt"></i>
                                        </a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="d-flex justify-content-end">
                            {{$tags->links()}}
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