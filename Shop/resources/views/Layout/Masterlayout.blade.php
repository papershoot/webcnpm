<!Doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    @yield('title')
    <link href="{{ asset('Shop/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('Shop/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('Shop/css/prettyPhoto.css') }}" rel="stylesheet">
    <link href="{{ asset('Shop/css/price-range.css') }}" rel="stylesheet">
    <link href="{{ asset('Shop/css/animate.css') }}" rel="stylesheet">
    <link href="{{ asset('Shop/css/main.css') }}" rel="stylesheet">
    <link href="{{ asset('Shop/css/responsive.css') }}" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="{{ asset('Shop/js/html5shiv.js') }}"></script>
    <script src="{{ asset('aShopper/js/respond.min.js') }}"></script>
    <![endif]-->
    <link rel="shortcut icon" href="{{ asset('Shop/images/ico/favicon.ico') }}">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png'">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png'">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png'">
    <!-- JavaScript -->

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>

@yield('css')
<style>
    .product-image-wrapper {
        box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
        border: 1px solid #fff;
        border-radius: 10px;
    }
    .add-to-cart {
        border: 1px solid rgba(255, 255, 255, 70);
        border-radius: 5px;
    }
    #slider {
        margin-bottom: 20px;
    }
    .add-to-cart:hover {
        border: 1px solid rgba(255, 255, 255, 70);
        border-radius: 5px;
    }
    .product-image-wrapper img{
        padding: 10px;
    }
    .productinfo.text-center h2 {
        font-size: 20px;
    }
    .category-products, .brands_products, .brands-name, .price-range, .shipping {
        border-radius: 10px;
    }
    .cart_total_price {
        font-size: 20px !important;
    }
    #header{
        position: fixed;
        width: 100%;
        z-index: 10000;
        top: 0;
        background-color: #fff;
    }
    #slider{
        margin-top:150px; 

    }
    #cart_items{
        margin-top:150px; 

    }
</style>
</head><!--/head-->
<body>
@include('patials.header')

@yield('content')

@include('patials.footer')

<script src="{{ asset('Shop/js/jquery.js') }}"></script>
<script src="{{ asset('Shop/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('Shop/js/jquery.scrollUp.min.js') }}"></script>
<script src="{{ asset('Shop/js/price-range.js') }}"></script>
<script src="{{ asset('Shop/js/jquery.prettyPhoto.js') }}"></script>
<script src="{{ asset('Shop/js/main.js') }}"></script>
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

@yield('js')
</body>
</html>
