<?php

namespace App\traits;
use DB;

use App\LogistPanaderiaDistribucionOrden;
use App\logistConfig;

trait DistributionOrderTrait
{
    public function ListDistributionOrder(){
        return LogistPanaderiaDistribucionOrden::all();
    }

    public function ShowDistributionOrder($data){
        return LogistPanaderiaDistribucionOrden::where('id', $data->id_OrdenDistrib)->get();
    }

    public function AddDistributionOrder($data){       
        $count_od = logistConfig::value('OrdenDist') + 1;
        if ((strlen(strval($count_od))) == 1) {$count_od_str = '0'. strval($count_od);}
        if ((strlen(strval($count_od))) == 2) {$count_od_str = '00'. strval($count_od);}
        $cod_od = 'OD-' . date("Y") . '-' . $count_od_str;        
        return LogistPanaderiaDistribucionOrden::create([
            'fechainicio' => $data['fechainicio'],
            'fechafin' => $data['fechafin'],
            'codigo' => $cod_od,
            'activo' => $data['activo'],       
        ]);
        logistConfig::where('id',1)->update(['RecargaSilo' => $count_od]);
    }

    public function ActivateOrderOfDistribution($data){
        LogistPanaderiaDistribucionOrden::where('activo',1)->update([
            'activo' => 0
        ]);
        return LogistPanaderiaDistribucionOrden::where('id', $data->id_OrdenDistrib)->update([
            'activo' => 1
        ]);
    }

    public function DetaleDistributionOrder ($data){            
        $sql_string = "SELECT
        logistpanaderiadistribuidoraalmacen.id,
        logistpanaderiadistribuidoraalmacen.id_producto,
        logistpanaderiadistribuidoraalmacen.preciocompra,
        logistpanaderiadistribuidoraalmacen.precioventa,
        logistpanaderiadistribuidoraalmacen.id_OrdendeDistribucion,
        logistpanaderiadistribuidoraalmacen.cantidad,
        logistpanaderiadistribuidoraalmacen.existencia,
        logistpanaderiadistribuidoraalmacen.id_Distribuidora,
        logistpanaderiadistribuidoraalmacen.`status`,
        logistpanaderiadistribuidoraalmacen.merma,
        logistpanaderiaproductos.nombre AS NameProducto,
        logistpanaderiadistribuidora.nombre AS `NameDistribuidora`
        FROM
        logistpanaderiadistribuidoraalmacen
        INNER JOIN logistpanaderiaproductos ON logistpanaderiadistribuidoraalmacen.id_producto = logistpanaderiaproductos.id
        INNER JOIN logistpanaderiadistribuidora ON logistpanaderiadistribuidoraalmacen.id_Distribuidora = logistpanaderiadistribuidora.id
        WHERE
        logistpanaderiadistribuidoraalmacen.id_OrdendeDistribucion = " . $data->id_OrdendeDistribucion;
        return DB::select($sql_string);
    }

}