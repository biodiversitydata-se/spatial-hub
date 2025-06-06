/* Make commonui-bs3-2019/js/application.js compatible with spatial-hub */

function adjustMapHeight() {
    var headerHeight = 0;
    var navbar = $('#wrapper-navbar')[0];
    if (navbar) {
        headerHeight = getComputedStyle(navbar).height.replace("px", "").replace("auto", "0");
    }
    $("#map").height($(window).height() - headerHeight);
    if ($('#spMenu')[0]) {
        $("#defaultPanel").height($(window).height() - headerHeight - 20 - getComputedStyle($('#spMenu')[0]).height.replace("px", "").replace("auto", "0"));
    }
}

$(function () {
    $(window).resize(function () {
        adjustMapHeight();
    });
    setTimeout(adjustMapHeight, 10);
})