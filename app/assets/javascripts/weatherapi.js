// get text from search and get weather info from weather api and parse it 

$('document').ready(function(){
	$('#city-search-button').on('click', function() {
		var cityName = $('#city-search-text').val();
		var url = "http://api.openweathermap.org/data/2.5/find?q=" + cityName + "&units=imperial";
		$.ajax({
			url: url,
			type: "GET"
		}).done(function(data) {
			var newCity = data.list[0].name;
			var temp = data.list[0].main.temp;
			$('#result-cityname').text(" "+ newCity + "  ");
			$('#result-temp').text(temp + "F");
		});
	}); //button click  
}) //document ready
