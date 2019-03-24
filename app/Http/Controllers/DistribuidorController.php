<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

use App\traits\DistributorTraits;
use App\traits\DistributionOrderTrait;
use App\Traits\SiloTraits;



class DistribuidorController extends Controller

{
    use DistributorTraits;
    use DistributionOrderTrait;
    use SiloTraits;

    public function _ListDistributor(){

        return $this->ListDistributor();
    }

    public function _ShowDistributor(Request $data){
        return $this->ShowDistributor($data);
    }

    public function _AddWarehouseDistributor(Request $data){
        if ($this->DiscountExistenceOfTheSilo($data) == 1){
            return $this->AddWarehouseDistributor($data);
        }                
    }

    public function _DetaleDistributionOrder (Request $data){        
        return $this->DetaleDistributionOrder($data);
    }

    public function _ListProductsInTransit(Request $data){
        return $this->ListProductsInTransit($data);
    }

    public function _ProductReception(Request $data){
        return $this->ProductReception($data);
    }

    public function _ListProductsInWarehouse(Request $data){
        return $this->ListProductsInWarehouse($data);
    }

    public function _updateMermaWarehouse(Request $data){
        return $this->updateMermaWarehouse($data);
    }

}
