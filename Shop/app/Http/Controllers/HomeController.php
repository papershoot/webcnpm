<?php

namespace App\Http\Controllers;

use App\Models\category;
use App\Models\product;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Menu;

class HomeController extends Controller
{
    public  function index(){
        DB::connection()->enableQueryLog();
        $sliders = Slider::latest()->take(4)->get();
        $categori_left = category::where('parent_id', 0)->take(8)->get();

        $categorii = category::where('parent_id', 0)->take(5)->get();
        $menus = Menu::where('parent_id', 0)->get();
        $products = product::oldest()->take(8)->get();
        $productrecomend = product::latest()->get();
        return view('Home.index', compact('categorii','menus', 'products', 'sliders', 'productrecomend', 'categori_left'));
    }
    public function cart(){
        $menus = Menu::where('parent_id', 0)->get();
        return view('carts.cartindex', compact('menus'));
    }
}
