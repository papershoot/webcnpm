<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CartController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[HomeController::class, 'index'])->name('home');
Route::get('/cart',[HomeController::class, 'cart'] )->name('cart_index');


Route::get('/product/add-to-cart/{id}',[CartController::class, 'addtocart'] )->name('addtocart');
Route::get('/product/showcart',[CartController::class, 'showcart'] )->name('showcart');



