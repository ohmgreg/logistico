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

    public function _updateMerma(Request $data){
        return $this->updateMerma($data);
    }

}
