$(function() {
  $(window).scroll(function() {
      // sticky Nav Animation
      if($(this).scrollTop() > 1){
          $('nav').addClass("sticky")
      }
      else{
          $('nav').removeClass("sticky");
      }
      //jQuery to collapse the navbar on scroll
      if ($(".navbar").offset().top > 50) {
          $(".navbar-fixed-top").addClass("top-nav-collapse");
      } else {
          $(".navbar-fixed-top").removeClass("top-nav-collapse");
      }
  });
});

//jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });

    var hover = document.querySelectorAll('.hover-info');
    hover.onclick = function() {
      this.onhover.call(this);
    }
});
