<?php

namespace App\Traits;
use App\LogistPanaderiaDistribuidora;
use App\logistpanaderiadistribuidoraalmacen;
use DB;




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
            'existencia'=>$data->cantidad,
            'id_Distribuidora'=>$data->id_Distribuidora,
            'id_Silo'=>$data->id_Silo,            
        ]);
    }
    public function DelWarehouseDistributor($data){
        return logistpanaderiadistribuidoraalmacen::where('id', $data->id_OrdenDistribucionDelete)->delete();
    }
}