$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});

$("#switch-active").click(function(e) {
    e.preventDefault();
    $("#switch-menu").toggleClass("toggled");
});