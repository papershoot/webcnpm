<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  @yield('title')
  <link href="{{ asset('public/select2/select2.min.css') }}" rel="stylesheet" />
  <link rel="stylesheet" href="{{ asset('public/product/add/add.css') }}">
  <!-- plugins:css -->
  <link rel="stylesheet" href="{{asset('public/assets/vendors/mdi/css/materialdesignicons.min.css')}}">
  <link rel="stylesheet" href="{{asset('public/assets/vendors/css/vendor.bundle.base.css')}}">
  <link rel="stylesheet" href="{{asset('public/home/index.css')}}">
@yield('css')
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <!-- endinject -->
  <!-- Layout styles -->
  <link rel="stylesheet" href="{{asset('public/assets/css/style.css')}}">
  <!-- End layout styles -->
</head>

<body>
  <div class="container-scroller">
    @include('patials.header')

    <div class="container-fluid page-body-wrapper">
      @include('patials.sidebar')
        <div class="main-panel">
        @yield('content_wrapper')
      </div>
    </div>
  </div>


  <script src="{{asset('public/assets/vendors/js/vendor.bundle.base.js')}}"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="{{asset('public/assets/vendors/chart.js/Chart.min.js')}}"></script>
  <script src="{{asset('public/assets/js/jquery.cookie.js')}}" type="text/javascript"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="{{asset('public/assets/js/off-canvas.js')}}"></script>
  <script src="{{asset('public/assets/js/hoverable-collapse.js')}}"></script>
  <script src="{{asset('public/assets/js/misc.js')}}"></script>
  <!-- endinject -->
  <!-- Custom js for this page -->
  <script src="{{asset('public/assets/js/dashboard.js')}}"></script>
  <script src="{{asset('public/assets/js/todolist.js')}}"></script>
  <script src="{{ asset('public/select2/select2.min.js') }}"></script>
  <script src="https://cdn.tiny.cloud/1/acffs5w36scrqtyzyeyqi7llr1qpjh5cb034kc4e77t2dial/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script src="{{ asset('public/sweetalert/js1.js') }}"></script>
  <script src="{{ asset('public/sweetalert/js.js') }}"></script>
  <script src="{{ asset('public/product/add/add.js') }}"></script>
  <script src="{{asset('public/assets/js/file-upload.js')}}"></script>
  <script src="{{ asset('public/role/role.js') }}"></script>

  @yield('js')
  <!-- End custom js for this page -->
</body>

</html>