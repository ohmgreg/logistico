<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\Traits\OrderOfOperationTrais;
use App\Traits\ResponsibleOrderOperationsTraits;

class OrdenDeOperacionesController extends Controller
{
    use OrderOfOperationTrais;
    use ResponsibleOrderOperationsTraits;


    public function _ListResponsibleOrderofOperations(){
        return $this->ListResponsibleOrderofOperations();
    }

    public function _listOrderOfOperation(){
        return $this->listOrderOfOperation();
    }

    public function _ShowOrderOfOperation(Request $data){
        return $this->ShowOrderOfOperation($data);
    }

    public function _AddOrderOfOperation(Request $data){
        return $this->AddOrderOfOperation($data);
    }

    public function _ActiveOrderOfOperation(Request $data){
        return $this->ActiveOrderOfOperation($data);
    }

    public function _DistributionOrderList(){
        return $this->DistributionOrderList();
    }

    public function _AsigClientOrderofOperations(Request $data){
        return $this->AsigClientOrderofOperations($data);
    }

    public function _existenciadistribuidora(Request $data){
        return $this->existenciadistribuidora($data);
        
    }

    public function _DiscountExistenceOfTheWherehause(Request $data){
        for ($i=0; $i < count($data -> ArrayPanaderiaDef); $i++) { 
            return $this->DiscountExistenceOfTheWherehause($data -> ArrayPanaderiaDef[$i]);
        }        
    }
    
}
