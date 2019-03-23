<?php

namespace App\traits;
use DB;

use App\LogistPanaderiaDistribucionOrden;

trait DistributionOrderTrait
{
    public function ListDistributionOrder(){

        return LogistPanaderiaDistribucionOrden::all();

    }

    public function ShowDistributionOrder($data){

        return LogistPanaderiaDistribucionOrden::where('id', $data->id_OrdenDistrib)->get();

    }

    public function AddDistributionOrder($data){

        return LogistPanaderiaDistribucionOrden::create([
            'fechainicio' => $data['fechainicio'],
            'fechafin' => $data['fechafin'],
            'codigo' => $data['codigo'],
            'activo' => $data['activo'],          
        ]);

    }

    public function ActivateOrderOfDistribution($data){
        LogistPanaderiaDistribucionOrden::update([
            'activo' => '0',
        ]);
        return LogistPanaderiaDistribucionOrden::where('id', $data->id_OrdenDistrib)->update([
            'activo' => '1',
        ]);


    }


}