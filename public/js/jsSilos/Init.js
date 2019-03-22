N(".preload").nodeRemove(function(){
	N(".wrapper").show(function(){
		$('.datepicker').datepicker({language: 'es'});
		LoadFunctions._listSilo("cmb-silo");
		LoadFunctions._listproducts("cmb-producto");
		N(".OnlyNum").OnlyNum();
	}, 200)
}, 200);