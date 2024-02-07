$(document).ready(function(){
    if(property_list_count  == "limited")
    {
        $.ajax({
            type: "POST",
            url: "loadproperty.php",
            data: {limit : 3},
            success: function(result){
               $(".property-listing").html(result);
            }
          });
    }
    else
    {
      $.ajax({
        type: "POST",
        url: "loadproperty.php",
        data: {limit : 0},
        success: function(result){
           $(".property-listing").html(result);
        }
      });
    }
  });