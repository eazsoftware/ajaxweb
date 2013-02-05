<%-- 
    Document   : jSON-twitter-usertimeline
    Created on : 03-Feb-2013, 01:40:48
    Author     : javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jSON - twitter - user timeline</title> 
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script type="text/javascript">
            if (typeof jQuery == 'undefined') {
                document.write(unescape("%3Cscript src='../script/jquery-1.9.0.js' type='text/javascript'%3E%3C/script%3E"));
            }        
        </script>         
    </head>
    <body>
        <h1><title>jSON - twitter - get user timeline tweets<</title></h1>
        <p>Returns the 20 most recent statuses posted by the authenticating user. It is also possible to request another user's timeline by using the screen_name or user_id parameter. </p>
        <p>Helpful links</p>
        <ul>
            <li><a href="https://dev.twitter.com/docs/api/1/get/statuses/user_timeline">GET statuses/user_timeline</a></li>
            <li><a href="http://stackoverflow.com/questions/5299674/accessing-json-service-from-localhost-or-file">Accessing JSON service from localhost or file:// || same-origin policy restriction</a></li>            
            <li><a href="https://en.wikipedia.org/wiki/Same_origin_policy">Same-origin policy restriction</a></li>            
            <li><a href="https://en.wikipedia.org/wiki/JSONP">JSONP or "JSON with padding</a></li>    
            <li><a href="http://jsfiddle.net/nogoodatcoding/reJN6/4/">Accessing Twitter json-service-from-localhost</a></li>             
            <li><a href="http://www.zqna.net/qna/rmsim-getjson-timeout-handling.html">getJSON timeout handling</a></li>
            <li><a href="http://stackoverflow.com/questions/8138021/best-way-to-check-if-ajax-request-was-successful-in-jquery">Best way to check if AJAX request was successful in jQuery</a></li>
        </ul>

        <div class="container">
            <header>
                <h1>User Timeline tweets</h1>
            </header>
            <section id="fetch">
                <input type="text" placeholder="Enter username" id="username" />
                <button id="search">Get tweets</button>
            </section>
            <section id="tweetlist">
            </section>
        </div>

        <div class="container2">
            <header>
                <h1>User Timeline tweets (JSONP)</h1>
            </header>
            <section id="fetch2">
                <input type="text" placeholder="Enter username" id="username2" />
                <button id="search2">Get tweets</button>
            </section>
            <section id="tweetlist2">
            </section>
        </div>        
   
    <script>        
        $(document).ready(function() {
            
            var getTweets = function() {                
                var username = $('#username').val();                
                if(username == ''){                    
                    $('#tweetlist').html("<h4>Please enter a valid Twitter username.</h4>");                    
                } else {      
                    $('#tweetlist').html("<h4 class='loading'>The query has been submited!</h4><p><img src='../img/ajax_loading.gif' alt='loading...' /> </p>");
                    $('#tweetlist').append('<h4>Check console log !!!</h2>You should find something like that: <p>XMLHttpRequest cannot load https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name='+username+'&count=2. Origin http://localhost:8084 is not allowed by Access-Control-Allow-Origin.</p>Due to Same-origin policy restriction, check second form below<p></p>');                    
                    
                    $.getJSON("https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name="+username+"&count=2", 
                        function(json) {
                            console.log(json);
                        });
                }
                return false;
            }          

            $('#search').click(getTweets);

            $('#username').keyup(function(event){
                if(event.keyCode == 13) { //13 ==> ENTER
                    getTweets();
                }
            });

            ///////////////////////////////////////////////////////////////////
            /* //Another way to do that but using $.getJSON AJAX wrapping (but the error is not implemented)
            var getTweets2 = function() {                
                var username = $('#username2').val();                
                if(username == ''){                    
                    $('#tweetlist2').html("<h4>Please enter a valid Twitter username.</h4>");                    
                } else {      
                    $('#tweetlist2').html("<h4 class='loading'>The query has been submited!</h4><p><img src='../img/ajax_loading.gif' alt='loading...' /> </p>");   
                    var p = $.getJSON("https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name="+username+"&count=2&callback=?",
                        {},
                        function (data) {
                            $('#tweetlist2').html("");
                            if(data){
                                console.log(data);
                                $.each(data, function(index, el) {
                                    $('#tweetlist2').append('<span>' + el.text + '</span><br />');
                                });
                            }
                            else {
                                $('#tweetlist2').append('<span>No tweets found for <b>' + username + '</b></span><br />');
                            }
                        });
                        

                    setTimeout( function(){ 
                                    p.abort(); 
                                    $('#tweetlist2').html.('<span>Sorry! no tweets found for <b>' + username + '</b></span><br />');
                                }, 
                                5000);                        
                        
                }
                return false;
            }  
            */
            //Another way to do that but without the $.getJSON AJAX wrapping
            var getTweets2 = function() { 
                var username = $('#username2').val();                
                if(username == ''){                    
                    $('#tweetlist2').html("<h4>Please enter a valid Twitter username.</h4>");                    
                } else {      
                    $('#tweetlist2').html("<h4 class='loading'>The query has been submited!</h4><p><img src='../img/ajax_loading.gif' alt='loading...' /> </p>");   
                    $.ajax({
                        url: "https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name="+username+"&count=5&callback=?",
                        dataType: 'json',
                        success: function (data) {
                                    $('#tweetlist2').html("");
                                    if(data){
                                        console.log(data);
                                        $.each(data, function(index, el) {
                                            $('#tweetlist2').append('<span>' + el.text + '</span><br />');
                                        });
                                    }
                                    else {
                                        $('#tweetlist2').append('<span>No tweets found for <b>' + username + '</b></span><br />');
                                    }
                                },
                         error: function(xhr, status, error) {
                            $('#tweetlist2').html('<span>No tweets found for <b>' + username + '</b></span><br />');
                         },
                        timeout: 3000 //3 second timeout
                    });
                }
                return false;
            }
            
            $('#search2').click(getTweets2);
            
            $('#username2').keyup(function(event){
                if(event.keyCode == 13) { //13 ==> ENTER
                    getTweets2();
                }
            });            

        });        
        
    </script>

    </body>
</html>
