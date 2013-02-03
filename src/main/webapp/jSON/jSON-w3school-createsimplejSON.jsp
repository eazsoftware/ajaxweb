<%-- 
    Document   : jSON-w3school-createsimplejSON
    Created on : 03-Feb-2013, 00:33:32
    Author     : javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jSON - w3schools - create simple jSON object</title> 
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script type="text/javascript">
            if (typeof jQuery == 'undefined') {
                document.write(unescape("%3Cscript src='../script/jquery-1.9.0.js' type='text/javascript'%3E%3C/script%3E"));
            }        
        </script>         
    </head>
    <body>
        <h1><title>jSON - w3schools - create simple jSON object</title></h1>
        <p>Create simple jSON object (no AJAX).</p>
        <p>Useful links</p>
        <ul>
            <li><a href="http://www.w3schools.com/json/json_intro.asp">JSON - Introduction</a></li>
        </ul>    
    <body>
        <h2>jSON simple Object Creation in JavaScript</h2>

        <p>
            Name: <span id="jname"></span><br />
            Age: <span id="jage"></span><br />
            Address: <span id="jstreet"></span><br />
            Phone: <span id="jphone"></span><br />
        </p>

        <script>
            $(document).ready(function()
            {
                var JSONObject= {
                    "name":"John Johnson",
                    "street":"Oslo West 555",
                    "age": 33,
                    "phone":"555 1234567"
                };

                $('#jname').html(JSONObject.name);
                $('#jage').html(JSONObject.age);
                $('#jstreet').html(JSONObject.street);
                $('#jphone').html(JSONObject.phone);
            });            
        </script>

    </body>
</html>
