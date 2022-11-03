<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\product;



use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index(){
        return view('carts.cartindex');
    }
    public function addtocart($id){
        
        DB::connection()->enableQueryLog();
        $product = product::find($id);
        if(session()->has('cart')){
            $cart =session()->get('cart');
        }
        else{
            $cart=[];
        }
        if(isset($cart[$id])){
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + 1;
        }
        else{
            $cart[$id] = [
                'name' => $product->name,
                'price' => $product->price,
                'quantity'=> 1,
                'image'=> $product->feature_image_path
            ];

        }
        session()->put('cart', $cart);

        return response()->json([
            'code' => 200,
            'mesage' => 'success'
        ], 200);

    }

    public function  showcart(){

        $carts=session()->get('cart');
        return view('carts.cartindex', compact('carts'));
 
    }
}
