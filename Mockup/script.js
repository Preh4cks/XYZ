$(document).ready(() => {
    // Burger Clicked
    $('#burger_button').click(() => {
        if (!($('.clicked')[0])) {
            $('nav').addClass('clicked');
        } else {
            $('.clicked').removeClass('clicked');
        }

        toggleElements();
    });

    // On Screen Resize, Toggle Navbar Elements
    $(window).on("resize", (event) => {
        toggleElements();
    });

    // On Dropdown Click, Drop the FAQ's Answer
    $(".dropdown > h3").click((e) => {
        // If already clicked
        let span_text = $(e.target).children("span").text();
        if (span_text == "⌄") {
            $(e.target).siblings("p").slideToggle();
            $(".dropdown > h3").children("span").text("⌃");
            return;
        }

        // Reset All
        $(".dropdown > h3").siblings("p").hide();
        $(".dropdown > h3").children("span").text("⌃");
        
        $(e.target).siblings("p").slideToggle();
        $(e.target).children("span").text("⌄");
    });
});

function toggleElements() {
    if($(window).width() <= 768 && !($('.clicked')[0])) {
        $('.cta_holder > p, .cta_holder > img').show()
        $('.gradient_background, section, .section_2').show();
    } else if($(window).width() <= 768 && $('.clicked')[0]) {
        $('.gradient_background, section, .section_2').hide();
        $('.clicked').show();
        $('.cta_holder > p, .cta_holder > img').hide()
    } else if($(window).width() >= 768 && $('.clicked')[0]) {
        $('.clicked').removeClass('clicked');
        $('.gradient_background, section, .section_2').show();
        $('.cta_holder > p, .cta_holder > img').show()
    }
}

