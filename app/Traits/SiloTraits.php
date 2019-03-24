<?php

namespace App\traits;

use DB;
use App\LogistPanaderiaSilo;
use App\LogistPanaderiaSiloAlmacen;
use App\LogistPanaderiaSiloAlmacenIncorporacion;
use App\logistConfig;

trait SiloTraits
{

    public function listSilo()
    {
        return LogistPanaderiaSilo::all();

    }

    public function listSiloRecarga($data)
    {   
        // return LogistPanaderiaSiloAlmacenIncorporacion::where('id_Silo', $data->id_Silo)->get();
        $sql_string = "SELECT
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
        logistpanaderiaproductos.nombre
        FROM
        logistpanaderiasiloalmacenincorporacion
        INNER JOIN logistpanaderiaproductos ON logistpanaderiasiloalmacenincorporacion.id_producto = logistpanaderiaproductos.id
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
        return LogistPanaderiaSiloAlmacenIncorporacion::where('id', $data->id_incorporacion)->get();
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

        LogistPanaderiaSiloAlmacenIncorporacion::create([
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

        logistpanaderiaSiloalmacenincorporacion::where('id',$data['id_incorporacion'])
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
        logistpanaderiaSiloalmacenincorporacion::where('id',$data['id_incorporacion'])
        ->update([
                'manufactura'=>$data['manufactura'],
                'existencia'=>$data['manufactura']
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
        return LogistPanaderiaSiloAlmacenIncorporacion::where('id_Silo', $data->id_Silo)->where('existencia','>',0)->sum('existencia');
   }

   public function DiscountExistenceOfTheSilo($data){

    $ArrayExisencia = LogistPanaderiaSiloAlmacenIncorporacion::where('existencia','>','0')
    ->where('id_Silo',$data->id_Silo)->orderBy('id', 'asc')->get();


    $techo = $data->cantidad;
    $i = 0;

     while ($techo > 0) {
        $existencia = $ArrayExisencia[$i]->existencia;
        $id = $ArrayExisencia[$i]->id;
        $residuo = $techo - $existencia;
        if($residuo > 0){
            LogistPanaderiaSiloAlmacenIncorporacion::where('id','=',$id)->update([
                'existencia' => 0,
            ]);
            $techo = $residuo;
            $i = $i + 1;
        } else {
            $resto = $existencia - $techo;
            $techo = 0;
            LogistPanaderiaSiloAlmacenIncorporacion::where('id','=',$id)->update([
                'existencia' => $resto,
            ]);
        }       
        
     }
     return 1;
    


   }


// Fin del traits

}



