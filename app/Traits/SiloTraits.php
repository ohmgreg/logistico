<?php

namespace App\traits;
use DB;
use App\LogistPanaderiaSilo;
use App\LogistPanaderiaSiloAlmacen;
use App\logistpanaderiasiloalmacenincorporacion;
use App\logistConfig;
use App\logistpanaderiasiloalmacenmanofactura;

trait SiloTraits
{

    public function listSilo()
    {
        return LogistPanaderiaSilo::all();

    }

    public function listSiloRecarga($data)
    {   
        // return logistpanaderiasiloalmacenincorporacion::where('id_Silo', $data->id_Silo)->get();
        $sql_string = "SELECT DISTINCT
        logistpanaderiasiloalmacenincorporacion.id,
        logistpanaderiasiloalmacenincorporacion.cod_recarga,
        logistpanaderiasiloalmacenincorporacion.id_Silo,
        logistpanaderiasiloalmacenincorporacion.id_producto,
        logistpanaderiasiloalmacenincorporacion.fecha,
        logistpanaderiasiloalmacenincorporacion.cantidad,
        logistpanaderiasiloalmacenincorporacion.manufactura,
        logistpanaderiasiloalmacenincorporacion.existencia,
        logistpanaderiasiloalmacenincorporacion.merma,
        logistpanaderiasiloalmacenincorporacion.nota,
        logistpanaderiasiloalmacenincorporacion.created_at,
        logistpanaderiasiloalmacenincorporacion.updated_at,
        logistpanaderiaproductos.nombre,
        logistpanaderiasiloalmacen.cantidad AS existenciaTN
        FROM
        logistpanaderiasiloalmacenincorporacion
        INNER JOIN logistpanaderiaproductos ON logistpanaderiasiloalmacenincorporacion.id_producto = logistpanaderiaproductos.id
        INNER JOIN logistpanaderiasiloalmacen ON logistpanaderiasiloalmacen.id_Silo = logistpanaderiasiloalmacenincorporacion.id_Silo AND logistpanaderiasiloalmacen.id_producto = logistpanaderiasiloalmacenincorporacion.id_producto
        WHERE
        logistpanaderiasiloalmacenincorporacion.id_Silo = 1";
        return DB::select($sql_string);

    }

    public function ShowSilo($data)
    {
        return LogistPanaderiaSilo::where('id', $data->id)->get();
    }

    public function ShowMerma($data)
    {
        return logistpanaderiasiloalmacenincorporacion::where('id', $data->id_incorporacion)->get();
    }

    public function AddProductSilo($data)
    {
        $count_recarga = logistConfig::value('RecargaSilo') + 1;
        if ((strlen(strval($count_recarga))) == 1) {$count_recarga_str = '0'. strval($count_recarga);}
        if ((strlen(strval($count_recarga))) == 2) {$count_recarga_str = '00'. strval($count_recarga);}
        $lafecha = str_replace("/", "", $data['fecha']);
        if ((strlen(strval($data['id_Silo']))) == 1) {$silo_str = '0'. strval($count_recarga);}
        if ((strlen(strval($data['id_Silo']))) == 2) {$silo_str = '00'. strval($count_recarga);}  
        $cod_recarga = $silo_str .'*'.$lafecha . '*' .$count_recarga_str;

        logistpanaderiasiloalmacenincorporacion::create([
            'fecha' => $data['fecha'],
            'cantidad' => $data['cantidad'],
            'nota' => $data['nota'],
            'id_Silo' => $data['id_Silo'],
            'id_producto' => $data['id_producto'],
            'cod_recarga' => $cod_recarga,
        ]);

        logistConfig::where('id', '1')->update(['RecargaSilo' => $count_recarga]);
        $ExistProduct = LogistPanaderiaSiloAlmacen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->count();
        if ($ExistProduct !== 0) {
            $id_LogistPanaderiaSiloAlmacen = LogistPanaderiaSiloAlmacen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('id');
            $ExistenciaProducto = LogistPanaderiaSiloAlmacen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('cantidad');
            $ExistenciaProducto = $ExistenciaProducto + $data['cantidad'];
            
            return LogistPanaderiaSiloAlmacen::where('id', $id_LogistPanaderiaSiloAlmacen)
                ->update([
                    'cantidad' => $ExistenciaProducto,
                ]);
        } else {
            return LogistPanaderiaSiloAlmacen::create([
                'id_Silo' => $data['id_Silo'],
                'id_producto' => $data['id_producto'],
                'cantidad' =>  $data['cantidad']
            ]);
        }
    }

