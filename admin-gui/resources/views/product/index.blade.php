@extends('layout.admin')

@section('title')
<title>Trang chu</title>
@endsection
@section('css')
    <link href="{{ asset('public/vendor/select2/select2.min.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('admin/product/add/add.css') }}">
    <link rel="stylesheet" href="{{ asset('public/product/add/add.css') }}">
    <link href="{{ asset('public/vendor/select2/select2.min.css') }}" rel="stylesheet" />
@endsection
@section('content_wrapper')
<div class="content-wrapper">
    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    @include('product.add')
                    <!-- <a href="{{ route('product_create') }}" class="btn btn-success float-right m-2" >Add</a> -->
                </div>
                <div class="col-md-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">Images</th>
                                <th scope="col">Category</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($products as $productItem)
                            <tr>
                                <th scope="row">{{$productItem->id}}</th>
                                <td>{{$productItem->name}}</td>
                                <td>{{ number_format( $productItem->price ) }}</td>
                                <td>
                                    <img height="100px" width="100px"
                                        src="{{ asset('public/'.$productItem->feature_image_path) }}">
                                </td>
                                <td>
                                    {{ optional( $productItem->category)->name }}
                                </td>
                                <td>
                                    @can('product-edit')
                                    <a href="{{ route('product_edit', ['id'=>$productItem->id])}}"
                                    class="btn btn-gradient-dark btn-icon-text">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
                                    @endcan
                                    @can('product-delete')
                                    <a href="" data-url="{{ route('product_delete', ['id'=>$productItem->id]) }}"
                                    class="btn btn-danger btn-icon-text action_delete">Delete<i class="mdi mdi-delete btn-icon-append"></i></a>
                                    @endcan
                                </td>

                            </tr>
                            @endforeach

                        </tbody>
                    </table>
                    <div style="margin-top:50px;float:right" class="col-md-12">
                        {{ $products ->links() }}
                    </div>
                </div>

            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection
@section('js')
<script src="{{ asset('public/sweetalert/js1.js') }}"></script>
<script src="{{ asset('public/sweetalert/js.js') }}"></script>
<script src="{{ asset('public/vendor/select2/select2.min.js') }}"></script>
<script src="https://cdn.tiny.cloud/1/acffs5w36scrqtyzyeyqi7llr1qpjh5cb034kc4e77t2dial/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script src="{{ asset('public/product/add/add.js') }}"></script>
@endsection