$(document).ready(function(){

    //Getting Property Id from the URL
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const propertyid = urlParams.get('propertyid');

    //Loading Property Data
    $.ajax({
        type: "POST",
        data : {pid: propertyid},
        url: "property-detail.php",
        success: function(result){
           $(".property-detail").html(result);
        }
    });

    //Validating form and sending enquiring
    $(".enquire-form").validate({
        rules:{
            uname:{
                required : true,
            },
            uemail:{
                required : true,
            },
            phn:{
                required : true,
                digits: true
            },
            msg:{
                required : true,
            }
        },
        messages:{
            msg : "Please enter your message."
        },
        submitHandler: function(form) {
            let userName = $("input[name=uname]").val();
            let userEmail = $("input[name=uemail]").val();
            let phn = $("input[name=phn]").val();
            let msg = $("textarea[name=msg]").val();
            let propertyAddress = $(".property-address").text();
            $.ajax({
                type: "POST",
                data : {uname:userName, uemail:userEmail , uphn:phn, umsg:msg , paddress : propertyAddress},
                url: "send-enquiry.php",
                success: function(result){
                    alert(result)
                    $('form')[0].reset();
                }
            });
        }
    });
     
  });