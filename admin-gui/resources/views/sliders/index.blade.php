@extends('layout.admin')

@section('title')
    <title>Menu List </title>
@endsection
@section('content_wrapper')
    <div class="content-wrapper">
        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                            <a href="{{ route('slider_create') }}" ><i class="mdi mdi-plus-circle"></i></a>
                    </div>
                    <div class="col-md-12">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Tên slider</th>
                                <th scope="col">Mô tả</th>
                                <th scope="col">Hình ảnh</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($slider as $sliders)
                            <tr></tr>
                            <tr>
                                <th scope="row">{{$sliders->id}}</th>
                                <td>{{$sliders->name}}</td>
                                <td></td>
                                <td><img height="100px" width="100px" src="{{asset('public' . $sliders->image_path)}}" alt=""></td>
                                <td>
                                    @can('slider-edit')
                                      <a href="{{ route('slider_edit', ['id' => $sliders->id]) }}" class="btn btn-gradient-dark btn-icon-text">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
                                    @endcan
                                    @can('slider-delete')
                                      <a href="" data-url="{{ route('slider_delete', ['id'=>$sliders->id]) }}" class="btn btn-danger btn-icon-text action_delete">Delete<i class="mdi mdi-delete btn-icon-append"></i></a>
                                    @endcan
                                </td>
                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-3">
                        {{ $slider ->links() }}
                    </div>
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
