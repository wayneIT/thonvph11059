<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thosupercar</title>
    <!-- boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- app css -->
    <link rel="stylesheet" href="{{ asset('client-theme/css/grid.css')}}">
    <link rel="stylesheet" href="{{ asset('client-theme/css/app.css')}}">
</head>

<body>

    <!-- header -->
    @include('layouts.client.header')
    <!-- end header -->

    <!-- hero slide -->
    @yield('content')
    <!-- end news section -->

    <!-- footer section -->
    @include('layouts.client.footer')
    <!-- end footer section -->

    <!-- app js -->
    <script src="{{ asset('client-theme/js/app.js')}}"></script>

</body>

</html>