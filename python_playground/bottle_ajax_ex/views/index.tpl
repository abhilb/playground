<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script>
        $("document").ready(function(){
            $("#test_ajax_btn").click(function(){
                $("#ajaxres").hide();
                $("#ajaxins").html("adfadsf");
            });
        });
    </script>
</head>
<body>
    <h1>Ajax example... </h1>
    <button id="test_ajax_btn">Test ajax...</button>
    <div>
        <p id="ajaxres">Hide this by clicking the button</p>
        <p id="ajaxins"></p>
    </div>
</body>
</html>
