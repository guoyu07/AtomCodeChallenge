(function($) {
    $.fn.menumaker = function(options) {  
         var cssmenu = $(this), settings = $.extend({
           format: "slideToggle",
           sticky: false
         }, options);

       return this.each(function() {
         $(this).find(".hamburger").on('click', function(){
           $(this).toggleClass('menu-opened');
           var mainmenu = $(this).next('ul');
              if (mainmenu.hasClass('slide')) { 
               mainmenu.slideToggle().removeClass('open');
              }
              else {
               mainmenu.slideToggle().addClass('open');
              if (settings.format === "slideToggle") {
                 mainmenu.find('ul').show();
            }
             }
        });

        cssmenu.find('li ul').parent().addClass('has-sub');

        multiTg = function() {
           cssmenu.find(".has-sub").prepend('<span class="submenu-button"></span>');
           cssmenu.find('.submenu-button').on('click', function() {
             $(this).toggleClass('submenu-opened');
               if ($(this).siblings('ul').hasClass('open')) {
                 $(this).siblings('ul').removeClass('open').slideToggle();
               }
               else {
                 $(this).siblings('ul').addClass('open').slideToggle();
               }
           });
        };

         if (settings.format === 'multitoggle') multiTg();
         else cssmenu.addClass('dropdown');
         if (settings.sticky === true) cssmenu.css('position', 'relative');
        
        resizeFix = function() {
            var mediasize = 940;
               if ($( window ).width() > mediasize) {
                 cssmenu.find('ul').show();
               }
               if ($(window).width() <= mediasize) {
                 cssmenu.find('ul').hide().removeClass('open');
               }
        };

        resizeFix();
        return $(window).on('resize', resizeFix);
      });
    };
  })(jQuery);

  (function($){
  $(document).ready(function(){
      $(".menu").menumaker({
       format: "multitoggle"
      });
  });
})(jQuery);
// jQuery.noConflict();

// (function($) {
// 	$(document).ready(function() {


// function reheightSideBar() {
// // .sidebar and .content are floated left
// // .sidebar has a min-height of 100vh
// // if .content is taller than 100vh then .sidebar needs to grow
//     var $sidebar = $('.icon-label'),
//         $container = $('.container'),
//         $window = $(window);

//     $window.resize($.debounce(reheightSideBarInner, 50));
//     reheightSideBarInner();

//     function reheightSideBarInner() {
//         var viewportHeight = $window.height(),
//             sidebarHeight = $sidebar.height(),
//             containerHeight = $container.height();
//         if (containerHeight > viewportHeight) {
//             if (sidebarHeight != containerHeight) {
//                 $sidebar.css('height', containerHeight + 'px');
//             }
//         } else {
//             $sidebar.css('height', '100vh');
//         }
//     }
// }

// 		reheightSideBar();

// 		/* removes text from search form on focus and replaces it on unfocus - if text is entered then it does not get replaced with default on unfocus */
// 		$('#SearchForm_SearchForm_action_results').val('L');
// 		var searchField = $('#SearchForm_SearchForm_Search');
// 		var default_value = searchField.val();
// 		searchField.focus(function() {
// 			$(this).addClass('active');
// 			if(searchField.val() == default_value) {
// 				searchField.val('');
// 			}
// 		});
// 		searchField.blur(function() {
// 			  if(searchField.val() == '') {
// 					searchField.val(default_value);
// 			  }
// 		});

// 		if (!$.browser.msie || ($.browser.msie && (parseInt($.browser.version, 10) > 8))) {
// 			var searchBarButton = $("span.search-dropdown-icon");
// 			var searchBar = $('div.search-bar');
// 			var menuButton = $("span.nav-open-button");
// 			var menu = $('.header .primary ul');
// 			var mobile = false;
// 			var changed = false;

// 			$('body').append('<div id="media-query-trigger"></div>');

// 			function menuWidthCheck() {
// 				var header_w = $('header .inner').width();
// 				var elements_w = menu.width() + $('.brand').width();

// 				if ((header_w < elements_w) || ($(window).width() <= 768)) {
// 					$('body').addClass('tablet-nav');
// 				}
// 				else {
// 					$('body').removeClass('tablet-nav');
// 				}

// 				mobile_old = mobile;
// 				if ($('#media-query-trigger').css('visibility') == 'hidden') {
// 					mobile = false;
// 				}
// 				else {
// 					mobile = true;
// 				}

// 				if (mobile_old != mobile) {
// 					changed = true;
// 				}
// 				else {
// 					changed = false;
// 				}
// 			}

// 			menuWidthCheck();

// 			$(window).resize(function() {
// 				menuWidthCheck();

// 				if (!mobile) {
// 					menu.show();
// 					searchBar.show();
// 				}
// 				else {
// 					if (changed) {
// 						menu.hide();
// 						searchBar.hide();
// 					}
// 				}
// 			});

// 			/* toggle navigation and search in mobile view */
// 			searchBarButton.click(function() {
// 				menu.slideUp();
// 				searchBar.slideToggle(200);
// 			});

// 			menuButton.click(function() {
// 				searchBar.slideUp();
// 				menu.slideToggle(200);
// 			});
// 		}

// 	});
// }(jQuery));
