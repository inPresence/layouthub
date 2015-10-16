{if ($deviceLayoutType == "null" && $smarty.cookies.layout != "computer" && $smarty.cookies.layout != "mobile" ) || $smarty.cookies.layout == "null"}
  {* MOBILE LAYOUT START *}
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#">
    <head>
      <link href="/css/mobile_jcarousel.css" rel="stylesheet" type="text/css" />
      <link href="/css/mobile_layout.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="{$smarty.const.BASE_URL}/js/jquery/css/oilhub-theme-frontend/jquery-ui-1.9.2.custom.css" />
      <link href="/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
      <link href="/slick/slick/slick.css" rel="stylesheet" type="text/css"/>
      <link href="/slick/slick/slick-theme.css" rel="stylesheet" type="text/css">
      <link href="/css/shared_inpresence.css" rel="stylesheet" type="text/css"/>
      {block name=css}{/block}
      <title>{block name=title}The Hub Companies{/block}</title>
      {if isset($mainSite) && ($mainSite.siteID != $site.siteID)}
        <link rel="canonical" href="http://{$mainSite.siteSubdomain}.{$mainSite.siteUrl}.{$mainSite.siteTLD}/{$mainUrl}" />
      {/if}
      <link rel="shortcut icon" href="http://www.thehubcompanies.com/images/shared/icons/{$site.templateDir}.ico" />
      <meta name="description" content="{block name=metadescr}{/block}" />
      <meta name="keywords" content="{block name=metakeywords}{/block}" />
      <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0">
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/jquery-ui-1.9.2.custom.js"></script>
      <script type="text/javascript" src="/js/CreateHTML5Elements.js"></script>
      <script type="text/javascript" src="/js/jquery.hoverIntent.js"></script>
      <script type="text/javascript" src="/js/custom.js"></script>
      <script type="text/javascript" src="/js/jquery.jcarousel.min.js"></script>
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/jquery.cookie.js"></script>
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/extentions/jquery.tabSlideOut.v1.3.js"></script>
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/extentions/rwdImageMaps/jquery.rwdImageMaps.min.js"></script>
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/readmore.min.js"></script>
      <script type="text/javascript" src="/js/google.click2call.js"></script>
      {if $deviceLayoutType == "mobile" || $smarty.cookies.layout == "mobile"}
        <script type="text/javascript" src="/js/jquery/extentions/vertical-accordion-menu-2.7/jquery.dcjqaccordion.2.7.js"></script>
      {/if}

      {block name=head}{/block}
        <!-- Piwik -->
        <script type="text/javascript">
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
        </script>
        <noscript><p><img src="//www.thehubcompanies.com/piwik/piwik.php?idsite=1" style="border:0;" alt="" /></p></noscript>
        <!-- End Piwik Code -->
        <script type="text/javascript">
        var _gaq = _gaq || [];
        var pluginUrl =
         '//www.google-analytics.com/plugins/ga/inpage_linkid.js';
        _gaq.push(['_require', 'inpage_linkid', pluginUrl]);
        _gaq.push(['_setAccount', '{$smarty.const.ANALYTICS}']);
        _gaq.push(['_setDomainName', '{$site.url}.com']);
        _gaq.push(['_setAllowLinker', true]);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
      </script>
      <!-- BEGIN: Google Trusted Stores -->
      <script type="text/javascript">
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
      </script>
      <!-- END: Google Trusted Stores -->
      {block name="analytics"}{/block}
      {block name=jquery}{/block}

      <!--[if IE 6]>
      <script src="js/DD_belatedPNG.js"></script>
      <script>
        DD_belatedPNG.fix('body img');
      </script>
      <![endif]-->
      <!--[if lt IE 8]>
      <script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->

    <script>
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
    </script>
    </head>
    <body>
    <div id="body_initial_overlay" style="display: block;"></div>
    {* FACEBOOK *}
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1413965442222204&version=v2.0";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    {* FACEBOOK *}
    <div class="wrapper">
        <div class="top-tabs" style="background-color: #{$site.siteColor};">
          <div class="top-tab" id="category" {if !$filters}style="width: 16.66%;"{else}style="width: 14.28%;"{/if}>
            <img src="mobile-images/shared/tabs/category.png" width="42" height="44" />
          </div>
          {if $filters}
            <div class="top-tab" id="filter" style="width: 14.28%;">
              <img src="mobile-images/shared/tabs/forma.png" width="44" height="44" />
            </div>
          {/if}
          <div class="top-tab" id="search" {if !$filters}style="width: 16.66%;"{else}style="width: 14.28%;"{/if}>
            <img src="mobile-images/shared/tabs/search.png" width="44" height="44" />
          </div>
          <div class="top-tab" id="user" {if !$filters}style="width: 16.66%;"{else}style="width: 14.28%;"{/if}>
            <a href="/customer"><img src="mobile-images/shared/tabs/user.png" width="44" height="44" /></a>
          </div>
          <div class="top-tab" id="cust-service" {if !$filters}style="width: 16.66%;"{else}style="width: 14.28%;"{/if}>
            <img src="mobile-images/shared/tabs/cust-service.png" width="44" height="44" />
          </div>
          <div class="top-tab" id="email" {if !$filters}style="width: 16.66%;"{else}style="width: 14.28%;"{/if}>
            <a href="/customer_service?section=4#tabs-4"><img src="mobile-images/shared/tabs/email.png" width="44" height="44" /></a>
          </div>
          <div class="top-tab" id="cart" {if !$filters}style="width: 16.66%;"{else}style="width: 14.28%;"{/if}>
            <a href="/cart"><img src="mobile-images/shared/tabs/cart.png" width="44" height="44" /></a>
          </div>
        </div>
        <div class="inner-wrapper">
          <div class="header" style="background-image: url(/images/shared/headers/header_{$site.templateDir}hub.png); background-position: right top;">
            <div class="header-logo">
              <a href="/">
                <img src="/images/shared/logos/logo_{$site.templateDir}hub.png"/>
              </a>
            </div>
            {* !!!!!!!!!!!!!!!! TOP BANNER (MOBILE) START !!!!!!!!!!!!!!!! *}
            <div class="header-banner">
              {if $smarty.now > 1430352000  AND $smarty.now < 1430438400 }
                <a href="/promot?coupon=830"><img src="https://www.thehubcompanies.com/images/promotions/FreeShipOneDay.gif" alt="One Day Free Shipping" /></a>
              {else}
                <div class="banner_carousel_h top_banner_carousel">
                  <ul id="top-banner-carousel">
                    <li>
                      {if ($site.url=='theoilhub')}
                        <a href="/promo?coupon=20"><img src="/images/banner/free-shipping-over-150.gif" alt="Free Shipping On Orders Over $150" /></a>
                      {else}
                        <a href="/promo?coupon=14"><img src="/images/banner/free-shipping-over-75.gif" alt="Free Shipping On Orders Over $75" /></a>
                      {/if}
                    </li>
                    {if ($site.url!='riderapparelhub' && $site.url != 'marineparthub')}<li><a href="http://www.riderapparelhub.com"><img src="/images/banner/rider_top_grey.gif" alt="Show Apparel At RiderApparelHub.com" /></a></li>{/if}
                  </ul>
                  <div class="clear"></div>
                </div>
              {/if}
            </div>
            {* !!!!!!!!!!!!!!!! TOP BANNER (MOBILE) END  !!!!!!!!!!!!!!!! *}
          </div>
          <div class="content-wrapper">
            <div class="top-tab-boxes" id="category-box" style="border-right: 1px solid #{$site.siteColor}; border-bottom: 1px solid #{$site.siteColor};">
              <div class="close"><img src="/images/shared/contract-light-2.png" width="32" height="32" /></div>
              {include file="sideCategories.tpl"}
            </div>
            <div class="top-tab-boxes" id="filter-box" style="border-right: 1px solid #{$site.siteColor}; border-bottom: 1px solid #{$site.siteColor};">
              <div class="close"><img src="/images/shared/contract-light-2.png" width="32" height="32" /></div>
              {include file="sideFilters.tpl"}
            </div>
            <div class="top-tab-boxes" id="search-box" style="border-right: 1px solid #{$site.siteColor}; border-bottom: 1px solid #{$site.siteColor};">
              <div class="close"><img src="/images/shared/contract-light-2.png" width="32" height="32" /></div>
              <h2 class="menutitle">Search</h2>
              <div id="searchMenuBox">
                <label>Search by Keyword or Part Number</label>
                <div id="header-search">
                  <form action="/" method="get">
                  <div class="field-left">
                     <img src="/images/shared/search_left.png" width="14" height="27" />
                  </div>
                  <div class="field-center">
                    <input type="text" name="search" class="search-field" value="Search" onfocus="if(this.value=='Search') this.value='';" onblur="if(this.value=='') this.value='Search';">
                  </div>
                  <div class="field-right">
                    <input name="" type="image" value="Search" src="/images/shared/search_right.png" class="top_search_button" />
                  </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="top-tab-boxes" id="cust-service-box" style="border-right: 1px solid #{$site.siteColor}; border-bottom: 1px solid #{$site.siteColor};">
              <h1>Call Us</h1>
              <h2 class="custServiceContact">Toll Free:<br /><a href="tel:18669072330">866-907-2330</a></h2>
              <br />
              <h2 class="custServiceContact">Local:<br /><a href="tel:18477904482">847-790-4HUB<span>(4482)</span></a></h2>
              <br />
              <h1>Email Us</h1>

              <form action="customer_service" method="post">
                <input type="hidden" name="op" value="contact"/>
                <div class="form_area">
                  {include file='shared/error.tpl' errortype=$error}
                  <table cellpadding="0" cellspacing="5">
                    <tr>
                    <tr><td colspan="2"><i class="required-field">Fields marked with a " * " are required.</i></td></tr>
                    <tr>
                      <td><label>First Name:</label><span class="required-field">*</span></td>
                      <td><input name="first" type="text"></td>
                    </tr>
                    <tr>
                      <td><label>Last Name:</label><span class="required-field">*</span></td>
                      <td><input name="last" type="text"></td>
                    </tr>
                    <tr>
                      <td><label>Phone Number:</label><span class="required-field">*</span></td>
                      <td><input name="phone" type="text"></td>
                    </tr>
                    <tr>
                      <td><label>Email Address:</label><span class="required-field">*</span></td>
                      <td><input name="email" type="text"></td>
                    </tr>
                    <tr>
                      <td><label>Subject:</label><span class="required-field">*</span></td>
                      <td><input name="subject" type="text"></td>
                    </tr>
                    <tr>
                      <td><label>Message:</label><span class="required-field">*</span></td>
                      <td><textarea name="message" cols="50" rows="10"></textarea></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>
                        <input name="" type="submit" class="submit_button ui-corner-all" value="SEND" style="color: #{$site.siteTextColor}; background-color: #{$site.siteColor}">
                      </td>
                    </tr>
                  </table>
                  </div>
              </form>


            </div>
            {*<div class="top-tab-boxes" id="email-box">Email Box Slide Test</div>*}
            {*<div class="top-tab-boxes" id="cart-box">Cart Box Slide Test</div>*}
            <div class="content">
              <div id="body_ajax_overlay" style="display: none;"></div>
              {block name="body"}{/block}
            </div>
          </div>
        </div>
        <div class="scrollToTopOuter">
          <a href="#" class="scrollToTop">Scroll To Top</a>
        </div>
        <div class="bottom-tabs" style="border-top: 1px solid #{$site.siteColor}; display: none;">
          <div class="bottom-tab" id="bottom-tab-oil">
            <a href="http:\\www.theoilhub.com"{if $site.templateDir == "oil"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.theoilhub.com']); return false;">
              <img src="/mobile-images/shared/tabs/theoilhub_bottom_tab.png" width="42" height="43" />
            </a>
          </div>
          <div class="bottom-tab" id="bottom-tab-atv">
            <a href="http://www.atvparthub.com"{if $site.templateDir == "atv"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.atvparthub.com']); return false;">
              <img src="/mobile-images/shared/tabs/atvpart_bottom_tab.png" width="44" height="43" />
            </a>
          </div>
          <div class="bottom-tab" id="bottom-tab-auto">
            <a href="http://www.autoparthub.com"{if $site.templateDir == "auto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.autoparthub.com']); return false;">
              <img src="/mobile-images/shared/tabs/autopart_bottom_tab.png" width="44" height="43" />
            </a>
          </div>
          <div class="bottom-tab" id="bottom-tab-moto">
            <a href="http://www.motoparthub.com"{if $site.templateDir == "moto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.motoparthub.com']); return false;">
              <img src="/mobile-images/shared/tabs/motopart_bottom_tab.png" width="44" height="43" />
            </a>
          </div>
          <div class="bottom-tab" id="bottom-tab-marine">
            <a href="http://www.marineparthub.com"{if $site.templateDir == "marine"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.marineparthub.com']); return false;">
              <img src="/mobile-images/shared/tabs/marinepart_bottom_tab.png" width="44" height="43" />
            </a>
          </div>
          <div class="bottom-tab" id="bottom-tab-snow">
            <a href="http://www.snowparthub.com"{if $site.templateDir == "snow"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.snowparthub.com']); return false;">
              <img src="/mobile-images/shared/tabs/snowpart_bottom_tab.png" width="44" height="43" />
            </a>
          </div>
          <div class="bottom-tab" id="bottom-tab-rider">
            <a href="http://www.riderapparelhub.com"{if $site.templateDir == "rider"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.riderapparelhub.com']); return false;">
              <img src="/mobile-images/shared/tabs/rider_bottom_tab.png" width="44" height="43" />
            </a>
          </div>
          <div id="layout-control" style="border-top: 1px solid #{$site.siteColor};">
            <div class="site-layout">
            Change Website Layout<br>
            <a href="?forcelayout=mobile">Mobile</a> | <a href="?forcelayout=computer">Desktop</a> | <a href="?forcelayout=reset">Default</a>
            </div>
          </div>
        </div>
    </div>
    <script type="text/javascript">
      /* <![CDATA[ */
      var google_conversion_id = 997688840;
      var google_conversion_label = "KJ-eCOj4_wQQiIze2wM";
      var google_custom_params = window.google_tag_params;
      var google_remarketing_only = true;
      /* ]]> */
      </script>
      <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
      </script>
      <script type="text/javascript">
       $(document).ready(function(){
        $("#accordian h3").click(function(){
            //slide up all the link lists
            $("#accordian ul ul").slideUp();
            //slide down the link list below the h3 clicked - only if its closed
            if(!$(this).next().is(":visible"))
            {
                $(this).next().slideDown();
            }
        })
    </script>
    </body>
    </html>
  {* MOBILE LAYOUT END *}
{else}
  {* COMPUTER LAYOUT *}
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#">
    <head>
      <link href="/css/shared_global.css" rel="stylesheet" type="text/css" />
      <link href="/css/shared_jcarousel.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="{$smarty.const.BASE_URL}/js/jquery/css/oilhub-theme-frontend/jquery-ui-1.9.2.custom.css" />
      <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.min.css">
      <link href="/slick/slick/slick.css" rel="stylesheet" type="text/css"/>
      <link href="/slick/slick/slick-theme.css" rel="stylesheet" type="text/css">
      <link href="/css/shared_inpresence.css" rel="stylesheet" type="text/css">
      {block name=css}{/block}
      <title>{block name=title}The Hub Companies{/block}</title>
      {if isset($mainSite) && ($mainSite.siteID != $site.siteID)}
        <link rel="canonical" href="http://{$mainSite.siteSubdomain}.{$mainSite.siteUrl}.{$mainSite.siteTLD}/{$mainUrl}" />
      {/if}
      <link rel="shortcut icon" href="http://www.thehubcompanies.com/images/shared/icons/{$site.templateDir}.ico" />
      <meta name="description" content="{block name=metadescr}{/block}" />
      <meta name="keywords" content="{block name=metakeywords}{/block}" />
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/jquery-1.11.3.js"></script>
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/jquery-ui-1.9.2.custom.js"></script>
      <script type="text/javascript" src="/js/CreateHTML5Elements.js"></script>
      <script type="text/javascript" src="/js/jquery.hoverIntent.js"></script>
      <script type="text/javascript" src="/js/custom.js"></script>
      <!-- <script type="text/javascript" src="/js/jquery.jcarousel.min.js"></script> -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.4/jquery.jcarousel.min.js"></script>
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/jquery.cookie.js"></script>
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/extentions/jquery.tabSlideOut.v1.3.js"></script>
      <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/readmore.min.js"></script>
      <script type="text/javascript" src="/js/google.click2call.js"></script>

      {block name=head}{/block}
        <!-- Piwik -->
        <script type="text/javascript">
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
        </script>
        <noscript><p><img src="//www.thehubcompanies.com/piwik/piwik.php?idsite=1" style="border:0;" alt="" /></p></noscript>
        <!-- End Piwik Code -->
        <script type="text/javascript">
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
      </script>
      <!-- BEGIN: Google Trusted Stores -->
      <script type="text/javascript">
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
      </script>
      <!-- END: Google Trusted Stores -->
      {block name="analytics"}{/block}
      {block name=jquery}{/block}

      <!--[if IE 6]>
      <script src="js/DD_belatedPNG.js"></script>
      <script>
        DD_belatedPNG.fix('body img');
      </script>
      <![endif]-->
      <!--[if lt IE 8]>
      <script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->
    </head>
    <body>
    {* FACEBOOK *}
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1413965442222204&version=v2.0";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    {* FACEBOOK *}
    <!-- <div id="chat_tab" {if $deviceLayoutType == 'mobile'}data-slideexpand="false"{else}data-slideexpand="true"{/if} style="background-color: #{$site.siteColor}; background-image: url(/images/shared/icons/chat_icon_bg.png); background-repeat:repeat-x;">
      {*<div style="position: absolute; bottom: 385px; left: 10px; font-size: 22px; width: 285px; color: #ff0000; font-weight: bold;">
      We are experiencing problems with our phones.
      <br></br>Please use our Chat link below or email us at <a href="mailto:service@{$site.url}.com">service@{$site.url}.com</a> for faster assistance.</div>*}
      {if $smarty.now|date_format:"%m/%d/%Y" == '04/30/2015'}<div style="position: absolute; bottom:500px; left: 10px; font-size: 22px; width: 285px; color: #ff0000; font-weight: bold;">
      Free Shipping on All Orders, TODAY ONLY!</div>{/if}
      <div style="position: absolute; bottom: 13px; left: 15px; font-size: 22px; width: 285px; color:black; font-weight: bold;">
      <a href="/customer">ORDER STATUS</a></div>
      <div><a class="handle" href="" data-slidebgcolor="#{$site.siteColor}"></a></div>
      {*<div class="callme">
        <div class="inner_wrapper">
          <table cellpadding="0" cellspacing="5">
            <tr>
              <td><label>Your Name:</label><br /><input type="text" id="cid_name" /></td>
            </tr>
            <tr>
              <td><label>Your Phone Number:<span class="required-field">*</span></label><br /><input type="text" id="cid_number" /></td>
            </tr>
            <tr>
              <td><label>Hide Your Number:</label><input type="checkbox" id="cid_private" value="1"/></td>
            </tr>
            <tr><td><a href="http://www.theoilhub.com/customer_service?section=1">Privacy Policy</a></td></tr>
            <tr>
              <td>
                <input name="" type="submit" class="submit_button ui-corner-all" value="CALL" style="color: #{$site.siteTextColor}; background-color: #{$site.siteColor}" onClick="send_call()">
              </td>
            </tr>
          </table>
        </div>
      </div>*}
      <span id="phplive_btn_1364232377" onclick="phplive_launch_chat_0(0)" style="color: #0000FF; text-decoration: underline; cursor: pointer; position: absolute; bottom: 48px; right: 0px; z-index: 1000;"></span>
      <script type="text/javascript">(function() { var phplive_e_1364232377 = document.createElement("script") ; phplive_e_1364232377.type = "text/javascript" ; phplive_e_1364232377.async = true ; phplive_e_1364232377.src = "//www.{$site.url}.com/phplive/js/phplive_v2.js.php?q=0|1364232377|0|" ; document.getElementById("phplive_btn_1364232377").appendChild( phplive_e_1364232377 ) ; })() ;</script>
    </div> -->
    <div class="outer_wrapper">
      <!-- <div class="inner_wrapper"> -->
      <div class="bs-wrapper">
        <!-- <div class="top-tabs">
          <div class="top-tab" id="top-tab-oil">
            <a href="http://www.theoilhub.com"{if $site.templateDir == "oil"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.theoilhub.com']); return false;">
              <img src="/images/shared/tabs/theoilhub_top_tab.png" width="132" height="47" /></a></div>
          <div class="top-tab" id="top-tab-auto">
            <a href="http://www.autoparthub.com"{if $site.templateDir == "auto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.autoparthub.com']); return false;">
              <img src="/images/shared/tabs/autopart_top_tab.png" width="132" height="47" /></a></div>
          <div class="top-tab" id="top-tab-moto">
            <a href="http://www.motoparthub.com"{if $site.templateDir == "moto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.motoparthub.com']); return false;">
              <img src="/images/shared/tabs/motopart_top_tab.png" width="132" height="47" /></a></div>
          <div class="top-tab" id="top-tab-marine">
            <a href="http://www.marineparthub.com"{if $site.templateDir == "marine"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.marineparthub.com']); return false;">
              <img src="/images/shared/tabs/marinepart_top_tab.png" width="132" height="47" /></a></div>
          <div class="top-tab" id="top-tab-atv">
            <a href="http://www.atvparthub.com"{if $site.templateDir == "atv"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.atvparthub.com']); return false;">
              <img src="/images/shared/tabs/atvpart_top_tab.png" width="132" height="47" /></a></div>
          <div class="top-tab" id="top-tab-snow">
            <a href="http://www.snowparthub.com"{if $site.templateDir == "snow"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.snowparthub.com']); return false;">
              <img src="/images/shared/tabs/snowpart_top_tab.png" width="132" height="47" /></a></div>
          <div class="top-tab" id="top-tab-rider">
            <a href="http://www.riderapparelhub.com"{if $site.templateDir == "rider"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.riderapparelhub.com']); return false;">
              <img src="/images/shared/tabs/rider_top_tab.png" width="132" height="47" /></a></div>
        </div> -->
        <div class="container-fluid bs-header">
            <div class="row promo">
			<div class="col-md-2 left-ad"><strong>SAVE</strong> <br />
			MORE! </div>
			
			<div class="col-md-6 right-ad"><strong>FREE SHIPPING ON ORDERS OVER $75 </strong><br />
USE CODE OIL FOR AN ADDITIONAL 15% OFF!</div>
</div>
            <div class="row tabs">
                <nav class="navbar">
                    <div class="navbar-header navbar-default">
                        <a type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-text">All Hubs</span>
                        </a>
                    </div>
                    <div class="collapse navbar-collapse" id="main-nav">
                        <ul class="nav nav-justified main-nav">
                            <li>
                                <a href="http://www.theoilhub.com"{if $site.templateDir == "oil"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.theoilhub.com']); return false;">Oil</a>
                            </li>
                            <li>
                                <a href="http://www.autoparthub.com"{if $site.templateDir == "auto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.autoparthub.com']); return false;">Auto</a>
                            </li>
                            <li>
                                <a href="http://www.motoparthub.com"{if $site.templateDir == "moto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.motoparthub.com']); return false;">Moto</a>
                            </li>
                            <li>
                                <a href="http://www.marineparthub.com"{if $site.templateDir == "marine"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.marineparthub.com']); return false;">Marine</a>
                            </li>
                            <li>
                                <a href="http://www.atvparthub.com"{if $site.templateDir == "atv"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.atvparthub.com']); return false;">ATV</a>
                            </li>
                            <li>
                                <a href="http://www.snowparthub.com"{if $site.templateDir == "snow"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.snowparthub.com']); return false;">Snow</a>
                            </li>
                            <li>
                                <a href="http://www.riderapparelhub.com"{if $site.templateDir == "rider"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.riderapparelhub.com']); return false;">RV</a>
                            </li>
                            <li><a href="">Apparel</a></li>
                        </ul>
                        <ul class="nav navbar-nav visible-xs-* visible-sm-* mobile-nav">
                            <li>
                                <a href="http://www.theoilhub.com"{if $site.templateDir == "oil"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.theoilhub.com']); return false;">Oil</a>
                            </li>
                            <li>
                                <a href="http://www.autoparthub.com"{if $site.templateDir == "auto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.autoparthub.com']); return false;">Auto</a>
                            </li>
                            <li>
                                <a href="http://www.motoparthub.com"{if $site.templateDir == "moto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.motoparthub.com']); return false;">Moto</a>
                            </li>
                            <li>
                                <a href="http://www.marineparthub.com"{if $site.templateDir == "marine"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.marineparthub.com']); return false;">Marine</a>
                            </li>
                            <li>
                                <a href="http://www.atvparthub.com"{if $site.templateDir == "atv"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.atvparthub.com']); return false;">ATV</a>
                            </li>
                            <li>
                                <a href="http://www.snowparthub.com"{if $site.templateDir == "snow"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.snowparthub.com']); return false;">Snow</a>
                            </li>
                            <li>
                                <a href="http://www.riderapparelhub.com"{if $site.templateDir == "rider"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.riderapparelhub.com']); return false;">RV</a>
                            </li>
                            <li><a href="">Apparel</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="row header-main">
                <div class="col-xs-12 col-sm-6 logo">
                    <a href="/">
                        <img src="/images/shared/logos/logo_hubcohub.png" alt="">
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 acct-nav">
                    <div class="row search">
                        <form action="/" method="get">
                            <div class="input-group search-group">
                                <input type="text" name="search" class="form-control searchbar" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-default search-icon">
                                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                    </button>
                                </span>
                            </div>
                            <span class="glyphicon glyphicon-shopping-cart cart-icon"></span>
                        </form>
                    </div>
                    <div class="row site-nav">
                        <ul class="nav" id="personal-links">
                            <li><a href="">My Orders</a></li>
                            <li><a href="customer_service">Customer Service</a></li>
                            <li><a href="customer">Your Account</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row site-nav"></div>
        </div>
        <!-- <div class="header" style="background-image: url(http://www.thehubcompanies.com/images/shared/headers/header_{$site.templateDir}hub.png);">
           <div id="header-logo">
            <div class="logo-img">
              <a href="/">
                <img src="http://www.thehubcompanies.com/images/shared/logos/logo_{$site.templateDir}hub.png" width="525" height="68" />
              </a>
            </div>
            {*<div class="phone" style="color: #{$site.siteTextColor};">
              <span class="callus" style="color: #{$site.siteTextColor};">Call Us:</span><br />
              866-907-2330<br />847-790-4482
            </div>*}
          </div>
          <div id="header-links">
             <a href="customer_service" id="custservice">CUSTOMER SERVICE</a>
             <a href="customer" id="youraccount">YOUR ACCOUNT</a>
            </div>
          <div id="header-search">
          <form action="/" method="get">
              <div class="field-left">
                 <img src="http://www.thehubcompanies.com/images/shared/search_left.png" width="14" height="27" />
              </div>
              <div class="field-center">
                <input type="text" name="search" class="search-field" value="Search" onfocus="if(this.value=='Search') this.value='';" onblur="if(this.value=='') this.value='Search';">
              </div>
              <div class="field-right">
                <input name="" type="image" value="Search" src="http://www.thehubcompanies.com/images/shared/search_right.png" class="top_search_button" />
              </div>
              </form>
           </div>
        </div> -->
        {block name="topbar"}
          <div class="topbar">
            {* !!!!!!!!!!!!!!!! TOP BANNER (DESKTOP) START !!!!!!!!!!!!!!!! *}
            <div class="scroller">
              {if $smarty.now > 1430352000  AND $smarty.now < 1430438400 }
                <a href="/promot?coupon=830"><img src="https://www.thehubcompanies.com/images/promotions/FreeShipOneDay.gif" alt="One Day Free Shipping" /></a>
              {else}
                <div class="banner_carousel_h top_banner_carousel">
                  <ul id="top-banner-carousel">
                    <li>
                      {if ($site.url=='theoilhub')}
                        <a href="/promo?coupon=20"><img src="http://www.thehubcompanies.com/images/banner/free-shipping-over-150.gif" height="45px" width="814px"  alt="Free Shipping On Orders Over $150" /></a>
                      {else}
                        <a href="/promo?coupon=14"><img src="http://www.thehubcompanies.com/images/banner/free-shipping-over-75.gif" height="45px" width="814px"  alt="Free Shipping On Orders Over $75" /></a>
                      {/if}
                    </li>
                    {if ($site.url!='riderapparelhub' && $site.url != 'marineparthub')}<li><a href="http://www.riderapparelhub.com"><img src="http://www.thehubcompanies.com/images/banner/rider_top_grey.gif" height="45px" width="814px"  alt="Show Apparel At RiderApparelHub.com" /></a></li>{/if}
                  </ul>
                  <div class="clear"></div>
                </div>
              {/if}
            </div>
            {* !!!!!!!!!!!!!!!! TOP BANNER (DESKTOP) END !!!!!!!!!!!!!!!! *}
            <div class="minicart" style="background: #{$site.siteColor};">
              <a href="/cart">
              <div class="cartimage"><img src="http://www.thehubcompanies.com/images/shared/cart_full_{$site.siteTheme}.png" width="22" height="36" /></div>
              <div class="cartamount" style="color: #{$site.siteTextColor};">${$cartTotal|string_format:"%.2f"}</div>
              <div class="buynow"><img src="http://www.thehubcompanies.com/images/shared/buynow_top_{$site.siteTheme}.png" width="50" height="36" /></div>
              <div class="clear"></div>
              </a>
            </div>
          </div>
        {/block}
        <!-- <div class="outer-content-wrapper" style="background: #{$site.siteColor};"> -->
        <div class="container main">
          <div class="inner-content-wrapper">
            {block name="sidebar"}
            <div class="sidebar">
              {block name="sidebarTop"}
                {include file="sideCategories.tpl"}
              {/block}
              {include file="sideMarketing.tpl"}
              {include file="sideRecentProds.tpl"}
              {include file="sideRecentSearch.tpl"}
              {include file="sideNewsLetter.tpl"}
            </div>
            {/block}
            <div class="content {if isset($cartView)}fullPage{/if}">
              {block name=banner}{/block}
              <!-- <div id="body_ajax_overlay" style="display: none;"></div> -->
              {block name="body"}{/block}
            </div>
          </div>
        </div>
  <!--       <div class="bottom-tabs" style="border-top: 10px solid #{$site.siteColor};">
          <div class="bottom-tab" id="bottom-tab-oil"><a href="http:\\www.theoilhub.com"{if $site.templateDir == "oil"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.theoilhub.com']); return false;">
          <img src="/images/shared/tabs/theoilhub_bottom_tab.png" width="111" height="43" /></a></div>
          <div class="bottom-tab" id="bottom-tab-auto"><a href="http://www.autoparthub.com"{if $site.templateDir == "auto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.autoparthub.com']); return false;">
          <img src="/images/shared/tabs/autopart_bottom_tab.png" width="111" height="43" /></a></div>
          <div class="bottom-tab" id="bottom-tab-moto"><a href="http://www.motoparthub.com"{if $site.templateDir == "moto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.motoparthub.com']); return false;">
          <img src="/images/shared/tabs/motopart_bottom_tab.png" width="111" height="43" /></a></div>
          <div class="bottom-tab" id="bottom-tab-marine"><a href="http://www.marineparthub.com"{if $site.templateDir == "marine"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.marineparthub.com']); return false;">
          <img src="/images/shared/tabs/marinepart_bottom_tab.png" width="111" height="43" /></a></div>
          <div class="bottom-tab" id="bottom-tab-atv"><a href="http://www.atvparthub.com"{if $site.templateDir == "atv"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.atvparthub.com']); return false;">
          <img src="/images/shared/tabs/atvpart_bottom_tab.png" width="111" height="43" /></a></div>
          <div class="bottom-tab" id="bottom-tab-snow"><a href="http://www.snowparthub.com"{if $site.templateDir == "snow"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.snowparthub.com']); return false;">
          <img src="/images/shared/tabs/snowpart_bottom_tab.png" width="111" height="43" /></a></div>
          <div class="bottom-tab" id="bottom-tab-rider"><a href="http://www.riderapparelhub.com"{if $site.templateDir == "rider"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.riderapparelhub.com']); return false;">
          <img src="/images/shared/tabs/rider_bottom_tab.png" width="111" height="43" /></a></div>
          <div class="minicart" style="background: #{$site.siteColor};">
            <a href="/cart">
            <div class="cartimage"><img src="http://www.thehubcompanies.com/images/shared/cart_full_{$site.siteTheme}.png" width="22" height="36" /></div>
            <div class="cartamount" style="color: #{$site.siteTextColor};">${$cartTotal|string_format:"%.2f"}</div>
            <div class="buynow"><img src="http://www.thehubcompanies.com/images/shared/buynow_top_{$site.siteTheme}.png" width="50" height="36" /></div>
            <div class="clear"></div>
            </a>
          </div>
        </div> -->
         <div class="footer">
		 <div class="container-fluid bs-footer">

            <div class="row footer-nav">
                <ul class="nav footer nav-justified">
                    <li>
                        <a href="http://www.theoilhub.com"{if $site.templateDir == "oil"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.theoilhub.com']); return false;">Oil</a>
                    </li>
                    <li>
                        <a href="http://www.autoparthub.com"{if $site.templateDir == "auto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.autoparthub.com']); return false;">Auto</a>
                    </li>
                    <li>
                        <a href="http://www.motoparthub.com"{if $site.templateDir == "moto"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.motoparthub.com']); return false;">Moto</a>
                    </li>
                    <li>
                        <a href="http://www.marineparthub.com"{if $site.templateDir == "marine"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.marineparthub.com']); return false;">Marine</a>
                    </li>
                    <li>
                        <a href="http://www.atvparthub.com"{if $site.templateDir == "atv"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.atvparthub.com']); return false;">ATV</a>
                    </li>
                    <li>
                        <a href="http://www.snowparthub.com"{if $site.templateDir == "snow"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.snowparthub.com']); return false;">Snow</a>
                    </li>
                    <li>
                        <a href="http://www.riderapparelhub.com"{if $site.templateDir == "rider"} class="current"{/if} onclick="_gaq.push(['_link', 'http://www.riderapparelhub.com']); return false;">RV</a>
                    </li>
                    <li><a href="">Apparel</a></li>
                </ul>
				<div class="row help">
					<strong>WE'RE HERE TO HELP.</strong> <br />
					7 DAYS A WEEK, 8AM - 7PM
				</div>
            </div>
		    <div class="row footer-main">
                <!-- <div class="col-xs-6 col-xs-push-2 chat"> -->
                <div class="col-xs-6 chat">
                    <strong class="icon-text-foot">LIVE CHAT</strong><span class="glyphicon glyphicon-comment comment-icon"> </span>
                </div>
                <!-- <div class="col-xs-6 col-xs-pull-2 phone"> -->
                <div class="col-xs-6 phone">
                    <strong class="icon-text-foot">800-123-3455</strong><span class="glyphicon glyphicon-phone phone-icon"></span>
                </div>
            </div>
            <div class="row col-md-6 col-md-push-3 footer-nav ">
                <ul class="nav footer-links nav-justified">
                    <li ><a href="/customer_service?section=0" id="ui-id-2" tabindex="-1" role="menuitem">ABOUT US</a></li>
                    <li ><a href="/customer_service?section=7" id="ui-id-3" tabindex="-1" role="menuitem">BENEFITS &amp; GUARANTEES</a></li>
                    <li ><a href="/customer_service?section=1" id="ui-id-4" tabindex="-1" role="menuitem">PRIVACY &amp; SECURITY</a></li>
                    <li ><a href="/customer_service?section=3" id="ui-id-5" tabindex="-1" role="menuitem">SHIPPING &amp; DELIVERY</a></li>
                </ul>
			    <ul class="nav footer-links nav-justified">
    			    <li ><a  href="/customer_service?section=5" id="ui-id-6" tabindex="-1" role="menuitem">RETURNS &amp; EXCHANGES</a></li>
                    <li ><a href="/customer_service?section=4" id="ui-id-7" tabindex="-1" role="menuitem">CONTACT US</a></li>
                    <li ><a  href="/customer_service?section=9" id="ui-id-8" tabindex="-1" role="menuitem">TERMS OF SERVICE</a></li>
			    </ul>

            </div>

            </div>
</div>
 </div>
  </div>
          <div class="container footer">
            <div class="col-xs-6 copyright">
                Copyright 2015. All Rights Reserved<br />
                Operated by Edge Xtreme Sports a subsidiary of The Hub Companies <br />
                600 North Waukegan Road, Unit 102<br />
                Northbrook IL 60062<br />
                866-907-2330&nbsp;&nbsp;&nbsp;847-790-4HUB&nbsp;&nbsp;&nbsp;847-790-4482
            </div>

		    <div class="col-xs-6 social">Connect with us! </div>
			<img src="http://www.thehubcompanies.inpresence.us/img/facebook.png" alt="">
			<img src="http://www.thehubcompanies.inpresence.us/img/twitter.png" alt="">

		  </div>


		  </div>
        <div id="layout-control">
          <div>
          Change Website Layout<br>
          <a href="?forcelayout=computer">Mobile</a> | <a href="?forcelayout=computer">Desktop</a>
          </div>
          <div>
            <a href="#" class="scrollToTop">Scroll To Top</a>
          </div>
        </div>
      </div>
    </div>
    <div id="dialog" title="" style="display: none;">
      <div class="header">
        <h1 id="dialogtitle"></h1>
      </div>
      <div id="dialogtext"></div>
    </div>
    <div id="dialog-open"  style="display: none;"></div>
      <!-- Google Code for Remarketing tag -->
      <!-- Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. For instructions on adding this tag and more information on the above requirements, read the setup guide: google.com/ads/remarketingsetup -->
      {block name="remarketing"}
      <script type="text/javascript">
        var google_tag_params = {
        ecomm_pagetype: 'other'
        };
      </script>
      {/block}
      <script type="text/javascript">
      /* <![CDATA[ */
      var google_conversion_id = 997688840;
      var google_conversion_label = "KJ-eCOj4_wQQiIze2wM";
      var google_custom_params = window.google_tag_params;
      var google_remarketing_only = true;
      /* ]]> */
      </script>
      <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
      </script>
      <noscript>
      <div style="display:inline;">
      <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/997688840/?value=0&amp;label=KJ-eCOj4_wQQiIze2wM&amp;guid=ON&amp;script=0"/>
      </div>
      </noscript>
      {foreach $allSites as $thisSite}
        {if $site.siteID != $thisSite.siteID}
          <img height="1" width="1" style="border-style:none;" alt="" src="https://{$thisSite.subdomain}.{$thisSite.url}.{$thisSite.tld}/setCookie.php?name=cartName&value={$smarty.cookies.cartName}"/>
          <img height="1" width="1" style="border-style:none;" alt="" src="https://{$thisSite.subdomain}.{$thisSite.url}.{$thisSite.tld}/setCookie.php?name=source&value={$smarty.session.source}&session=1"/>
        {/if}
      {/foreach}
    <script type="text/javascript" src="{$smarty.const.BASE_URL}/js/jquery/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="/slick/slick/slick.min.js"></script>
    <script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.brand-carousel-slick').slick({
                infinite: true,
                speed: 300,
                arrows: false,
                autoplay: true,
                slidesToShow: 6,
                slidesToScroll: 6,
                responsive: [
                    {
                      breakpoint: 1024,
                      settings: {
                        slidesToShow: 4,
                        slidesToScroll: 4,
                        infinite: true,
                      }
                    },
                    {
                      breakpoint: 600,
                      settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                      }
                    },
                    {
                      breakpoint: 480,
                      settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                      }
                    }
                ]
            });
        });
      </script>
    </body>
    </html>
  {* COMPUTER LAYOUT END *}
{/if}