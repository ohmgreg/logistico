@extends('layouts.desktop')




@section('content')
<input type="text" name="_token" value="<?php echo csrf_token(); ?>">
@endsection

@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=0.1&jsModule=jsAdmin&cssModule=') }}"></script>
@endsection
