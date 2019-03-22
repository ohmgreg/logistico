<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\LogistPanaderiaSilo;
use App\Traits\SiloTraits;


class SiloController extends Controller
{

    use SiloTraits;


    public function listilos(){
        $this->ListSilo();
    }
}
