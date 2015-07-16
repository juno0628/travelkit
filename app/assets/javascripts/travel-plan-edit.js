	console.log('travel-plan-edit.js linked')
	$('.show-category').on('click', function() {
		console.log('clicked');
		if ($(this).attr('id') != "total") {
			// sending AJAX to retrieve 
			var categoryId = $(this).attr('id');
			var planId =  $('.travel-show-page-title').attr('id');
			var url = '/travel_plans/'+ planId + '/categories/' + categoryId;

			$.ajax({
				url: url,
				type: 'get'
			}).done(function(data) {
					console.log(data);
					console.log('data received from server');
							debugger;
					var template = $('#template').html();
					var output = Mustache.render(template, data);
					$('.travel-plan-container').html('output');
			})
		}
	})
