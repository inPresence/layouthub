




cartID = $.cookie('cartID');

function send_call() {
      var cid_number = document.getElementById('cid_number').value;
      var cid_name   = document.getElementById('cid_name').value;
      var cid_private   = document.getElementById('cid_private').checked;
      click2call(cid_number, cid_name, cid_private);
  }

  function mycarousel_initCallback(carousel)
  {
      // Disable autoscrolling if the user clicks the prev or next button.
      carousel.buttonNext.bind('click', function() {
          carousel.startAuto(0);
      });

      carousel.buttonPrev.bind('click', function() {
          carousel.startAuto(0);
      });

      // Pause autoscrolling if the user moves with the cursor over the clip.
      carousel.clip.hover(function() {
          carousel.stopAuto();
      }, function() {
          carousel.startAuto();
      });
  };

  $(document).ready(function() {
    // dialog
    $( "#dialog" ).dialog({
      modal: true,
      autoOpen: false
    });
    $( "#dialog-open" ).click(function() {
        $( "#dialog" ).dialog( "open" );
    });

    // Chat and Google Voice slide out
    slidebgcolor = $("a.handle").data('slidebgcolor');
    slideexpand = $("div#chat_tab").data('slideexpand');
    $('#chat_tab').tabSlideOut({
      tabHandle: '.handle',                                           //class of the element that will be your tab
      pathToTabImage: '/images/shared/icons/chat_icon.png',           //path to the image for the tab (optionaly can be set using css)
      imageHeight: '50px',                                            //height of tab image
      imageWidth: '50px',                                             //width of tab image
      imageBackground: slidebgcolor,                                  //image offset how much the icon images get moved to the side
      tabLocation: 'left',                                           //side of screen where tab lives, top, right, bottom, or left
      speed: 300,                                                     //speed of animation
      action: 'click',                                                //options: 'click' or 'hover', action to trigger animation
      bottomPos: '1px',                                               //position from the bottom overwrites topPos. To use topPos leave empty
      fixedPosition: true,                                            //options: true makes it stick(fixed position) on scroll
      clickScreenToClose: false,                                       //options: true makes closes slider if clicked anywhere on the screen
      onLoadSlideOut: slideexpand                                     //options: true makes it come out on load
    });
	
	 });

	window.mobilecheck = function() {
  var check = false;
  (function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4)))check = true})(navigator.userAgent||navigator.vendor||window.opera);
  return check;
 if (check == false){
	   $('#catTreeMenu ul').dcAccordion({
          eventType: 'hover',
          autoClose: true,
          saveState: false,
          disableLink: false,
          showCount: false,
          menuClose: true,
          speed: 'fast'
        });
	 
	 
 }
 else {
	 
	 
	   $( "#catTreeMenu ul" ).menu();
 }
}

	   // hide/unhide elements after page load
    $("#catTreeMenuBox").toggle();

    // recent searches random font size
    function setFontSize() {
      var maxFontSize = 20;
      var fontSize = Math.floor(Math.random() * maxFontSize + 14) + 'px';
      return fontSize;
    }
    $( ".tagsCloud a" ).each(function() {
      var a = $(this);
      var cssFontSize = setFontSize();
      a.css({fontSize: cssFontSize});
    });

    // banner carousel
    // Initial banner load
    $('#top-banner-carousel').jcarousel({
      horizontal: true,
      scroll: 5,
      auto: 5,
      animation: 'slow',
      wrap: 'circular',
      rtl: true,
      initCallback: mycarousel_initCallback
    });

    // brands carousel
    $('#brand-carousel').jcarousel({
      horizontal: true,
      scroll: 5,
      auto: 5,
      animation: 'slow',
      wrap: 'circular',
      rtl: true,
      initCallback: mycarousel_initCallback
    });
    // featured products horizintal carousel - computer display
    $('#featured-prod-carousel').jcarousel({
      horizontal: true,
      scroll: 4,
      auto: 4,
      animation: 'slow',
      wrap: 'circular',
      rtl: false,
      initCallback: mycarousel_initCallback
    });

    // featured products horizintal carousel - mobile display
    $('#featured-mobile-prod-carousel').jcarousel({
      horizontal: true,
      scroll: 1,
      auto: 1,
      animation: 'slow',
      wrap: 'circular',
      rtl: false,
      initCallback: mycarousel_initCallback
    });
    // product specials horizintal carousel
    $('#specials-prod-carousel').jcarousel({
      horizontal: true,
      scroll: 4,
      auto: 4,
      animation: 'slow',
      wrap: 'circular',
      rtl: true,
      initCallback: mycarousel_initCallback
    });
    // previouse items vertical carousel
    $('#previtems-prod-carousel').jcarousel({
      vertical: true,
      scroll: 2,
      animation: 'slow',
      wrap: 'circular',
      initCallback: mycarousel_initCallback
    });

    // Pin It button
    $('#pin1click').click(function() {
        $('#pin1click').hide();
        // Send a click event to the actual image to invoke the Pinterest process.
        $('#pin1 a img').click();
        // Quick and dirty method to show/hide humongous logo during Pinterest pinning using default method in HTML Anchor.
        setTimeout("$('#pin1click').show();", 1000);
    });

    // As above, quick and dirty method to show/hide humongous Pin-It Logo during Pinterest pinning.
    $("#pin1 a img").click(function() {
        $('#pin1click').hide();
        // This is the dirty part. A better method should be used to hide the logo.
        setTimeout("$('#pin1click').show();", 1000);
    });

    function FilterAjax(){
      var form = $('#filterForm');
      $.ajax({
          type: "POST",
          url: form.attr("action") ? form.attr("action") : document.URL,
          data: $(form).serialize(),
          dataType: "text",
          beforeSend: function(xhr) {
            xhr.setRequestHeader("Ajax-Request", "true");
 //         $("#filterWrap").html('');
            $("#body_ajax_overlay").show();
            $(".filter_ajax_overlay").show();
	
	window.mobilecheck = function() {
  var check = false;
  (function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4)))check = true})(navigator.userAgent||navigator.vendor||window.opera);
  return check;
 if (check == false){
	   $('html, body').animate({scrollTop : 0},800);
	  $("#filter-box").hide("slow");
	 }
 else {
	  success: function(response) {
            console.log(response);
            var obj = jQuery.parseJSON(response);
            $("#ProductList").html(obj.prodList);
            $("#filterWrap").html(obj.filters);
            $(".pageSortWrap").html(obj.sort);

            $( "#filterPriceRange" ).slider({
              range: true,
              min: parseInt(obj.minPrice),
              max: parseInt(obj.maxPrice),
              values: [ parseInt(obj.selectMinPrice), parseInt(obj.selectMaxPrice) ],
              step: 5,
              slide: function( event, ui ) {
                $( "#filterPriceAmount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
              },
              stop: function( event, ui ) {
                $( "#filterPriceAmount" ).change();
              }
            });
            $( "#filterPriceAmount" ).val( "$" + obj.selectMinPrice +
              " - $" + obj.selectMaxPrice );


            $("#body_ajax_overlay").hide();
            $(".filter_ajax_overlay").hide();
          }
		   $(document).on('change', '#filterForm' ,function() {
      FilterAjax();
    });
	
	
	  // bind change event to select
    $(document).on('change', '.sort_select', function () {
        var url = $(this).val(); // get selected value
        if (url) { // require a URL
            window.location = url; // redirect
        }
        return false;
    });
    // bind change event to select
    $(document).on('change', '.perPage_select', function () {
        var url = $(this).val(); // get selected value
        if (url) { // require a URL
            window.location = url; // redirect
        }
        return false;
    });

    // Filter reset
    $(document).on('click', '.filter_clear_option', function() {
        type = $(this).data("type");
        obj = $(this).data("obj");
        if (type == "checkbox") {
          $( obj ).removeAttr('checked');
        }
        if (type == "select") {
          $( obj ).val('');
        }
        $( obj ).change();
    });

    $(document).on('click', '#filter_price_clear', function() {
        validMin = $(this).data("validmin");
        validMax = $(this).data("validmax");
        $( "#filterPriceAmount" ).val( "$" + validMin + " - $" + validMax );
        $( "#filterPriceAmount" ).change();
    });

    $(document).on('click', '.clear_form', function(){
      var formID = "#"+$('.clear_form').closest('form').attr('id');
      $(formID).find(':input').each(function() {
          switch(this.type) {
              case 'password':
              case 'select-multiple':
              case 'select-one':
              case 'text':
              case 'textarea':
                  $(this).val('');
                  break;
              case 'checkbox':
              case 'radio':
                  this.checked = false;
          }
      });
      FilterAjax();
    });
 }
 
