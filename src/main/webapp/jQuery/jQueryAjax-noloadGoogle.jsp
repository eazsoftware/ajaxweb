<%-- 
    Document   : jQueryAjax-noloadGoogle
    Created on : 02-Feb-2013, 17:50:57
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery Ajax - no load Google jQuery library</title>
        <!-- Google Hosted Libraries -->
        <!-- https://developers.google.com/speed/libraries/?hl=es -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script type="text/javascript">
        if (typeof jQuery == 'undefined') {
            document.write(unescape("%3Cscript src='../script/jquery-1.9.0.js' type='text/javascript'%3E%3C/script%3E"));
            document.write("<link rel='stylesheet' type='text/css' href='../css/failGoogleLibrary.css' />");
        }
        else {
            document.write("<link rel='stylesheet' type='text/css' href='../css/okGoogleLibrary.css' />");            
        }
        
        </script>  
        
    </head>
    <body>
        <h1>jQuery Ajax - no load Google jQuery library</h1>
        <p>A function can be passed to load() as a callback. This function will be executed as soon as the AJAX request is completed successfully.</p>
        <p>If it was not be possible to load Google jQuery library, a local copy jQuery library will be loaded.</p>
        <p>Useful links</p>
        <ul>
            <li><a href="http://net.tutsplus.com/tutorials/javascript-ajax/5-ways-to-make-ajax-calls-with-jquery/">5 Ways to Make Ajax Calls with jQuery</a></li>
            <li><a href="http://stackoverflow.com/questions/1014203/best-way-to-use-googles-hosted-jquery-but-fall-back-to-my-hosted-library-on-go">Best way to use Google's hosted jQuery, but fall back to my hosted library on Google fail</a></li>
        </ul>
        <p class="libraryLoad"><p>
        <button type="button" id="load_callback">Request data</button>
        <div id="result"></div>
    </body>
    
    <script>
        $.ajaxSetup ({  
             cache: false  
         });  
         var ajax_load = "<img src='../img/ajax_loading.gif' alt='loading...' />";  
         var loadUrl = "whattimeisit-div.jsp?name=Javier";         
	$("#load_callback").click(function(){
		$("#result")
			.html(ajax_load)
			.load(loadUrl, null, function(responseText){
				alert("Response:\n" + responseText);
			});
	});
    </script>
</html>
