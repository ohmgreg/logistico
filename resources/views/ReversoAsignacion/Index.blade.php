@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">REVERSOS DE ASIGNACIONES</div>
            <div class="modal-body">
                <div class="form-group">
                    <div><label>ORDEN DE OPERACION</label><select id='cmb-OrdenOperacion' class="form-control"><option value="" disabled selected>SELECCIONE UNA OPCIÓN</option></select></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-default">
            <div class="panel-heading">PANADERIAS ASIGNADAS</div>
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

@include('ReversoAsignacion.Confirm')
@include('ReversoAsignacion.Detalle')
@include('ReversoAsignacion.Delete')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsReversoAsignacion&cssModule=') }}"></script>
@endsection