<?php

namespace App\Traits;
use App\LogistPanaderiaDistribuidora;
use App\logistpanaderiadistribuidoraalmacen;




trait DistributorTraits
{

public function ListDistributor(){
    return LogistPanaderiaDistribuidora::all();
}

public function ShowDistributor($data){
    return LogistPanaderiaDistribuidora::where('id', $data->id_Distibuidora)->get();
}

public function AddWarehouseDistributor($data){
    return logistpanaderiadistribuidoraalmacen::create([
        'id_producto'=>$data->id_producto,
        'preciocompra'=>$data->preciocompra,
        'precioventa'=>$data->precioventa,
        'id_OrdendeDistribucion'=>$data->id_OrdendeDistribucion,
        'cantidad'=>$data->cantidad,
        'id_Distribuidora'=>$data->id_Distribuidora,   
        'status'=> '1', 
    ]);
}

}