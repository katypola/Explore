// start of astronomy field page:
document.addEventListener("turbolinks:load", function(){

(function($) {
    "use strict";
  
    var $navbar = $(".nav"),
        y_pos = $navbar.offset().top,
        height = $navbar.height();

    //scroll top 0 sticky
    $(document).scroll(function() {
        var scrollTop = $(this).scrollTop();
        if (scrollTop > 0) {
          $navbar.addClass("sticky");
        } else {
          $navbar.removeClass("sticky");  
        }
    });

    //scroll sticky nav for astronomy page
    $(document.getElementById('apodMain')).scroll(function() {
        var scrollTop = $(this).scrollTop();
        if (scrollTop > 0) {
          $navbar.addClass("sticky");
        } else {
          $navbar.removeClass("sticky");  
        }
    });

    //scroll sticky nav for astronomy page
    $(document.getElementsByClassName('articleHome')).scroll(function() {
        var scrollTop = $(this).scrollTop();
        if (scrollTop > 0) {
          $navbar.addClass("sticky");
        } else {
          $navbar.removeClass("sticky");  
        }
    });

    
    
    // //section sticky
    // $(document).scroll(function() {
    //     var scrollTop = $(this).scrollTop();
    //     if ($(window).height() > scrollTop) {
    //       $navbar.removeClass("sticky");
    //     } else {
    //       $navbar.addClass("sticky");  
    //     }
    // });


})(jQuery, undefined);

    // if($(#steps).length > 0){
    //     // $('html, body').animate({ scrollTop: $(#steps).offset().top}, 1000);
        
    //     $('html, body').animate( { scrollTop: $(#steps).offset().top }, 1000 );
    // }

    $("#stepClick").click(function() {

        window.scrollTo(0, $("#steps").offset().top);

        // document.getElementById('steps').scrollIntoView()

        // $('body').scrollTo('#steps');

        // $('html, body').animate({
        //     scrollTop: $("#steps").offset().top
        //     }, 1000);
    });

});