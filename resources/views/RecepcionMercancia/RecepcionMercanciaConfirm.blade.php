@extends('Modals.M-Insert')

@section('content_M-Insert')
    <div class="form-group">
        <label>¿ESTA SEGURO DE ACEPTAR LA RECEPCION DE ESTA MERCANCIA?</label>
        <label>¡ESTE PROCESO ES IRREVERSIBLE!</label>
    </div>
@endsection

@section('footer_M-Insert')    
    <button type="button" class="btn btn-default" data-dismiss="modal">NO</button>
    <button type="button" class="btn btn-primary" id="btnActiveYes">SI</button>    
@endsection