// get text from search and get weather info from weather api and parse it 

$('document').ready(function() {
	$('#city-search-button').on('click', function() {
		var cityName = $('#city-search-text').val();
		var url = "https://api.openweathermap.org/data/2.5/find?q=" + cityName + "&units=imperial";
		$.ajax({
			url: url,
			type: "GET"
		}).done(function(data) {
			var newCity = data.list[0].name;
			var temp = data.list[0].main.temp;
			var desc = data.list[0].weather[0].main;
			$('#result-cityname').text(" "+ newCity + "  ");
			$('#result-temp').text(temp + "F");
			$('#result-desc').text(" " + desc);
		});
	}); 

//city-search button click  
	$('#currency-search-button').on('click', function() {
		var url = "https://openexchangerates.org/api/latest.json?app_id=adde111d9198457499396eba65aaab0b"
		var currencyName = $('#currency-search-text').val();
		$.ajax({
			url: url,
			type: "GET"
		}).done(function(data) {
				var newCurrency = currencyName.toUpperCase();
				var newRate = Math.floor(data.rates[newCurrency]* 100)/100;
				$('#result-rate').text(newRate);
				$('#result-exchange').text(" " + newCurrency + " per dollar");	
		})
	});
//currency-search button click

//setting permanent header 
	if ($('.permanent-header')) { 
		function ChangeHeader() {
		var el = $('.permanent-header');
		var scrolled = el.offset().top;
		var scrollTop = $(window).scrollTop();
	
	//add floatingheader class after scrolling
	//class already exist  
			if ((scrollTop > 211) && (!$('.permanent-header').hasClass('floatingHeader'))) {
				$('.permanent-header').addClass('floatingHeader');
				$('.permanent-header').addClass('floatingHeader');

			} else if (scrollTop <= 211) {
				$('.permanent-header').removeClass('floatingHeader');
			};
	};

	$(window).scroll(ChangeHeader)
	$(window).trigger('scroll');
	}
}) //document ready
