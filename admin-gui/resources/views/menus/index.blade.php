@extends('layout.admin')

@section('title')
<title>Menu List </title>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('public/menu/menu.css') }}">
@endsection
@section('content_wrapper')
<div class="content-wrapper">
    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    @can('menu-add')
                    @include('menus.add')
                    @endcan
                </div>

                <div class="col-md-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Tên menu</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($menus as $menuItem)
                            <tr>
                                <th scope="row">{{$menuItem->id}}</th>
                                <td>{{$menuItem->name}}</td>
                                <td>
                                    @can('menu-edit')
                                    <a href="{{ route('menu_edit', ['id' => $menuItem->id]) }}"
                                    class="btn btn-gradient-dark btn-icon-text">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
                                    <!-- @yield("menu-edit") -->
                                    @endcan

                                    @can('menu-delete')
                                    <a href="" data-url="{{ route('menu_delete', ['id'=>$menuItem->id]) }}"
                                    class="btn btn-danger btn-icon-text action_delete">Delete<i class="mdi mdi-delete btn-icon-append"></i></a>
                                    @endcan

                                </td>

                            </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <div class="col-md-12">
                    {{ $menus ->links() }}
                </div>

            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection