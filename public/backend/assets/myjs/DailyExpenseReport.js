$(document).on('click', '.nojuthjetd', function() {
    var dateStart = $(".gcgwipsabu").val();
    var dateEnd = $(".kzjpacwecl").val();
    var html = $(this).html();
    var context = $(this);
    $(this).html("Please Wait...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/report/set-dates",
        data: "dateStart=" + dateStart + "&dateEnd=" + dateEnd + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                location.reload();
            } else {
                $(".bcmnykfmio").html("");
                $(".bcmnykfmio").hide();
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.unrogfozao', function() {
    var html = $(this).html();
    var context = $(this);
    $(this).html("Please Wait...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/report/clear-filters",
        data: "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                location.reload();
            } else {
                $(".bcmnykfmio").html("");
                $(".bcmnykfmio").hide();
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});