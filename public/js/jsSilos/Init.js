N(".preload").nodeRemove(function(){
	N(".wrapper").show(function(){
		$('#aTree').click(function(){
			var ulMenu = $(this).parent().children('ul').get(0)
			$(ulMenu).slideToggle("slow");
		})
	}, 200)
}, 200);