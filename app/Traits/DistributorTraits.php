<?php

namespace App\Traits;
use App\LogistPanaderiaDistribuidora;
use App\logistpanaderiadistribuidoraalmacen;
use DB;
use Carbon\Carbon;


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
        return logistpanaderiadistribuidoraalmacen::where('id','=', $data->id_OrdenDistribucionDelete)->delete();
    }

    public function ProductReception($data){
        $date = Carbon::now();
        $date = $date->format('d-m-Y');
        return logistpanaderiadistribuidoraalmacen::where('id', $data->id_RecepcionActive)
        ->update([
            'status' => 1,
            'fecharecepcion' => $date,
        ]);
    }

    public function updateMermaWarehouse($data){

        logistpanaderiadistribuidoraalmacen::where('id',$data->id_Recepcion)
        ->update([
                'merma'=>$data['merma']
        ]);
        
        $ExistenciaProducto = logistpanaderiadistribuidoraalmacen::where('id', $data->id_Recepcion)->value('cantidad');
        $ExistenciaProducto = $ExistenciaProducto - $data['merma'];

        return logistpanaderiadistribuidoraalmacen::where('id', $data->id_Recepcion)
        ->update([
            'existencia' => $ExistenciaProducto,
        ]);
    }






    public function ListProductsInTransit($data){

    $sql_string ="SELECT
    logistpanaderiadistribuidoraalmacen.id,
    -- logistpanaderiadistribuidoraalmacen.id_producto,
    -- logistpanaderiadistribuidoraalmacen.preciocompra,
    -- logistpanaderiadistribuidoraalmacen.precioventa,
    -- logistpanaderiadistribuidoraalmacen.id_OrdendeDistribucion,
    logistpanaderiadistribuidoraalmacen.cantidad,
    logistpanaderiadistribuidoraalmacen.existencia,
    -- logistpanaderiadistribuidoraalmacen.id_Distribuidora,
    -- logistpanaderiadistribuidoraalmacen.`status`,
    -- logistpanaderiadistribuidoraalmacen.merma,
    -- logistpanaderiadistribuidoraalmacen.id_Silo,
    -- logistpanaderiadistribuidoraalmacen.created_at,
    -- logistpanaderiadistribuidoraalmacen.updated_at,
    -- logistpanaderiadistribuidoraalmacen.fecharecepcion,
    -- logistpanaderiaproductos.id,
    logistpanaderiaproductos.nombre AS NameProducto,
    -- logistpanaderiaproductos.peso,
    logistpanaderiaproductos.id_presentacion,
    logistpanaderiasilo.nombre AS NameSilo
    FROM
    logistpanaderiadistribuidoraalmacen
    INNER JOIN logistpanaderiaproductos ON logistpanaderiadistribuidoraalmacen.id_producto = logistpanaderiaproductos.id
    INNER JOIN logistpanaderiasilo ON logistpanaderiadistribuidoraalmacen.id_Silo = logistpanaderiasilo.id
    WHERE
        logistpanaderiadistribuidoraalmacen.`status` = 0 AND
    logistpanaderiadistribuidoraalmacen.id_Distribuidora = " . $data->id_Distribuidora;
    return DB::select($sql_string);

    }public function ListProductsInWarehouse($data){

        $sql_string ="SELECT
        logistpanaderiadistribuidoraalmacen.id,
        -- logistpanaderiadistribuidoraalmacen.id_producto,
        -- logistpanaderiadistribuidoraalmacen.preciocompra,
        -- logistpanaderiadistribuidoraalmacen.precioventa,
        -- logistpanaderiadistribuidoraalmacen.id_OrdendeDistribucion,
        logistpanaderiadistribuidoraalmacen.cantidad,
        logistpanaderiadistribuidoraalmacen.existencia,
        -- logistpanaderiadistribuidoraalmacen.id_Distribuidora,
        -- logistpanaderiadistribuidoraalmacen.`status`,
        -- logistpanaderiadistribuidoraalmacen.merma,
        -- logistpanaderiadistribuidoraalmacen.id_Silo,
        -- logistpanaderiadistribuidoraalmacen.created_at,
        -- logistpanaderiadistribuidoraalmacen.updated_at,
        logistpanaderiadistribuidoraalmacen.fecharecepcion,
        -- logistpanaderiaproductos.id,
        logistpanaderiaproductos.nombre AS NameProducto,
        -- logistpanaderiaproductos.peso,
        -- logistpanaderiaproductos.id_presentacion,
        logistpanaderiasilo.nombre AS NameSilo
        FROM
        logistpanaderiadistribuidoraalmacen
        INNER JOIN logistpanaderiaproductos ON logistpanaderiadistribuidoraalmacen.id_producto = logistpanaderiaproductos.id
        INNER JOIN logistpanaderiasilo ON logistpanaderiadistribuidoraalmacen.id_Silo = logistpanaderiasilo.id
        WHERE
            logistpanaderiadistribuidoraalmacen.`status` = 1 AND
        logistpanaderiadistribuidoraalmacen.id_Distribuidora = " . $data->id_Distribuidora;
        return DB::select($sql_string);
    
        }





}