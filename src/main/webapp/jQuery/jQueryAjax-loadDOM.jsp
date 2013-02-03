<%-- 
    Document   : jQueryAjax-loadDOM
    Created on : 27-Jan-2013, 15:40:01
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery Ajax - load - DOM#</title>
        <!-- Google Hosted Libraries -->
        <!-- https://developers.google.com/speed/libraries/?hl=es -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    </head>
    <body>
        <h1>jQuery Ajax - load DOM#</h1>
        <p>When clicking the button, the #picture DOM will be the only part of the response to be injected.</p>
        <p>Useful links</p>
        <ul>
            <li><a href="http://net.tutsplus.com/tutorials/javascript-ajax/5-ways-to-make-ajax-calls-with-jquery/">5 Ways to Make Ajax Calls with jQuery</a></li>
        </ul>
        <button type="button" id="load_dom">Request data</button>
        <div id="result"></div>
    </body>
    
    <script>
        $.ajaxSetup ({  
             cache: false  
         });  
         var ajax_load = "<img src='../img/ajax_loading.gif' alt='loading...' />";  
         var loadUrl = "whattimeisit-div.jsp?name=Javier";         
         $("#load_dom").click(function(){
                $("#result")
                        .html(ajax_load)
                        .load(loadUrl + " #picture");
         });
    </script>
</html>



