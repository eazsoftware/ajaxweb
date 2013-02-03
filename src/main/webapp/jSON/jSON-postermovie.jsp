<%-- 
    Document   : jSON-postermovie
    Created on : 02-Feb-2013, 22:21:35
    Author     : javier
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jSON - poster movie search using public API</title>
        <!-- Google Hosted Libraries -->
        <!-- https://developers.google.com/speed/libraries/?hl=es -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    </head>
    <body>
        <h1>jSON - poster movie search using public API</h1>
        <p>A responsive movie poster grabber.</p>
        <p>Useful links</p>
        <ul>
            <li><a href="http://coding.smashingmagazine.com/2012/02/09/beginners-guide-jquery-based-json-api-clients/">A Beginner's Guide To jQuery-Based JSON API Clients</a></li>
        </ul>

        <div class="container">
            <header>
                <h1>Front Row</h1>
            </header>
            <section id="fetch">
                <input type="text" placeholder="Enter a movie title" id="term" />
                <button id="search">Find me a poster</button>
            </section>
            <section id="poster">
            </section>
        </div>

    </body>
    
    <script>        
        $(document).ready(function(){            
            $('#term').focus(function(){
                var full = $("#poster").has("img").length ? true : false;
                if(full == false){
                    $('#poster').empty();
                }
            });
            
            var getPoster = function(){                
                var film = $('#term').val();                
                if(film == ''){                    
                    $('#poster').html("<h2 class='loading'>Ha! We haven't forgotten to validate the form! Please enter something.</h2>");                    
                } else {                    
                    $('#poster').html("<h2 class='loading'>Your poster is on its way!</h2><p><img src='../img/ajax_loading.gif' alt='loading...' /> </p>");                    
                    $.getJSON("http://api.themoviedb.org/2.1/Movie.search/en/json/23afca60ebf72f8d88cdcae2c4f31866/" + film + "?callback=?", 
                        function(json) {
                            if (json != "Nothing found."){
                                $('#poster').html('<h2 class="loading">Well, we found you a poster:</h2><img id="thePoster" src=' + json[0].posters[0].image.url + ' />');
                            } else {
                                $.getJSON("http://api.themoviedb.org/2.1/Movie.search/en/json/23afca60ebf72f8d88cdcae2c4f31866/goonies?callback=?", 
                                    function(json) {
                                        console.log(json);
                                        $('#poster').html('<h2 class="loading">We are afraid nothing was found for that search. Perhaps you were looking for The Goonies?</h2><img id="thePoster" src=' + json[0].posters[0].image.url + ' />');
                                    });
                            }
                    });
                }
                return false;
            }

            $('#search').click(getPoster);

            $('#term').keyup(function(event){
                if(event.keyCode == 13) { //13 ==> ENTER
                    getPoster();
                }
            });

        });        
        
    </script>
    
</html>
