<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\traits\DistributionOrderTrait;

class OrdenDistribucionController extends Controller
{
    use DistributionOrderTrait;

    public function _ListDistributionOrder(){
       return $this->ListDistributionOrder;
    }

    public function _ShowDistributionOrder(Request $data){
        return $this->ShowDistributionOrder($data);
    }

    public function _AddDistributionOrder(Request $data){

        return $this->AddDistributionOrder($data);
    }

    public function _ActivateOrderOfDistribution(Request $data){
        return $this->ActivateOrderOfDistribution($data);

    }
}
