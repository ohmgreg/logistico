N(".preload").nodeRemove(function(){
	N(".wrapper").show(function(){
		$('[data-toggle="tooltip"]').tooltip();
		var d = new Date();
		d.setDate(d.getDate() - 1);
		$('.datepicker').datepicker({language: 'es', startDate: d});
		$('#M-Insert-2').modal('show');
	}, 200)
}, 200);