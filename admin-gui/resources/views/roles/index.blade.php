@extends('layout.admin')

@section('title')
    <title>Role List</title>
@endsection
@section('content_wrapper')
    <div class="content-wrapper">
        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ route('role_create') }}" ><i class="mdi mdi-plus-circle"></i></a>
                    </div>
                    <div class="col-md-12">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Name</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($role as $roleItem)
                            <tr>
                                <th scope="row">{{$roleItem->id}}</th>
                                <td>{{$roleItem->name}}</td>
                                <td>
                                    @can('role-edit')
                                         <a href="{{ route('role_edit', ['id' => $roleItem->id]) }}" class="btn btn-gradient-dark btn-icon-text">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
                                    @endcan
                                    @can('role-delete')
                                         <a href="" data-url="{{ route('role_delete', ['id'=>$roleItem->id]) }}" class="btn btn-danger btn-icon-text action_delete">Delete<i class="mdi mdi-delete btn-icon-append"></i></a>
                                    @endcan
                                </td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-12">
                        {{ $role->links() }}
                    </div>

                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
