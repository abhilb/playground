
$(document).ready(function() {

    console.log("Document ready");
    $('#getBtn').click(function(){
        console.log("Button clicked");
        $(this).parent().append("<p>Image loaded from db</p>");
    });

});

