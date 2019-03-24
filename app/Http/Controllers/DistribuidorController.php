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

    public function _ShowDistributor(request $data){
        return $this->ShowDistributor($data);
    }

    public function _AddWarehouseDistributor(request $data){
        if ($this->DiscountExistenceOfTheSilo($data) == 1){
            return $this->AddWarehouseDistributor($data);
        }
                
    }

    public function _DetaleDistributionOrder (request $data){        
        return $this->DetaleDistributionOrder($data);
    }

}
