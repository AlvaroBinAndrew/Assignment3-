<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function index(){
    	return view('index');
    }

    public function konseling(){
    	return view('konseling');
    }

    public function blog(){
    	return view('blog');
    }

    public function curhat(){
    	return view('curhat');
    }

}
