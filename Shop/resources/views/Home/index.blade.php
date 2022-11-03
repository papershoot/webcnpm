@extends('Layout.Masterlayout')

@section('title')
    <title>T-Shop</title>
@endsection

@section('css')
<style>
    body{
        position: relative;
    }
    .product_fly{
        position: absolute;
        z-index: 99999999;
        border-radius: 100%;
        width: 50px;
        height: 50px;
        object-fit: cover;
        transition: all 1.5s ease;
        animation: productfly 1.5s;
        
    }
    @keyframes productfly {
        0%  {transform: scale(0.4)}
        25% {transform: scale(1)}
        75% {transform: scale(1)}
        100%{transform: scale(0.4)}
        
    }
</style>

@endsection

@section('content')
    @include('patials.slider')
    <section>
        <div class="container">
            <div class="row">
                @include('patials.sidebar')

                <div class="col-sm-9 padding-right">
                    @include('components.feature_item')
                    @include('components.Category_tab')
                    @include('components.recommended_item')
                </div>
            </div>
            <img src="" class="product_fly">
        </div>
    </section>

@endsection
@section('js')
<script>
    function addtocart(event){
        event.preventDefault();
        let urlCart = $(this).data('url');
        $.ajax({
            type: 'GET',
            url : urlCart,
            dataType: 'json',
            success: function(data){
                if(data.code === 200){
                    alertify.success('Thêm sản phẩm thành công');
                }
            },
            errorr: function(){
            }
        })
        if($(this).hasClass('disable')){
            return false;
        }
        $(document).find('.add-to-cart').addClass('disable');
        var parent = $(this).parents('.product-image-wrapper');
        var src = parent.find('img').attr('src');
        var partop = parent.offset().top;
        var parleft = parent.offset().left;
        var cart_fly = $(document).find('.cart_shop');

        
        $('<img />', {
            class: 'product_fly',
            src: src
        }).appendTo('body').css({
            'top':  parseInt(partop) - 150 ,
            'left': parseInt(parleft) + parseInt(parent.width()) - 50
        });
        setTimeout(function(){
            $(document).find('.product_fly').css({
                'top': parseInt(cart_fly.offset().top) - 160  ,
                'left': cart_fly.offset().left
            });
            setTimeout(() => {
                $(document).find('.product_fly').remove();
                $(document).find('.add-to-cart').removeClass('disable');
            }, 1000);

        }, 500);
    }
    $(function(){
        $('.add_to_cart').on('click', addtocart);  
    })
</script>




@endsection



