@extends('layout.admin')

@section('title')
    <title>Edit User</title>
@endsection
@section('content_wrapper')
    <div class="content-wrapper">

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <form action="{{ route('user_update', ['id'=>$user->id]) }}" method="post">
                            @csrf
                            <div class="form-group">
                                <label >Tên danh mục </label>
                                <input value="{{ $user->name }}" class="form-control" placeholder="nhập danh mục" name="name">
                            </div>
                            <div class="form-group">
                                <label >Email </label>
                                <input value="{{ $user->email }}" type="email" placeholder="Nhập email" class="form-control" name="email">
                            </div>
                            <div class="form-group">
                                <label >Password </label>
                                <input type="password" placeholder="Nhập password" class="form-control" name="password">
                            </div>
                            <div class="form-group">
                                <label > Vai trò </label>
                                <select name="role_id[]" class="js-states form-control select2" multiple>
                                    <option value="0">chọn vai trò</option>
                                    @foreach($role as $Role)
                                        <option {{ $rolees->contains('id', $Role->id) ? 'selected' : '' }}
                                                value="{{ $Role->id }}" >
                                            {{ $Role->name }}</option>
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
