@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">ORDEN DE OPERACIONES</div>
            <div class="modal-body">
                <div class="form-group">                        
                    <label>FECHA DE INICIO:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                        <input class="form-control input-sm datepicker ctrUpdate" type="text" placeholder="" id=txt_OrdenFechaInicio readonly>
                    </div>
                </div>
                <div class="form-group">                        
                    <label>FECHA FINAL:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                        <input class="form-control input-sm datepicker ctrUpdate" type="text" placeholder="" id=txt_OrdenFechaFin readonly>
                    </div>
                
                </div>
                <div class="form-group">
                    <div><label>ORDEN DE DISTRIBUCION</label><select id='cmb-OrdenOperacion' class="form-control"><option value="" disabled selected>SELECCIONE UNA OPCIÓN</option></select></div>
                </div>
                <div class="form-group">
                    <div><label>RESPONSABLE DE LA ORDEN DE OPERACION</label><select id='cmb-responsable' class="form-control"><option value="" disabled selected>SELECCIONE UNA OPCIÓN</option></select></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnOrdenDistribucionAdd">CREAR ORDEN DE OPERACIONES</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE ORDENES DE OPERACIONES</div>
            <div class="panel-body">
                <table id="tableOrdenDistribucion" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ORDEN</th>
                            <th>PERIODO</th>
                            <th>RESPONSABLE</th>
                            <th>TELEFONO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>ORDEN</th>
                            <th>PERIODO</th>
                            <th>RESPONSABLE</th>
                            <th>TELEFONO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('OrdenOperaciones.Confirm')
@include('OrdenOperaciones.Detalle')
@include('OrdenOperaciones.Delete')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsOrdenOperaciones&cssModule=') }}"></script>
@endsection