function drawChart() {
    var a = new google.visualization.DataTable;
    a.addColumn("string", "Topping"), a.addColumn("number", "Slices"), a.addRows([
        ["Mushrooms", 3],
        ["Onions", 1],
        ["Olives", 1],
        ["Zucchini", 1],
        ["Pepperoni", 2]
    ]), new google.visualization.PieChart(document.getElementById("chart_div")).draw(a, {
        title: "Costing Tax And Profit",
        width: 1200,
        height: 500
    })
}
google.charts.load("current", {
    packages: ["corechart"]
}), google.charts.setOnLoadCallback(drawChart);
$(document).on('keyup', '.pnaekqlgpu', function() {
    var search = $(this).val();
    $(".bcmnykfmio").html("");
    $(".bcmnykfmio").hide();
    if (search == "") {
        $(".bcmnykfmio").html("");
        $(".bcmnykfmio").hide();
        return false;
    } else {
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/report/get-products",
            data: "search=" + search + "&_token=" + token,
            success: function(data) {
                $(".bcmnykfmio").html(data);
                $(".bcmnykfmio").show();
            },
            error: function(data) {}
        });
        return false;
    }
});
$(document).on('click', '.jpcljhzbiw', function() {
    var productId = $(this).attr("data-id");
    var html = $(this).html();
    var context = $(this);
    $(this).html("Please Wait Adding....");
    $(this).css("background", "#edffed");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/report/add-product",
        data: "productId=" + productId + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                /*$(".urahyuwwmn").load(location.href + " .urahyuwwmn", function() {
                    $(".bcmnykfmio").html("");
                    $(".bcmnykfmio").hide();
                    $(".pnaekqlgpu").val("");
                });*/
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
$(document).on('click', '.nojuthjetd', function() {
    var dateStart = $(".gcgwipsabu").val();
    var dateEnd = $(".kzjpacwecl").val();
    var category = $(".vappuwtwjw").val();
    var html = $(this).html();
    var context = $(this);
    $(this).html("Please Wait...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/report/set-dates",
        data: "dateStart=" + dateStart + "&dateEnd=" + dateEnd + "&category=" + category + "&_token=" + token,
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
