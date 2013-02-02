<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajax Simple sample</title>
        
        <script>
            function getAJAXObject() {
                var aj;
                var browser = navigator.appName;
                if(browser == "Microsoft Internet Explorer"){
                    aj = new ActiveXObject("Microsoft.XMLHTTP");
                }else{
                    aj = new XMLHttpRequest();
                }
                return aj;
            }

            var ajax = getAJAXObject();

            function receiveResponse() {
                if(ajax.readyState == 4){
                    var response = ajax.responseText;
                    document.getElementById('username').innerHTML = response;
                }
            }            
            
            function sendRequest(name) {
                document.getElementById('username').innerHTML = "Waiting for a response...";
                ajax.open('get', 'whattimeisit.jsp?name='+name);
                ajax.onreadystatechange = receiveResponse;
                ajax.send(null);
            }

        </script>
    </head>
    <body>
        <h1>Simple Ajax</h1>
        http://www.jtmelton.com/2007/07/24/5-easy-steps-to-ajax/
        http://www.tutorialspoint.com/ajax/what_is_xmlhttprequest.htm

        <div id="username">            
        </div>

        <button type="button" onclick="sendRequest('Javier')">Request data</button>
        
    </body>
</html>
