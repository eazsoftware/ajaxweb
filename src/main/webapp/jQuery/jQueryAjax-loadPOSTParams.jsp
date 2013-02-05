<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery Ajax - load parameters with POST method</title>
        <!-- Google Hosted Libraries -->
        <!-- https://developers.google.com/speed/libraries/?hl=es -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    </head>
    <body>
        <h1>jQuery Ajax - load parameters with POST method</h1>
        <p>If parameters are passed as an object (rather than string), they are passed to the remote url in the POST method.</p>
        <p>Helpful links</p>
        <ul>
            <li><a href="http://net.tutsplus.com/tutorials/javascript-ajax/5-ways-to-make-ajax-calls-with-jquery/">5 Ways to Make Ajax Calls with jQuery</a></li>
        </ul>
        <button type="button" id="load_post">Request data</button>
        <div id="result"></div>
    </body>
    
    <script>
        $.ajaxSetup ({  
             cache: false  
         });   
         var loadUrl = "whattimeisit-div.jsp";  
            $("#load_post").click(function(){  
                $("#result")  
                    .html(ajax_load)  
                    .load(loadUrl, {name: "Javier", version: 5});  
            });        
    </script>
</html>



