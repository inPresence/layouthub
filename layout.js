

/*
    $(window).load(function(){
        $('#body_initial_overlay').fadeOut(500);
    })
    $(document).ready(function(){
      $('img[usemap]').rwdImageMaps();

      function hideMenus(id) {
        $( ".top-tab-boxes" ).each(function() {
          if (this.id != id) {
            $(this).hide("slow");
          }
        });
      }
      $("#category").click(function(){
        hideMenus("category-box");
        $("#category-box").toggle("slow");
        {literal}
          $('html, body').animate({scrollTop : 0},800);
        {/literal}
      });
      $("#filter").click(function(){
        hideMenus("filter-box");
        $("#filter-box").toggle("slow");
        {literal}
          $('html, body').animate({scrollTop : 0},800);
        {/literal}

      });
      $("#search").click(function(){
        hideMenus("search-box");
        $("#search-box").toggle("slow");
        {literal}
          $('html, body').animate({scrollTop : 0},800);
        {/literal}
      });
      $("#user").click(function(){
        hideMenus("user-box");
        $("#user-box").toggle("slow");
      });
      $("#cust-service").click(function(){
        hideMenus("cust-service-box");
        $("#cust-service-box").toggle("slow");
        {literal}
          $('html, body').animate({scrollTop : 0},800);
        {/literal}
      });
      $("#email").click(function(){
        hideMenus("email-box");
        $("#email-box").toggle("slow");
      });
      $("#cart").click(function(){
        hideMenus("cart-box");
        $("#cart-box").toggle("slow");
      });

      $(".top-tab-boxes .close").click(function(){
        $("#category-box").hide("slow");
        $("#filter-box").hide("slow");
        $("#search-box").hide("slow");
        $("#user-box").hide("slow");
        $("#cust-service-box").hide("slow");
        $("#email-box").hide("slow");
        $("#cart-box").hide("slow");
        {literal}
          $('html, body').animate({scrollTop : 0},800);
        {/literal}
      });

      $( ".service-accordion" ).accordion({
          collapsible: true,
          active: false,
          autoHeight: false
      });

      $( ".service-tabs" ).tabs({
        select: function (event, ui) {
          if (ui.tab.rel) {
            location.href = ui.tab.rel;
          }
        }
      });

      {literal}
      //Check to see if the window is top if not then display button
      $(window).scroll(function(){
        if ($(this).scrollTop() > 100) {
          $('.scrollToTop').fadeIn();
        } else {
          $('.scrollToTop').fadeOut();
        }
        //Check if at the bottom of the page then show the menu bar
        if (($(document).height() - $(window).height() - 75) < $(this).scrollTop()) {
          $('.bottom-tabs').slideDown();
        } else {
          $('.bottom-tabs').slideUp();
        }
      });

      //Click event to scroll to top
      $('.scrollToTop').click(function(){
        $('html, body').animate({scrollTop : 0},800);
        return false;
      });
      {/literal}
    });



	 <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1413965442222204&version=v2.0";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
	 */





/* 	      <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
      <meta name="viewport" content="initial-scale=1.0001, minimum-scale=1.0001, maximum-scale=1.0001, user-scalable=no"/>
      <script type="text/javascript" src="/jquery/jquery-1.11.3.js"></script>
      <script type="text/javascript" src="/jquery/jquery-ui-1.9.2.custom.js"></script>
      <script type="text/javascript" src="/CreateHTML5Elements.js"></script>
      <script type="text/javascript" src=/jquery.hoverIntent.js"></script>
      <script type="text/javascript" src="/custom.js"></script>
      <!-- <script type="text/javascript" src="/jquery.jcarousel.min.js"></script> -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.4/jquery.jcarousel.min.js"></script>
      <script type="text/javascript" src="/jquery/jquery.cookie.js"></script>
      <script type="text/javascript" src="/jquery/extentions/jquery.tabSlideOut.v1.3.js"></script>
      <script type="text/javascript" src="/readmore.min.js"></script>
      <script type="text/javascript" src="/google.click2call.js"></script>
 */

	  // var imported = document.createElement('script');
