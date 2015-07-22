$(function() {
    $("#close").click(function() {
        // $(".nav-list-container").css("display", "block");
        // TODO animate the transition when adding the opened class!!!!
        $(".nav-list-container").toggleClass("opened");
    });
});

