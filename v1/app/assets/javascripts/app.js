//= require jquery3
//= require jquery_ujs
//= require_tree .

class InitListeners {
    constructor() {
        this.#initBurgerClick();
        this.#initOnScreenResize();
        this.#initDropdownClick();
    }

    /** DOCU: Set Click Listener for Burger Button */
    #initBurgerClick() {
        if($('#burger_button')) {
            $('#burger_button').click(() => {
                if (!($('.clicked')[0])) {
                    $('nav').addClass('clicked');
                } else {
                    $('.clicked').removeClass('clicked');
                }
    
                this.#toggleElements();
            });
        }
    }
    
    /** DOCU: Set Click Resize Listener for window */
    #initOnScreenResize() {
        $(window).on("resize", (event) => {
            this.#toggleElements();
        });
    }

    /** DOCU: Set Click Listener for DropdownMenu */
    #initDropdownClick() {
        if($(".dropdown > h3")) {
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
        }
    }

    /** DOCU: Set Click Listener for Burger Button */
    #toggleElements() {
        if($(window).width() <= 768 && !($('.clicked')[0])) {
            $('.cta_holder > p, .cta_holder > img').show()
            $('.gradient_background, section, .section_2, footer').show();
        } else if($(window).width() <= 768 && $('.clicked')[0]) {
            $('.gradient_background, section, .section_2, footer').hide();
            $('.clicked').show();
            $('.cta_holder > p, .cta_holder > img').hide()
        } else if($(window).width() >= 768 && $('.clicked')[0]) {
            $('.clicked').removeClass('clicked');
            $('.gradient_background, section, .section_2, footer').show();
            $('.cta_holder > p, .cta_holder > img').show()
        }
    }
}

$(document).ready(function() {
    const init_listeners = new InitListeners;
});
