<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Traits\ProductTraits;

class p extends Controller
{
    use ProductTraits;

    public function _listproducts(){
        return $this->listproducts();
    }
}
