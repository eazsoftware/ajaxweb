<%-- 
    Document   : jSON-w3school-parseObjectFromString
    Created on : 03-Feb-2013, 01:13:32
    Author     : javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jSON - w3schools - parse an jSON object from a previous string</title> 
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script type="text/javascript">
            if (typeof jQuery == 'undefined') {
                document.write(unescape("%3Cscript src='../script/jquery-1.9.0.js' type='text/javascript'%3E%3C/script%3E"));
            }        
        </script>         
    </head>
    <body>
        <h1><title>jSON - w3schools - parse an jSON object from a previous string<</title></h1>
        <p>Converting a JSON Text to a JavaScript Object.</p>
        <p> The eval() function can compile and execute any JavaScript. This represents a potential security problem.
            It is safer to use a JSON parser to convert a JSON text to a JavaScript object. A JSON parser will recognize only JSON text and will not compile scripts. </p>
        <p>Helpful links</p>
        <ul>
            <li><a href="http://www.w3schools.com/json/json_eval.asp">Converting a JSON Text to a JavaScript Object</a></li>
        </ul>

        <p>
            First Name: <span id="fname"></span><br> 
            Last Name: <span id="lname"></span><br> 
        </p> 

        <script>
            $(document).ready(function() {
                var txt = '{"employees":[' +
                            '{"firstName":"John","lastName":"Doe" },' +
                            '{"firstName":"Anna","lastName":"Smith" },' +
                            '{"firstName":"Peter","lastName":"Jones" }]}';
                obj = JSON.parse(txt);

                $('#fname').html(obj.employees[1].firstName);
                $('#lname').html(obj.employees[1].lastName);
            });            
        </script>

    </body>
</html>
