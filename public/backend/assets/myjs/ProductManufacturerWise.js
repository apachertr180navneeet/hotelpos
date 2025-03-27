$(document).on('change', '.vappuwtwjw', function() {
    var manufacturerId = $(this).val();
    var context = $(this);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/report/get-product-by-manufacturerId",
        data: "manufacturerId=" + manufacturerId + "&_token=" + token,
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
$(document).ready(function() {
    $(".wiqhdfjfku").html($(".hvyqqldbgk").html());
    $(".jnojpwjgxh").html($(".njwarfliod").html());
    $(".klgfuxxjkj").html($(".duyckrlobm").html());
});
