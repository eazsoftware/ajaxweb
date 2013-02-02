<%-- 
    Document   : w3school.jsp
    Created on : 17-Jan-2013, 22:57:25
    Author     : javier
--%>
<html>
<head>
    <script>
        function loadXMLDoc(name) {    
            document.getElementById("myDiv").innerHTML="Calling Ajax function...";
            var xmlhttp;
            if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
              xmlhttp=new XMLHttpRequest();
            }
            else { // code for IE6, IE5
              xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }

            xmlhttp.onreadystatechange=function() {
              if (xmlhttp.readyState==4 && xmlhttp.status==200) {
                document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
              }
            }
            xmlhttp.open("GET","whattimeisit.jsp?name="+name,true);
            xmlhttp.send();
        }
    </script>
</head>
<body>
    <h2>AJAX</h2>

    <div id="myDiv"></div>

    <button type="button" onclick="loadXMLDoc('Javier')">Request data</button>
</body>
</html>