// imported.src = '/slick/slick/slick.min.js';
// document.head.appendChild(imported);
 /* document.write("<script type=text/javascript src='https://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.4/jquery.jcarousel.min.js>/script>"); */
/*
 $(document).ready(function(){
  $.ajax({
    url: "http://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.4/jquery.jcarousel.min.js",
    dataType: 'script',
    success: function(data) {
      console.log("success")
    },
    error: function() {
      console.log("error")
    }
  });
});
  */




/*   $(document).ready(function(){

	 var url="/js/jquery/jquery-1.11.3.js"

  $.ajax({
    url: url,
    dataType: "script",
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
}); */




 /*  $(document).ready(function(){
  $.ajax({
    url: "/js/jquery/jquery-ui-1.9.2.custom.js",
    dataType: 'script',
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
});
  */


  (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/readmore.min.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();


/*

  $(document).ready(function(){
  $.ajax({
    url: "/js/readmore.min.js",
    dataType: 'script',
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
});
  */



  (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery/extentions/jquery.tabSlideOut.v1.3.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);

 /*
  $(document).ready(function(){
  $.ajax({
    url: "/js/jquery/extentions/jquery.tabSlideOut.v1.3.js",
    dataType: 'script',
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
});


  */

 /*   document.write("<script type=text/javascript src='/js/jquery/jquery-1.11.3.js'>/script>"); */
   /*
     document.write("<script type=text/javascript src='/js/jquery/jquery-ui-1.9.2.custom.js'>/script>");

 document.write("<script type=text/javascript src='/js/readmore.min.js'>/script>");



       document.write(" <script type=text/javascript src='/js/jquery/extentions/jquery.tabSlideOut.v1.3.js'>/script>");

 */


/* $.getScript( '/js/jquery/jquery-ui-1.9.2.custom.js', function(){}); */
/* $.getScript( '/js/jquery/jquery-1.11.3.js', function() {}); */
/* $.getScript("js/jquery.hoverIntent.js", function(){});
     */
/*
$(document).ready(function(){
  $.ajax({
    url: "/js/jquery.hoverIntent.js",
    dataType: 'script',
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
});

     */
  (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery.hoverIntent.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();




/* var script = jQuery('<script/>').attr('src', '/js/jquery.hoverIntent.js').appendTo('head');
 */


/*
$(document).ready(function(){
  $.ajax({
    url: "/js/CreateHTML5Elements.js",
    dataType: 'script',
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
}); */

   (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/CreateHTML5Elements.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();




/*  $.getScript("/js/CreateHTML5Elements.js", function() {  }); */

/*  $.getScript('/js/google.click2call.js', function() {  });
	 */
/*
$(document).ready(function(){
  $.ajax({
    url: "/js/google.click2call.js",
    dataType: 'script',
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
}); */

	 (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/google.click2call.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();




/*  $.getScript('/js/custom.js', function() {  });	 */

/* $(document).ready(function(){
  $.ajax({
    url: "/js/custom.js",
    dataType: 'script',
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
});
 */
	 (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/custom.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();



/*
$(document).ready(function(){
  $.ajax({
    url: "/js/jquery.jcarousel.min.js",
    dataType: 'script',
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
});
  */



/*
 $.getScript('/js/jquery.jcarousel.min.js', function(){}); */

 /* $(document).ready(function(){

	 var url="https://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.4/jquery.jcarousel.min.js";
  $.ajax({
    url: url,
    dataType: "script",
    success: function(data) {
      console.log("success");
    },
    error: function() {
      console.log("error");
    }
  });
}); */
	 (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = 'https://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.4/jquery.jcarousel.min.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();

 (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery.jcarousel.min.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);

  })();

 

 	 (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery/jquery.cookie.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();


  (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery/jquery-1.11.3.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();


  (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery/jquery-ui-1.9.2.custom.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();




/*-----------------------------------------------------------------------------------------------------*/
    /*slideshow  */
  (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '//cdn.jsdelivr.net/jquery.slick/1.5.7/slick.min.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();





$.getScript('/slick/slick/slick.min.js', function() {



	   /*   <script type="text/javascript" src="/slick/slick/slick.min.js"></script> */

	    var importbootstrap = document.createElement('script');
importbootstrap.src = '/bootstrap/js/bootstrap.min.js';
document.head.appendChild(importbootstrap);
   /*  <script type="text/javascript" src="{$smarty.const.BASE_URL}/bootstrap/js/bootstrap.min.js"></script> */

        $(document).ready(function(){
            $('.promo-carousel-slick').slick({
                infinite: true,
                speed: 300,
                arrows: false,
                autoplay: true,
                slidesToShow: 1,
                slidesToScroll: 1
            });

            $('.product-detail .product-carousel-slick').slick({
                infinite: true,
                speed: 300,
                arrows: false,
                autoplay: false,
                slidesToShow: 1,
                slidesToScroll: 1
            });
            $('.slider-nav').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                asNavFor: '.product-detail .product-carousel-slick',
                centerMode: true,
                focusOnSelect: true
            });

            $('.product-carousel-slick').slick({
                infinite: true,
                speed: 300,
                arrows: false,
                autoplay: false,
                slidesToShow: 5,
                slidesToScroll: 1,
                responsive: [
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 1
                        }
                    }
                ]
            });
        });

        $('[data-toggle=dropdown]').each(function() {
         this.addEventListener('click', function() {}, false);
        });

        $('.info-tabs a').click(function (e) {
          e.preventDefault()
          $(this).tab('show')
        })
  });








  /* piwiki tracker */
/*------------------------------------------------------------------------------------------------------*/
		 var _paq = _paq || [];
          _paq.push(['trackPageView']);
          _paq.push(['enableLinkTracking']);
          (function() {
            var u="//www.thehubcompanies.com/piwik/";
            _paq.push(['setTrackerUrl', u+'piwik.php']);
            _paq.push(['setSiteId', 1]);
            var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
            g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
          })();
	/* 	<!-- End Piwik Code --> */
/*---------------------------------------------------------------------------------------------------------*/

		  var _gaq = _gaq || [];
        _gaq.push(['_setAccount', '{$smarty.const.ANALYTICS}']);
        _gaq.push(['_setDomainName', '{$site.url}.com']);
        _gaq.push(['_setAllowLinker', true]);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
	/*google conversion  */
  /* ------------------------------------------------------------------------------- */

	   (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '//www.googleadservices.com/pagead/conversion.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);




     var google_tag_params = {
        ecomm_pagetype: 'other'
        };

   var google_conversion_id = 997688840;
      var google_conversion_label = "KJ-eCOj4_wQQiIze2wM";
      var google_custom_params = window.google_tag_params;
      var google_remarketing_only = true;


	  });


/*---------------------------------------------------------------------------*/
/* 	BEGIN: Google Trusted Stores  */

var gts = gts || [];

        gts.push(["id", "458978"]);
        gts.push(["locale", "en_US"]);
        gts.push(["google_base_offer_id", "{$product.productID}"]);
        gts.push(["google_base_subaccount_id", "{$site.googleShopID}"]);
        gts.push(["google_base_country", "US"]);
        gts.push(["google_base_language", "en"]);

        (function() {
          var scheme = (("https:" == document.location.protocol) ? "https://" : "http://");
          var gts = document.createElement("script");
          gts.type = "text/javascript";
          gts.async = true;
          gts.src = scheme + "www.googlecommerce.com/trustedstores/gtmp_compiled.js";
          var s = document.getElementsByTagName("script")[0];
          s.parentNode.insertBefore(gts, s);
        })();
/*-------------------------------------------------------------------------------*/
/* END: Google Trusted Stores */


/*-------------------------------------------------------------------------------*/
/* Facebook */
(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1413965442222204&version=v2.0";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
/*-------------------------------------------------------------------------------*/





})();


