$(document).on('change', '.swphabtqdn', function() {
    var table = $(this).val();
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/show-columns-from-table",
        data: "_token=" + token + "&" +"table=" + table,
        context: this,
        success: function(data) {
            $("#columns").html(data);
            $(".iaoajlwcjk").trigger("click");
        }
    });
    return false;
});
$(document).on('click', '.qvlpkczjnz', function() {
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/export-excel",
        data: "_token=" + token + "&" +$('#exportForm').serialize(),
        context: this,
        success: function(data) {
            
        }
    });
    return false;
});
$(".iaoajlwcjk").change(function () {
    $(".anpfevkffg:checkbox").prop('checked', $(this).prop("checked"));
});