<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Traits\ProductTraits;

class ProductoController extends Controller
{
    use ProductTraits;

    public function _listproducts(){
        return $this->listproducts();
    }
}
