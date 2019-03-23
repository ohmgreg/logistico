<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\traits\DistributionOrderTrait;
use App\traits\DistributorTraits;

class OrdenDistribucionController extends Controller

{
    use DistributionOrderTrait;
    use DistributorTraits;

    public function _ListDistributionOrder(){
       return $this->ListDistributionOrder();
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

    public function _DelWarehouseDistributor(Request $data){
        return $this->DelWarehouseDistributor($data);
    }
}
