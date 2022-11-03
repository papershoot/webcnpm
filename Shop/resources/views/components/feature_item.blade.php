<div class="features_items"><!--features_items-->
    <h2 class="title text-center">Features Items</h2>
    @foreach($products as $productItem)
        <div class="col-sm-3">
            <div class="product-image-wrapper">
                <div class="single-products">
                    <div class="productinfo text-center">
                        <img height="150px"  src="{{ config('app.base_url') . $productItem->feature_image_path  }}" alt="" />
                        <h2>{{ number_format($productItem->price) }} VND</h2>
                        <p>
                            {{ $productItem->name }}
                        </p>
                        <a href="#"
                            data-url = "{{ route('addtocart', ['id'=> $productItem->id]) }}" 
                             class="btn btn-default add-to-cart add_to_cart fly_cart "><i class="fa fa-shopping-cart"></i>Add to cart</a>                    </div>
                    <!-- <div class="product-overlay">
                        <div class="overlay-content">
                            <h2>{{ number_format($productItem->price) }} VND</h2>
                            <p>{{ $productItem->name }}</p>
                            <a href="#"
                            data-url = "{{ route('addtocart', ['id'=> $productItem->id]) }}" 
                             class="btn btn-default add_to_cart fly_cart "><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>
                    </div> -->
                </div>
                <!-- <div class="choose">
                    <ul class="nav nav-pills nav-justified">
                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                    </ul>
                </div> -->
            </div>
        </div>
    @endforeach
</div><!--features_items-->
