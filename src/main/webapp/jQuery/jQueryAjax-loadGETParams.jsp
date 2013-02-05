<%-- 
    Document   : jQueryAjax
    Created on : 24-Jan-2013, 23:28:13
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery Ajax - load parameters with GET method</title>
        <!-- Google Hosted Libraries -->
        <!-- https://developers.google.com/speed/libraries/?hl=es -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    </head>
    <body>
        <h1>jQuery Ajax - load parameters with GET method</h1>
        <p>By passing a string as the second param of load(), these parameters are passed to the remote url in the GET method.</p>
        <p>Helpful links</p>
        <ul>
            <li><a href="http://net.tutsplus.com/tutorials/javascript-ajax/5-ways-to-make-ajax-calls-with-jquery/">5 Ways to Make Ajax Calls with jQuery</a></li>
        </ul>
        <button type="button" id="load_get">Request data</button>
        <div id="result"></div>
    </body>
    
    <script>
        $.ajaxSetup ({  
             cache: false  
         });  
         var loadUrl = "whattimeisit-div.jsp";  
         $("#load_get").click(function(){  
             $("#result")
                    .html(ajax_load)
                    .load(loadUrl, "name=Javier");  
         });         
    </script>
</html>



