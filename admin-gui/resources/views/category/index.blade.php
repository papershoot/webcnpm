@extends('layout.admin')

@section('title')
<title>List Category</title>
@endsection

@section('js')
<script src="{{ asset('public/sweetalert/js1.js') }}"></script>
<script src="{{ asset('public/sweetalert/js.js') }}"></script>
@endsection
@section('css')
<link rel="stylesheet" href="{{ asset('public/category/category.css') }}">

@endsection
@section('content_wrapper')
<div class="content-wrapper">
    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    @include('category.add')
                    <!-- <a href="{{ route('category_create') }}" class="btn btn-success float-right m-2" >Add</a> -->
                </div>
                <div class="col-md-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Tên Danh Mục</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($categories as $catItem)
                            <tr>
                                <th scope="row">{{$catItem->id}}</th>
                                <td>{{$catItem->name}}</td>
                                <td>
                                

                                    @can('category-edit')
                                    <a href="{{ route('category_edit', ['id' => $catItem->id]) }}"
                                        class="btn btn-gradient-dark btn-icon-text">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
                                    @endcan

                                    @can('category-delete')
                                    <a href="" data-url="{{ route('category_delete', ['id'=>$catItem->id]) }}"
                                    class="btn btn-danger btn-icon-text action_delete">Delete<i class="mdi mdi-delete btn-icon-append"></i></a>
                                    @endcan

                                </td>

                            </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <div class="col-md-12"></div>
                <div class="col-md-12 float-right">
                    {{$categories->links()}}
                </div>

            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection