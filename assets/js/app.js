$(function() {
    
    var header = $("#header"), 
        introH = $("#intro").innerHeight(),
        scrollOffset = $(window).scrollTop();
    
    
    /* fixed header */
    checkScroll(scrollOffset);
    
    $(window).on("scroll", function() {
        
        scrollOffset = $(this).scrollTop();
        
        checkScroll(scrollOffset);
        
    });
    
    function checkScroll(scrollOffset) {
        if( scrollOffset >= introH ) {
            header.addClass("fixed");
        } else {
            header.removeClass("fixed");
        }
    }
    
    
    /* smooth scroll*/
    $("[data-scroll]").on("click", function(event) {
        event.preventDefault();
        
        var $this = $(this),  
        blockId = $(this).data('scroll'),
            blockOffset = $(blockId).offset().top;
        
        
        $("#nav a").removeClass("active");
        $this.addClass("active");
        
        
        $("html, body").animate({
            scrollTop: blockOffset
        }, 500);
        
        $("[data-scroll]").on("click", function(event) {
            $("#nav").removeClass("active");
        });
    });
    
    
    /*Menu nav toggle*/
    $("#nav_toggle").on("click", function(event) {
        event.preventDefault();
        
        header.removeClass("fixed");
    
        
        $(this).toggleClass("active");
        $("#nav").toggleClass("active");
        header.addClass("fixed");
    });
    
    
    
    
    
    
    
    
    
});


