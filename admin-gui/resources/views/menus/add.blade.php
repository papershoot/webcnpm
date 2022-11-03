<input type="checkbox" id="control-modal">
<label for="control-modal"><i class="mdi mdi-plus-circle"></i></label>
<div class="modal">
<div class="modal-content">
    <div class="modal-header">
        <h4>Create Menu</h4>
        <label for="control-modal" class="modal-close">X</label>
    </div>
    <div class="modal-body">
        <form action="{{ route('menu_store') }}" method="post">
            @csrf
            <div class="form-group">
                <label >Tên menu </label>
                <input  class="form-control" placeholder="nhập danh mục" name="name">
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