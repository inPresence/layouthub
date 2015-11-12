 var google_tag_params = {
    ecomm_pagetype: 'home'
  };
  
  
  
  $.getScript('/js/jquery.isotope.min.js', function() {
	  
	  
	  $(document).ready(function() {
    $('#container').isotope({
      // options
      itemSelector : '.item',
      masonry : {
        columnWidth : 184
      }
    });
    /*$(".item").hover(
      function() {
        $( this ).addClass( "expand" );
        $('#container').isotope('reLayout');
      }, function() {
        $( this ).removeClass( "expand" );
        $('#container').isotope('reLayout');
      }
    );*/
    $(".item").click(function() {
      $( this ).toggleClass( "expand" );
      $('#container').isotope('reLayout');
    });
    $(".item a").click(function() {
      if (!$(this).parent().parent().hasClass("expand")) {
        event.preventDefault();
      }
    });

    var mtid = setInterval(function(){changeImg($('#marine1'));}, Math.floor(Math.random() * 1500) + 2000);
    var mtid = setInterval(function(){changeImg($('#atv1'));}, Math.floor(Math.random() * 1500) + 2000);
    var mtid = setInterval(function(){changeImg($('#apparel1'));}, Math.floor(Math.random() * 1500) + 2000);
    var mtid = setInterval(function(){changeImg($('#moto1'));}, Math.floor(Math.random() * 1500) + 2000);
    var mtid = setInterval(function(){changeImg($('#auto1'));}, Math.floor(Math.random() * 1500) + 2000);
    var mtid = setInterval(function(){changeImg($('#oil1'));}, Math.floor(Math.random() * 1500) + 2000);
    var mtid = setInterval(function(){changeImg($('#snow1'));}, Math.floor(Math.random() * 1500) + 2000);
    function changeImg(element) {
      var src = element.attr('altsrc');
      element.attr('altsrc', element.attr('src'));
      element.attr("src",src).stop(true,true).hide().fadeIn()
    }

  });
  
  
   });