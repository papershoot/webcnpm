@extends('layout.admin')
@section('title')
    <title>User List</title>
@endsection
@section('content_wrapper')
    <div class="content-wrapper">
        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ route('user_create') }}" ><i class="mdi mdi-plus-circle"></i></a>
                    </div>
                    <div class="col-md-12">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Name</th>
                                <th scope="col">Tài khoản</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($userd as $userItem)
                            <tr>
                                <th scope="row">{{$userItem->id}}</th>
                                <td>{{$userItem->name}}</td>
                                <td>{{$userItem->email}}</td>
                                <td>
                                    @can('user-edit')
                                         <a href="{{ route('user_edit', ['id' => $userItem->id]) }}" class="btn btn-gradient-dark btn-icon-text">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
                                    @endcan
                                    @can('user-delete')
                                        <a href="" data-url="{{ route('user_delete', ['id'=>$userItem->id]) }}" class="btn btn-danger btn-icon-text action_delete">Delete<i class="mdi mdi-delete btn-icon-append"></i></a>
                                    @endcan
                                </td>

                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-12">
                        {{ $userd->links() }}
                    </div>
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
