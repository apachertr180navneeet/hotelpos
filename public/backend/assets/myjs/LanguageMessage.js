$(document).on('blur', '.hazqbjoovn', function() {
    var id = $(this).attr("data-id");
    var column = $(this).attr("data-column");
    var word = $(this).val();
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/save-language-message",
        data: "word=" + word+"&column=" + column+"&id=" + id+"&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                toast("success", "Data has been successfully Updated/Inserted");
            } else {
                toast("error", json.message);
            }
        }
    });
});