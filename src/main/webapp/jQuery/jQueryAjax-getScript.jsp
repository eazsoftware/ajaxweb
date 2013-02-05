<%-- 
    Document   : jQueryAjax-getScript
    Created on : 04-Feb-2013, 00:29:13
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery Ajax - getScript</title>
        <!-- Google Hosted Libraries -->
        <!-- https://developers.google.com/speed/libraries/?hl=es -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    </head>
    <body>
        <h1>jQuery Ajax - getScript</h1>
        <p>We can load JavaScript files with $.getScript method.</p>
        <p>Helpful links</p>
        <ul>
            <li><a href="http://net.tutsplus.com/tutorials/javascript-ajax/5-ways-to-make-ajax-calls-with-jquery/">5 Ways to Make Ajax Calls with jQuery</a></li>
        </ul>
        <button id="buttonGetScript">Use Ajax to get and then run a JavaScript</button>
        <div id="result"></div>
    </body>
    
    <script>  
         $("#buttonGetScript").click(function() {  
            $.getScript("../script/demo_jqueryajax_getscript.js");  
         });         
    </script>
</html>



