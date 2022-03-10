<!-- header -->
<header>
    <a href="#" class="logo">
        <i class='bx bxl-android'></i>
        <span class="title-logo">VĂN THỌ</span>
    </a>
    <div class="main-menu-wrapper">
        <ul class="main-menu">
            <li><a href="#" class="active">home</a></li>
            <li><a href="#">shop</a></li>
            <li><a href="#">dealer</a></li>
            <li><a href="#">about</a></li>
            <li><a href="#">contact</a></li>
        </ul>
    </div>
    <ul class="user-menu">
        <li><a href="#"><i class='bx bx-shopping-bag'></i></a></li>
        @if(Auth::check())
        <li>
            <a href=""><i class='bx bx-user'></i></a>
        </li>
        <li>
            <a href="{{route('logout')}}"><i class='bx bx-log-in'></i></a>
        </li>
        @else
        <li>
            <a href="{{route('login')}}"><i class='bx bx-log-in'></i></a>
        </li>
        <li>
            <a href="#"><i class='bx bx-user-plus'></i></a>
        </li>
        @endif
    </ul>
</header>
<!-- end header -->