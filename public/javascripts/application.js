$(document).ready(function(){
  $("form#greeter input[type=submit]").click(function() {  
    // Hide the last notice
    $(".notice").hide();
    
    // Turn the form into an argument string
    var str = $("form#greeter").serialize();
       
    // Retrieve the greeting remotely and update the feedback div 
    $.ajax({
      url: "/name.js",
      cache: false,
      data: str,
      success: function(html){
        $(".notice").text(html);
        $(".notice").slideDown();
      }
    });
    
    // Don't allow the form to submit
    return false; 
  });  
});