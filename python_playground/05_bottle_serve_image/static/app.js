
$(document).ready(function() {

    console.log("Document ready");
    $('#getBtn').click(function(){
        console.log("Button clicked");
        $(this).parent().append("<p>Image loaded from db</p>");

        var imgTag = $('<img>');
        imgTag.attr("height", "50");
        imgTag.attr("width", "50");
        imgTag.attr("src", "/getimage");
        $(this).parent().append(imgTag);
    });

});

