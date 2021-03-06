@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">AJUSTE DE INVENTARIO</div>
            <div class="modal-body">
                <form action="" id="FormRecepcionMercancia">                    
                    <div><label>SELECCIONE UNA DISTRIBUIDORA</label><select id='cmb-distribuidora' class="form-control"><option value="" disabled selected>SELECCIONE UNA OPCIÓN</option></select></div>
                </form>
            </div>
            <div class="modal-footer">                
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12 col-md-offset-0">
        <div class="panel panel-default">
            <div class="panel-heading">AJUSTE DE INVENTARIO</div>
            <div class="panel-body">
                <table id="tableRecepcionMercancia" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>FECHA DE RECEPCION</th>
                            <th>PROCEDENCIA</th>
                            <th>PRODUCTO</th>
                            <th>EXISTENCIA (Sacos)</th>
                            <th>RECEPCION (Sacos)</th>
                            <th>MERMA (Sacos)</th> 
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>FECHA DE RECEPCION</th>
                            <th>PROCEDENCIA</th>
                            <th>PRODUCTO</th>
                            <th>EXISTENCIA (Sacos)</th>
                            <th>RECEPCION (Sacos)</th>
                            <th>MERMA (Sacos)</th>                             
                            <th id="thOperaciones">ACCION</th>   
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('AjusteInventario.AjusteInventarioConfirm')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsAjusteInventario&cssModule=') }}"></script>
@endsection