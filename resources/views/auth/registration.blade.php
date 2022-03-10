<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="{{ asset('admin-theme/custom/login.css')}}">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <form class="login-div" method="POST">
    @csrf
        @if(session('msg') != null)
        <p style="color: red">{{session('msg')}}</p>
        @endif
        <div class="login-in">
            @error('name')
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                {{ $message }}.
            </div>
            @enderror
            <div class="username">
                <i class="bx bx-user"></i>
                <input type="text" name="name" placeholder="Name" value="{{old('name')}}">
            </div>
            @error('email')
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                {{ $message }}.
            </div>
            @enderror
            <div class="username">
                <i class='bx bx-mail-send' ></i>
                <input type="text" name="email" placeholder="Email" value="{{old('email')}}">
            </div>
            @error('password')
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                {{ $message }}.
            </div>
            @enderror
            <div class="password">
                <i class='bx bx-lock-open'></i>
                <input type="password" name="password" placeholder="Password">
            </div>
            @error('cfpassword')
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                {{ $message }}.
            </div>
            @enderror
            <div class="password">
                <i class="bx bx-lock"></i>
                <input type="password" name="cfpassword" placeholder="Confirm password">
            </div>
        </div>
        <button class="buttons" type="submit">Submit</button>
        <div class="link">
            <a href="#">Forgotten password</a> or
            <a href="{{route('login')}}">Sign in</a>
        </div>
    </form>
</body>
</html>