
//setting permanent header 
$('document').ready(function() { 
	function ChangeHeader() {
	var el = $('.permanent-header');
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
	if($('.permanent-header').hasClass('top-bar')) {
		$(window).scroll(ChangeHeader)
	}
	$(window).trigger('scroll');
});
