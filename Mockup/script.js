
$(document).ready(() => {
    // On Screen Resize, Toggle Navbar Elements

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

