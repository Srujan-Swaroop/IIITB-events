$(document).ready(function(){
	'use strict';
	
	//===== Delay Anmiation =====// 
	var drop = $('.featured-cap > *');
	$('.featured-cap').each(function () {
		var delay = 0;
		$(this).find(drop).each(function () {
		$(this).css({ transitionDelay: delay + 'ms' });
			delay += 200;
		});
	});

	//===== Responsive Header =====//
	$('.rspn-mnu-btn').on('click', function () {
		$('.rsnp-mnu').addClass('slidein');
		return false;
	});
	$('.rspn-mnu-cls').on('click', function () {
		$('.rsnp-mnu').removeClass('slidein');
		return false;
	});
	$('.rsnp-mnu span.menu-item-has-children').on('click', function () {
		$(this).parent().siblings().children('ul').slideUp();
		$(this).parent().siblings().removeClass('active');
		$(this).parent().children('ul').slideToggle();
		$(this).parent().toggleClass('active');
		return false;
	});
	
	var timer;
	var delay = 3000;
	$('.menu-item-has-children').hover(function(event) {
		var $this = $(this);
		timer = setTimeout(function(){
			$this.children("menu-item-has-children > ul").show();
			$this.addClass("is-open");
		}, delay);
	}, function() {
		clearTimeout(timer);
		$('menu-item-has-children > ul').removeClass("is-open");
	});

	//===== Scrollbar =====//
	if ($('.rsnp-mnu').length > 0) {
		var ps = new PerfectScrollbar('.rsnp-mnu');
	}
	if ($.isFunction($.fn.fancybox)) {
		$('[data-fancybox],[data-fancybox="gallery"],[data-fancybox="gallery2"],[data-fancybox="gallery3"]').fancybox({});
	}
	
	//===== Home Image Slider =====//
	var pageSection = $(".bg-img");
    pageSection.each(function(indx) {
        if ($(this).attr("data-background")) {
            $(this).css("background-image", "url(" + $(this).data("background") + ")");
        }
    });
	
	
	
});

jQuery(window).on('load',function() {
	'use strict';
	var header_height2 = $('header.style3').innerHeight();

	//===== PageLoader =====//
	$(".preloader").fadeOut("slow");
})
//===== Scroll Top =====//
$(window).on('scroll',function () {
	'use strict';
	 $.scrollUp({
        scrollText: '<i class="fa fa-angle-up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });
})
//===== Sticky Header =====//
$(window).on('scroll',function () {
  'use strict';
  var menu_height = $('header').innerHeight();
  var scroll = $(window).scrollTop();
  if (scroll >= menu_height) {
    $('.stick').addClass('sticky');
  } else {
    $('.stick').removeClass('sticky');
  }
})

//===== Search Toggler =====//
$('.search-toggle').addClass('closed');
$('.search-toggle .search-icon').click(function(e) {
  if ($('.search-toggle').hasClass('closed')) {
    $('.search-toggle').removeClass('closed').addClass('opened');
    $('.search-toggle, .search-container').addClass('opened');
    $('#search-terms').focus();
  } else {
    $('.search-toggle').removeClass('opened').addClass('closed');
    $('.search-toggle, .search-container').removeClass('opened');
  }
});

