<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script>
        $("document").ready(function(){
            $("#test_ajax_btn").click(function(){
                $.ajax({
                    url: "/",
                    method: "post",
                    success: function(data){
                        console.log(data);
                        var newContent = $('<p></p>');
                        newContent.text(data["test"]);
                        $('#ajax_res').append(newContent);
                    },
                    dataType: "json"
                });
            });
        });
    </script>
</head>
<body>
    <h1>Ajax example... </h1>
    <button id="test_ajax_btn">Test ajax...</button>
    <div id="ajax_res">
    </div>
</body>
</html>
