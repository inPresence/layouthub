


	 (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery/jquery.multiselect.min.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();

 
	 (function(){
  var newscript = document.createElement('script');
     newscript.type = 'text/javascript';
     newscript.async = true;
     newscript.src = '/js/jquery/jquery.multiselect.filter.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(newscript);
})();

 
	
	
	
$(document).ready(function() {
        $('.delete').bind( "click", function() {
          var id =this.id;
          ids = id.split('_');
          $.ajax({
            type: "POST",
            url: "../admin/product.php",
            data: "op=editCategories&deletePC=1&submitted=1&ajax=1&productID="+ids[0]+"&categoryID="+ids[1]+"&productType="+ids[2],
            dataType: "text",
            beforeSend: function(xhr) {
              xhr.setRequestHeader("Ajax-Request", "true");
            },
            success: function(response) {
              $('#'+id).html('');
            }
          });
          return false;
        });

        $('#checkAll').on( "click", function() {
          $('.prodID').prop('checked', $(this).is(":checked"));
        });

        $("#allCats").multiselect({
         noneSelectedText: "New Category",
         selectedList:5,
         multiple:true
        }).multiselectfilter();
      });