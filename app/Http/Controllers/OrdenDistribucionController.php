<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Traits\DistributionOrderTrait;
use App\Traits\DistributorTraits;

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

    public function _DiscountExistenceOfTheWherehause(Request $data){
        
        $a = count($data);
        $i = 0;
        // while ($techo > 0) {
        return $this->DiscountExistenceOfTheWherehause($data);
    }

    public function _existenciadistribuidora(Request $data){
        return $this->existenciadistribuidora($data);
    }
    
}
