<input type="checkbox" id="control-modal-cate-add">
<label for="control-modal-cate-add"><i class="mdi mdi-plus-circle"></i></label>
<div class="modal">
<div class="modal-content">
    <div class="modal-header">
        <h4>Create Category</h4>
        <label for="control-modal-cate-add" class="modal-close">X</label>
    </div>
    <div class="modal-body">
    <form action="{{ route('category_store') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <label >Tên danh mục </label>
                                <input  class="form-control" placeholder="nhập danh mục" name="name">
                            </div>
                            <div class="form-group">
                                <label >Chọn danh mục</label>
                                <select class="form-control"  name="parent_id">
                                    <option value="0">Chọn danh mục cha</option>
                                    {{!! $htmloption !!}}
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
    </div>
    </div>

</div>
</div>