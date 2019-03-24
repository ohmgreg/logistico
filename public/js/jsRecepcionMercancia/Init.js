N(".preload").nodeRemove(function(){
	N(".wrapper").show(function(){
		$('[data-toggle="tooltip"]').tooltip();
		var d = new Date();
		d.setDate(d.getDate() - 1);
		$('.datepicker').datepicker({language: 'es', startDate: d});
		LoadFunctions._listDistribuidora("cmb-distribuidora");
	}, 200)
}, 200);