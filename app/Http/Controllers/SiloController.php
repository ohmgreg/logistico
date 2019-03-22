<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\LogistPanaderiaSilo;
use App\Traits\SiloTraits;


class SiloController extends Controller
{
    use SiloTraits;
<<<<<<< HEAD
    public function List_Silo(){
        return $this->listSilo();
=======


    public function listilos(){
       return $this->ListSilo();
>>>>>>> 265e24607fa604652ce55547fc95015ff099098c
    }
}
