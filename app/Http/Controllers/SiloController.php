<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\LogistPanaderiaSilo;
use App\Traits\SiloTraits;


class SiloController extends Controller
{
    use SiloTraits;

    public function _listSilo(){
        return $this->listSilo();
    }

    public function _AddProductSilo(Request $data){
        return $this->AddProductSilo($data);
    }

    public function _listSiloRecarga(Request $data){
        return $this->listSiloRecarga($data);
    }

    public function _updateMerma(Request $data){
        return $this->updateMerma($data);
    }

    public function _ShowMerma(Request $data){
        return $this->ShowMerma($data);
    }

    public function _updateManufactura(Request $data){
        return $this->updateManufactura($data);
    }
    public function _ExistenceOfSilo(Request $data){
        return $this->ExistenceOfSilo($data);
    }

    public function _DiscountExistenceOfTheSilo(Request $data){
        
        return $this->DiscountExistenceOfTheSilo($data);

    }



}
