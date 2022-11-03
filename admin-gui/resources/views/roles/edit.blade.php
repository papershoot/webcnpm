@extends('layout.admin')

@section('title')
<title>Role Edit</title>
@endsection
@section('content_wrapper')
<div class="content-wrapper">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('role_update', ['id'=>$rolesss->id]) }}" method="post">
                        <div class="col-md-12">
                            @csrf
                            <div class="form-group">
                                <label>Tên Vai trò</label>
                                <input type="text" class="form-control" name="name" value="{{ $rolesss->name }}"
                                    placeholder="Nhập tên vai trò">
                            </div>
                            <div class="form-group">
                                <label>Mô tả vai trò</label>
                                <textarea class="form-control"
                                    name="display_name"> {{ $rolesss->display_name }}</textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox"
                                                        class="form-check-input checkbox_grand"> Checkall
                                                </label>
                                            </div>
                                    </div>
                                </div>

                        </div>
                        @foreach($permisstion as $perItem)
                        <div class="col-md-12">
                            <div class="row">
                                <div class="card body-primary col-md-12">
                                    <div class="card-header">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input value="{{ $perItem->id }}" type="checkbox"
                                                    class="form-check-input checkbox_parent"> Modul {{ $perItem->name }}
                                            </label>
                                        </div>


                                    </div>
                                    <div class="row">
                                        @foreach($perItem->permisstionchilr as $perchilItem)
                                        <div class="card-body text-primary col-md-3">
                                            <h5 class="card-title">

                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input checkbox_chil" {{
                                                            $permisstioncheck->contains('id',$perchilItem->id ) ?
                                                        'checked' : ''}}
                                                        name="permisstion_id[]"
                                                        value="{{ $perchilItem->id }}"> {{ $perchilItem->name }}
                                                    </label>
                                                </div>


                                            </h5>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        <div class="col-md-3">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>

    </div>

</div>
@endsection