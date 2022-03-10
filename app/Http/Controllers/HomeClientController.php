<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Company;
use App\Models\ProductGallery;

class HomeClientController extends Controller
{
    public function index(){
        $products = Product::all();

        $products->load('category');
        $products->load('company');
        $products->load('galleries');
        
        $cates = Category::all();
        $productG = ProductGallery::all();
        $comp = Company::all();

        return view('client.welcome', [
            'data_product' => $products,
            'cates' => $cates,
            'comps' => $comp,
            'productG' => $productG
        ]);
    }
}
