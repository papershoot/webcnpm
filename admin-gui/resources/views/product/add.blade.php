<input  type="checkbox" id="control-modal-product-add">
<label  for="control-modal-product-add"><i class="mdi mdi-plus-circle"></i></label>
<div class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h4>Add Product</h4>
            <label for="control-modal-product-add" class="modal-close">X</label>
        </div>
        <div class="col-md-12">
            <div class="modal-body">
                <form action="{{ route('product_store') }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <divv class="col-md-6">
                            <div class="form-group">
                                <label>Tên sản phẩm </label>
                                <input value="{{old('name')}}" class="form-control form-control-sm" placeholder="nhập tên sản phẩm"
                                    name="name">
                            </div>
                        </divv>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Giá sản phẩm </label>
                                <input value="{{ old('price') }}" class="form-control form-control-sm" placeholder="nhập giá sản phẩm"
                                    name="price">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <div class="col-md-6">
                    <div class="form-group">
                                <label >Chọn danh mục</label>
                                <select class="form-control"  name="category_id">
                                    <option value="0">Chọn danh mục</option>
                                    {{!! $htmloption !!}}
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                            <label style="display:block">Nhập tags</label>
                            <select style="width: 365px; height: 10px" name="tags[]"  class="form-control tags_choose" multiple="multiple">
                        
                            </select>
                            </div>
                        </div>
                       
                    </div>
                    <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ảnh đại diện</label>
                            <input type="file" name="feature_image_path" class="file-upload-default">
                            <div class="input-group col-xs-12">
                                <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                                <span class="input-group-append">
                                    <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                                </span>
                            </div>
                        </div>
                    </div>
                        <div class="col-md-6">
                        <div class="form-group">
                        <label>Ảnh chi tiết</label>
                        <input type="file" name="image_path[]" class="file-upload-default">
                        <div class="input-group col-xs-12">
                          <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image" multiple>
                          <span class="input-group-append">
                            <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                          </span>
                        </div>
                      </div>

                        </div>
                    </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mổ tả</label>
                                <textarea name="contents" class="form-control my-editor"
                                    rows="1">{{ old('contents') }}</textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        </div> 
                </form>
            </div>
        </div>
    </div>

</div>
</div>


