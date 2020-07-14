$(document).ready(function(){

    // owlcarousel2
    $(".thumbnails").owlCarousel({
        loop: true,
        margin: 10,
        //nav: true,
        //navText: ["&laquo; Previous", "Next &raquo;"],
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            480: {
                items: 3
            },
            768: {
                items: 4
            }
        }
    });

    var owl = $('.owl-carousel');
    owl.owlCarousel();

    $('#btn-news-prev').on("click", function(){
        owl.trigger('prev.owl.carousel');
    });

    $('#btn-news-next').on("click", function(){
        owl.trigger('next.owl.carousel');
    });

});