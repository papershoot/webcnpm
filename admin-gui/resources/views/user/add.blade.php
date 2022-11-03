@extends('layout.admin')

@section('title')
    <title>Create User</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="{{ asset('public/jsgenal/jsgenal.js') }}"></script>

@endsection
@section('content_wrapper')
    <div class="content-wrapper">
        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <form action="{{ route('user_store') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <label >Tên user </label>
                                <input  class="form-control" placeholder="nhập tên user" name="name">
                            </div>
                            <div class="form-group">
                                <label >Email </label>
                                <input type="email" placeholder="Nhập email" class="form-control" name="email">
                            </div>
                            <div class="form-group">
                                <label >Password </label>
                                <input type="password" placeholder="Nhập password" class="form-control" name="password">
                            </div>
                            <div class="form-group">
                                <label > Vai trò </label>
                                <select name="role_id[]" class="js-states form-control select2" multiple>
                                    <option value="0">chọn vai trò</option>
                                    @foreach($roless as $roleItem)
                                    <option value="{{ $roleItem->id }}">{{ $roleItem->name }}</option>
                                    @endforeach
                                </select>
                            </div>


                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>

                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
