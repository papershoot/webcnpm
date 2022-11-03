<input type="checkbox" id="control-modal-edit">
<label for="control-modal-edit" class="btn btn-success">Edit</label>
<div class="modal">
<div class="modal-content">
    <div class="modal-header">
        <h4>Edit Menu</h4>
        <label for="control-modal-edit" class="modal-close">X</label>
    </div>
    <div class="modal-body">
            <form action="{{ route('menu_update', ['id' => $Menuedit->id]) }}" method="post">
                            @csrf
                            <div class="form-group">
                                <label >Tên menu </label>
                                <input value="{{ $Menuedit->name }}" class="form-control" name="name">
                            </div>
                            <div class="form-group">
                                <label ></label>
                                <select class="form-control"  name="parent_id">
                                    <option value="0">Chọn menu cha</option>
                                    {{!! $optionmenu !!}}
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
    </div>
    <div class="modal-footer">
        <label for="control-modal" class="btn-menu"></label>
    </div>
    </div>

</div>
</div>
