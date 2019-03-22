N(".preload").nodeRemove(function(){
	N(".wrapper").show(function(){
		$('#aTree').click(function(){
			var ulMenu = $(this).parent().children('ul').get(0)
			$(ulMenu).slideToggle("slow");
		})
		$.ajax({
			url: "List_Silo",
			headers: {
				'X-CSRF-TOKEN': getToken()
			},
			type: 'post',
			dataType: 'json',
			data: {
				cedula: 'N("#txt_cedresponsableNew").val()'
			},
			success: function(resp) {
				console.log(resp)
			}
		});
	}, 200)
}, 200);