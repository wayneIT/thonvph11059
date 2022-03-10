<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{route('home.client')}}" class="brand-link">
        <img src="{{ asset('admin-theme/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">VĂN THỌ</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
            @if(Auth::check())
                <img src="{{asset( 'storage/' . Auth::user()->avatar)}}" class="img-circle elevation-2" alt="User Image" width="70" />
            @else
                <img src="{{ asset('admin-theme/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2" alt="User Image">
            @endif
        </div>
        <div class="info">
        @if(Auth::check())
            <a href="#" class="d-block">{{Auth::user()->name}}</a>
        @else
            <a href="#" class="d-block">Alexander Pierce</a>
        @endif
            
        </div>
    </div>

    <!-- SidebarSearch Form -->
    <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
                <button class="btn btn-sidebar">
                    <i class="fas fa-search fa-fw"></i>
                </button>
            </div>
        </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
            with font-awesome or any other icon font library -->
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="fab fa-buffer"></i>
                    <p>Danh mục<i class="right fas fa-angle-left"></i></p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{route('category.index')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Danh sách</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('category.add')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Thêm danh mục</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="fas fa-car"></i>
                    <p>Hãng xe<i class="right fas fa-angle-left"></i></p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{route('company.index')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Danh sách</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('company.add')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Thêm hãng xe</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="fas fa-tags"></i>
                    <p>Phụ kiện<i class="right fas fa-angle-left"></i></p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{route('tag.index')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Danh sách</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('tag.add')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Thêm thẻ tag</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="fas fa-bug"></i>
                    <p>Sản phẩm<i class="right fas fa-angle-left"></i></p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{route('product.index')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Danh sách</p>
                        </a>
                    </li>
                    @hasanyrole('admin|editor')
                    <li class="nav-item">
                        <a href="{{route('product.add')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Thêm sản phẩm</p>
                        </a>
                    </li>
                    @endhasanyrole
                </ul>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="fas fa-user-friends"></i>
                    <p>Tài khoản<i class="right fas fa-angle-left"></i></p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{route('user.index')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Danh sách</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('user.add')}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Thêm tài khoản</p>
                        </a>
                    </li>
                    @if(Auth::check())
                    <li class="nav-item">
                        <a href="{{route('user.changeP', ['id' => Auth::user()->id])}}" class="nav-link">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Đổi mật khẩu</p>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
        </ul>
    </nav>
    <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>