<?php

namespace App\Http\Controllers;

class DashboardController extends Controller
{
   public function dashboard(){
    return view('Component.Home.dashboard');
   }
}
