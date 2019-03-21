@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-body">
                <div ><label>SELECCIONE UN SILO</label><select id='cmb-silo' class="form-control"></select></div>
                <div class="form-group">
                    <label>CANTIDAD:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input class="form-control input-sm ctrUpdate" type="text" placeholder="INGRESE LAS CANTIDADES EN TONELADAS" id=txt_SiloCantidadRecarga >
                    </div>
                </div>
                <div class="form-group">
                        <label>FECHA DE LA RECARGA:</label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                            <input class="form-control input-sm datepicker ctrUpdate" type="text" placeholder="" id=txt_SiloFechaRecarga readonly>
                        </div>
                </div>
                <div class="form-group">
                    <label>OBSERVACION</label>
                    <textarea class="form-control" rows="3" placeholder="" id='txt_SiloObservacion'></textarea>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE RECARGAS</div>
            <div class="panel-body">
                <table id="GridUbch" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>RECARGA</th>
                            <th id="thOperaciones">OPERACIONES</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>RECARGA</th>
                            <th id="thOperaciones">OPERACIONES</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsSilos&cssModule=') }}"></script>
@endsection