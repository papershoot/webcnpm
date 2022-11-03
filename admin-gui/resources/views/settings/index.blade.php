@extends('layout.admin')

@section('title')
    <title>Setting List </title>
@endsection
@section('content_wrapper')
    <div class="content-wrapper">
        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                            <a href="{{ route('setting_create') }}"><i class="mdi mdi-plus-circle"></i></a>
                    </div>
                    <div class="col-md-12">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Config key</th>
                                <th scope="col">Config value</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($setting as $settingItem)
                            <tr>
                                <th scope="row">{{$settingItem->id}}</th>
                                <td>{{$settingItem->config_key}}</td>
                                <td>{{$settingItem->config_value}}</td>
                                <td>
                                    @can('setting-edit')
                                      <a href="{{ route('setting_edit', ['id' =>$settingItem->id ]) }}" class="btn btn-gradient-dark btn-icon-text">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
                                    @endcan
                                    @can('setting-delete')
                                            <a href="" class="btn btn-danger btn-icon-text action_delete">Delete<i class="mdi mdi-delete btn-icon-append"></i></a>
                                        @endcan


                                </td>

                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-12">
                        {{ $setting ->links() }}
                    </div>

                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
