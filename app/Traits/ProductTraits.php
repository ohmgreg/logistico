<?php

namespace App\Traits;

use DB;
use App\LogistPanaderiaProductos;


trait ProductTraits
{
 public function listproducts(){
    return LogistPanaderiaProductos::all();
 }
}