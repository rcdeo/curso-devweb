<?php include_once("head.php"); ?>

    <link rel="stylesheet" href="lib/owl-carousel2/assets/owl.carousel.min.css"> <!-- owlcarousel2 -->
    <link rel="stylesheet" href="lib/plyr/plyr.css">

<?php include_once("header.php"); ?>


<section>

    <div id="call-to-action" style="margin-top: 40px;">
        <div class="container">

            <div class="row text-center">
                <h2>Videos</h2>
                <hr>
            </div>

            <div class="row">

                <div class="player">
                    <video src="video/highlights.mp4" controls poster="images/highlights.jpg">
                        <track kind="subtitles" label="Português (Brasil)" src="video/vtt/legendas.vtt" srclang="pt-br" default>
                    </video>
                </div>

                <!-- <input type="range" id="volume" min="0" max="1" step="0.01" value="1"> -->
                <br>
                <button type="button" id="btn-play-pause" class="btn btn-success">PLAY</button>

            </div>

        </div>
    </div><!-- call-to-action -->

    <div id="news" class="container" style="top: 0;">

        <!-- <div class="row text-center">
                <h2>Latest News</h2>
                <hr>
            </div> -->

        <div class="row thumbnails owl-carousel owl-theme">
            <div class="item" data-video="highlights">
                <div class="item-inner">
                    <img src="images/highlights.jpg" alt="Noticia">
                    <h3>Highlights</h3>
                </div>
            </div>

            <div class="item" data-video="Orlando_City_Foundation_2015">
                <div class="item-inner">
                    <img src="images/Orlando_City_Foundation_2015.jpg" alt="Noticia">
                    <h3>Orlando City Foundation 2015</h3>
                </div>
            </div>

            <div class="item" data-video="highlights">
                <div class="item-inner">
                    <img src="images/highlights.jpg" alt="Noticia">
                    <h3>Highlights</h3>
                </div>
            </div>

            <div class="item" data-video="Orlando_City_Foundation_2015">
                <div class="item-inner">
                    <img src="images/Orlando_City_Foundation_2015.jpg" alt="Noticia">
                    <h3>Orlando City Foundation 2015</h3>
                </div>
            </div>
        </div>

    </div><!-- news -->

</section>

<?php include_once("footer.php"); ?>

<script src="lib/owl-carousel2/owl.carousel.min.js"></script> <!-- owlcarousel2 -->
<script src="lib/plyr/plyr.js"></script>
<script src="js/orlando-carousel2.js"></script>

<script>
    (function(d, p) {
        var a = new XMLHttpRequest(),
            b = d.body;
        a.open("GET", p, true);
        a.send();
        a.onload = function() {
            var c = d.createElement("div");
            c.style.display = "none";
            c.innerHTML = a.responseText;
            b.insertBefore(c, b.childNodes[0]);
        }
    })(document, "lib/plyr/sprite.svg");
</script>

<script>
    $(function() {

        $(".thumbnails .item").on("click", function() {
            $("video").attr({
                "src": "video/" + $(this).data('video') + ".mp4",
                "poster": "images/" + $(this).data('video') + ".jpg"
            });
        });

        $("#volume").on("change", function() {
            $("video")[0].volume = parseFloat($(this).val());
        });

        $("#btn-play-pause").on("click", function() {

            var video = $("video")[0];

            if ($(this).hasClass("btn-success")) {
                $(this).text("STOP");
                video.play();
            } else {
                $(this).text("PLAY");
                video.pause();
            }

            $(this).toggleClass("btn-success btn-danger");
        });

        plyr.setup(); //Disparando Player PLYR

    });
</script>