/*   
  var $= jQuery.noConflict();
   */
  
  
  (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery/jquery.elevateZoom-3.0.6.min.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);



/*   $.getScript('/js/jquery/jquery.elevateZoom-3.0.6.min.js', function() {  */
  function docLoad() {
  $("#img_01").elevateZoom({constrainType:"height", constrainSize:289, zoomType: "lens", containLensZoom: true, gallery:'gal1', cursor: 'pointer', galleryActiveClass: "active"});

  $("#img_01").bind("click", function(e) {
    var ez =   $('#img_01').data('elevateZoom');
    ez.closeAll(); //NEW: This function force hides the lens, tint and window
    $.fancybox(ez.getGalleryList());

    return false;
  });

  // product specials horizintal carousel
  $('#img-zoom-carousel').jcarousel({
	  
    horizontal: true,
    scroll: 1,
    animation: 'slow',
    wrap: 'circular',
    initCallback: mycarousel_initCallback
  });

  $( "#AlertStockDialog" ).dialog({
      autoOpen: false,
      width: 300,
      modal: true,
      buttons: {
        "Activate": function() {
          var form = $('#StockAlertForm');
          var stockerrors = false;
          $("#AlertStockDialog .required").each(function(){
            if($(this).val()=="")
            {
              $(this).css("border","#FF0000 solid 1px");
              stockerrors = true;
            } else {
              $(this).css("border","1px solid #cccccc");
            }
          });
          if (!stockerrors) {
            // alert($(form).serialize());
            $.ajax({
              type: "POST",
              url: document.URL,
              data: $(form).serialize(),
              dataType: "text",
              beforeSend: function(xhr) {
                xhr.setRequestHeader("Ajax-Request", "true");
              },
              success: function(response) {
                $( "#AlertStockDialog div.alertTankYou" ).css("display","block");
                $( "#AlertStockDialog div.alertForm" ).css("display","none");
                $( "#AlertStockDialog" ).dialog('option', 'buttons', {
                  Close: function() {
                    $( this ).dialog( "close" );
                  }
                });
              }
            });

          }
        },
        Cancel: function() {
          $( this ).dialog( "close" );
        }
      }
    });

    $( "#stockAlert" )
      .click(function() {
        $( "#AlertStockDialog" ).dialog( "open" );
      });

    $( "#ContactDialog" ).dialog({
      autoOpen: false,
      width: 300,
      modal: true,
      buttons: {
        "Submit": function() {
          var form = $('#ContactStockForm');
          var contacterrors = false;
          $("#ContactDialog .required").each(function(){
            if($(this).val()=="")
            {
              $(this).css("border","#FF0000 solid 1px");
              contacterrors = true;
            } else {
              $(this).css("border","1px solid #cccccc");
            }
          });
          if (!contacterrors) {
            // alert($(form).serialize());
            $.ajax({
              type: "POST",
              url: document.URL,
              data: $(form).serialize(),
              dataType: "text",
              beforeSend: function(xhr) {
                xhr.setRequestHeader("Ajax-Request", "true");
              },
              success: function(response) {
                // alert(response);
                // $( "#ContactDialog" ).dialog( "close" );
                $( "#ContactDialog div.alertTankYou" ).css("display","block");
                $( "#ContactDialog div.alertForm" ).css("display","none");
                $( "#ContactDialog" ).dialog('option', 'buttons', {
                  Close: function() {
                    $( this ).dialog( "close" );
                  }
                });
              }
            });
          }
        },
        Cancel: function() {
          $( this ).dialog( "close" );
        }
      }
    });

    $( "#stockContact" ).click(function() {
      $( "#ContactDialog" ).dialog( "open" );
    });

    $( "#AlertSaleDialog" ).dialog({
      autoOpen: false,
      width: 300,
      modal: true,
      buttons: {
        "Activate": function() {
          var form = $('#SaleAlertForm');
          var stockerrors = false;
          $("#AlertSaleDialog .required").each(function(){
            if($(this).val()=="")
            {
              $(this).css("border","#FF0000 solid 1px");
              stockerrors = true;
            } else {
              $(this).css("border","1px solid #cccccc");
            }
          });
          if (!stockerrors) {
            $.ajax({
              type: "POST",
              url: document.URL,
              data: $(form).serialize(),
              dataType: "text",
              beforeSend: function(xhr) {
                xhr.setRequestHeader("Ajax-Request", "true");
              },
              success: function(response) {
                $( "#AlertSaleDialog div.alertTankYou" ).html(response);
                $( "#AlertSaleDialog div.alertTankYou" ).css("display","block");
                $( "#AlertSaleDialog div.alertForm" ).css("display","none");
                $( "#AlertSaleDialog" ).dialog('option', 'buttons', {
                  Close: function() {
                    $( this ).dialog( "close" );
                  }
                });
              }
            });

          }
        },
        Cancel: function() {
          $( this ).dialog( "close" );
        }
      }
    });

    $( "#saleAlert" )
      .click(function() {
        $( "#AlertSaleDialog" ).dialog( "open" );
      });
};



$(document).ready(function () {
  docLoad();

  $(document).on('change', '#filterProdForm' ,function() {
    var form = $('#filterProdForm');
    $.ajax({
      type: "POST",
      url: form.attr("action") ? form.attr("action") : document.URL,
      data: $(form).serialize(),
      dataType: "text",
      beforeSend: function(xhr) {
        xhr.setRequestHeader("Ajax-Request", "true");
        // show Loading gif
        $("#body_ajax_overlay").show();
      },
      success: function(response) {
        $("#ProductDetail").html(response);
        docLoad();
        // hide loading gif
        $("#body_ajax_overlay").hide();
      }
    });
  });

  var form = $('#prevForm');
  $.ajax({
    type: "POST",
    url: form.attr("action") ? form.attr("action") : document.URL,
    data: $(form).serialize(),
    dataType: "text",
    beforeSend: function(xhr) {
      xhr.setRequestHeader("Ajax-Request", "true");
    },
    success: function(response) {}
  });


  var blink = function() {
    $('.color').animate({
        opacity: '0'
    }, 1300, function(){
        $(this).animate({
            opacity: '1'
        }, 1000, blink);
    });
  }

  blink();
});


 });
