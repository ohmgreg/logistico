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
}
