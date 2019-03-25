<?php

namespace App\Traits;

use DB;
use App\logistpanaderiaproductos;


trait ProductTraits
{
 public function listproducts(){
    return logistpanaderiaproductos::all();
 }
}