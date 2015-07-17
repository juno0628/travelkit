$(document).ready(function() {
		$('.show-category').on('click', function() {
		console.log('clicked');
		if ($(this).attr('id') != "total") {
			// sending AJAX to retrieve 
			var categoryId = $(this).attr('id');
			var planId =  $('.travel-show-page-title').attr('id');
			var url = '/travel_plans/'+ planId + '/categories/' + categoryId;
			
			// append to template after receiving data from server 
			$.ajax({
				url: url,
				type: 'get'
			}).done(function(data) {
					console.log(data);
					console.log('data received from server');
					$('.travel-plan-container').html(data);
			})
		} else if ($(this).attr('id') == "total") {
				var planId =  $('.travel-show-page-title').attr('id');
				var url = '/category/total_report';
				$.ajax({
					url: url, 
					type: 'get',
					data: {
						id: planId
					}
				}).done(function(data) {
					console.log(data);
					console.log('data received from server');
					$('.travel-plan-container').html(data);
				})
		}
	})
});