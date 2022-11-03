@extends('Layout.Masterlayout')

@section('title')
    <title>T-Shop</title>
@endsection

@section('content')
    <section id="cart_items">
        <div class="container">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Shopping Cart</li>
                </ol>
            </div>
            @if(session()->has('cart'))
            <div class="table-responsive cart_info">
                <table class="table table-condensed">
                    <thead>
                    <tr class="cart_menu">
                        <td class="price">ID</td>
                        <td class="image">Image</td>
                        <td class="description">Name</td>
                        <td class="price">Price</td>
                        <td class="quantity">Quantity</td>
                        <td class="total">Total</td>
                        <td class="total" >Action</td>
                    </tr>
                    </thead>
                    <tbody>
                        @php
                            $total = 0;
                        @endphp

                        @foreach($carts as $id => $cartItem)
                        @php
                            $total += $cartItem['quantity'] * $cartItem['price']
                        @endphp
                    <tr>
                        <td class="cart_price">{{$id}}</td>
                        <td class="cart_product">
                            <img height="80px" width="80px" src="{{config('app.base_url') . $cartItem['image']}}" alt="">
                        </td>
                        <td class="cart_description">
                            {{$cartItem['name']}}
                        </td>
                        <td class="cart_price">
                            <p>{{ number_format($cartItem['price']) }} VND</p>
                        </td>
                        <td class="cart_quantity">
                            <div class="cart_quantity_button">
                                <input class="cart_quantity_input" type="text" name="quantity" value="{{$cartItem['quantity']}}" size="2">
                            </div>
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price">{{ number_format($cartItem['quantity'] * $cartItem['price'])}} VND</p>
                        </td>
                        <td class="cart_delete">
                            <a class="cart_quantity_delete Cart_Delete " href=""><i class="fa fa-times"></i></a>
                            <a class="cart_quantity_delete Cart_Update" href=""><i class="fa fa-pencil"></i></a>

                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
            <h3>{{number_format($total)}} VND</h3>
            @else
                <h2>Bạn chưa thêm sản phẩm nào!</h2>
            @endif


        </div>
    </section> <!--/#cart_items-->

@endsection
@section('js')

<script>

    function cartUpdate(event){
        event.preventDefault();
        alert('cart update');

    }

    $(function(){
        $(document).on('click', '.Cart_Update', cartUpdate);
    })
</script>
@endsection



