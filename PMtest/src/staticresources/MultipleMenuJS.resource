var ww = 0;

$(document).ready(function () {
	ww = document.body.clientWidth;    
	$(".nav li a").each(function() {
		if ($(this).next().length > 0) {
			$(this).addClass("parent");
		};
	})
	
	$(".toggleMenu").click(function(e) {
		e.preventDefault();
		$(this).toggleClass("active");
		$(".nav").toggle();
	});
	adjustMenu();

	$(window).bind('resize orientationchange', function() {
		ww = document.body.clientWidth;
		adjustMenu();
	});


})


var adjustMenu = function() {
    if (ww < 1024) {
        
        var menu = 1;
        var submenu = 1;

		$(".toggleMenu").css("display", "inline-block");
		if (!$(".toggleMenu").hasClass("active")) {
			$(".nav").hide();
		} else {
			$(".nav").show();
		}
		$(".nav li").unbind('mouseenter mouseleave');
		$(".nav li a.parent").unbind('click').bind('click', function(e) {
			// must be attached to anchor element to prevent bubbling
		    e.preventDefault();
		    if (menu == 1) {
		        $(".nav li a.parent").parent("li").each(function () {
		            $(".nav li a.parent").parent("li").removeClass("hover");
		        })

		        $(this).parent("li").toggleClass("hover");
		        menu = 2;
		    }
		    else
		    {
		        $(this).parent("li").toggleClass("hover");
		        menu = 1;
		    }

		    if ($(this).parent("li").hasClass("hover") && menu == 1)
		    {
		        $(".nav li a.parent").parent("li").each(function () {
		            $(".nav li a.parent").parent("li").removeClass("hover");
		        })
		        menu = 1;
		        $(this).parent("li").toggleClass("hover");
		    }
		});

		$(".nav li ul li a.parent").unbind('click').bind('click', function (e) {
		    // must be attached to anchor element to prevent bubbling
		    e.preventDefault();
		    menu = 2;
            if (submenu == 1) {
                $(".nav li ul li a.parent").parent("li").each(function () {
                    $(".nav li ul li a.parent").parent("li").removeClass("hover");
                })

                $(this).parent("li").toggleClass("hover");
                submenu = 2;
                menu = 2;
            }
            else {
                $(this).parent("li").toggleClass("hover");
                submenu = 1;
                menu = 1;
            }

            if ($(this).parent("li").hasClass("hover") && submenu == 1) {
                $(".nav li ul li a.parent").parent("li").each(function () {
                    $(".nav li ul li a.parent").parent("li").removeClass("hover");
                })
                submenu = 1;
                menu = 1;
                $(this).parent("li").toggleClass("hover");
            }
		});
	} 
    else if (ww >= 768) {

		$(".toggleMenu").css("display", "none");
		$(".nav").show();
		$(".nav li").removeClass("hover");
		//$(".nav li a").unbind('click');
		$(".nav li").unbind('mouseenter mouseleave').bind('mouseenter mouseleave', function() {
		 	// must be attached to li so that mouseleave is not triggered when hover over submenu
		 	$(this).toggleClass('hover');
		});
	}
}

