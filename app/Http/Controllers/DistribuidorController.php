<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

use App\traits\DistributorTraits;

class DistribuidorController extends Controller

{
    use DistributorTraits;

    public function _ListDistributor(){

        $this->ListDistributor();
    }

    public function _ShowDistributor(request $data){
        $this->ShowDistributor($data);
    }
    public function _AddWarehouseDistributor(request $data){
        
    }


}