    public function updateMerma($data){

        logistpanaderiasiloalmacenincorporacion::where('id',$data['id_incorporacion'])
        ->update([
                'merma'=>$data['merma']
        ]);
        $id_LogistPanaderiaSiloAlmacen = LogistPanaderiaSiloAlmacen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('id');
        $ExistenciaProducto = LogistPanaderiaSiloAlmacen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('cantidad');
        $ExistenciaProducto = $ExistenciaProducto - $data['merma'];
        return LogistPanaderiaSiloAlmacen::where('id', $id_LogistPanaderiaSiloAlmacen)
        ->update([
            'cantidad' => $ExistenciaProducto,
        ]);
    }

    public function updateManufactura($data){

        $ExistenciaActual = logistpanaderiasiloalmacenincorporacion::where('id',$data['id_incorporacion'])
        ->value('existencia');
        $ManufacturaActual = logistpanaderiasiloalmacenincorporacion::where('id',$data['id_incorporacion'])
        ->value('manufactura');

        logistpanaderiasiloalmacenincorporacion::where('id',$data['id_incorporacion'])
        ->update([
                'manufactura'=>$data['manufactura'] + $ManufacturaActual,
                'existencia'=>$data['manufactura'] + $ExistenciaActual
        ]);

        logistpanaderiasiloalmacenmanofactura::create([

            'id_incorporacion'=> $data->id_incorporacion,
            'id_silo' => $data->id_Silo,
            'id_producto' => $data->id_producto,
            'manofacturado' => $data->manufactura,

        ]);

        $id_LogistPanaderiaSiloAlmacen = LogistPanaderiaSiloAlmacen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('id');
        $ExistenciaProducto = LogistPanaderiaSiloAlmacen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('cantidad');
        $ExistenciaProducto = $ExistenciaProducto - ($data['manufactura'] * 50);

        return LogistPanaderiaSiloAlmacen::where('id', $id_LogistPanaderiaSiloAlmacen)
        ->update([
            'cantidad' => $ExistenciaProducto,
        ]);
    }

    public function ExistenceOfSilo($data){
        return logistpanaderiasiloalmacenincorporacion::where('id_Silo', $data->id_Silo)->where('existencia','>',0)->sum('existencia');
   }

   public function DiscountExistenceOfTheSilo($data){

    $ArrayExisencia = logistpanaderiasiloalmacenincorporacion::where('existencia','>','0')
    ->where('id_Silo',$data->id_Silo)->orderBy('id', 'asc')->get();


    $techo = $data->cantidad;
    $i = 0;

     while ($techo > 0) {
        $existencia = $ArrayExisencia[$i]->existencia;
        $id = $ArrayExisencia[$i]->id;
        $residuo = $techo - $existencia;
        if($residuo > 0){
            logistpanaderiasiloalmacenincorporacion::where('id','=',$id)->update([
                'existencia' => 0,
            ]);
            $techo = $residuo;
            $i = $i + 1;
        } else {
            $resto = $existencia - $techo;
            $techo = 0;
            logistpanaderiasiloalmacenincorporacion::where('id','=',$id)->update([
                'existencia' => $resto,
            ]);
        }       
        
     }
     return 1;
    


   }


// Fin del traits

}



