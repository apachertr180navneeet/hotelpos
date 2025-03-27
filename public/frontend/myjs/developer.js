function swal(type, heading, message) {
    Swal.fire({
        title: heading,
        html: message,
        icon: type
    });
}
$(document).on('click', '.dynamicSubmitButton', function() {
    var context = $(this);
    var html = $(this).html();
    $(context).html("Submitting...");
    for (instance in CKEDITOR.instances) {
        CKEDITOR.instances[instance].updateElement();
    }
    var error = false;
    $(this).parent().parent().parent().find(".frontendDynamicForm").find("input,select").each(function() {
        var attr = $(this).attr('required');
        if (typeof attr !== 'undefined' && attr !== false) {
            if ($.trim($(this).val()) == "" || $(this).val() == "Please Select") {
                $(this).css("border", "1px solid tomato");
                error = true;
            } else {
                $(this).css("border", "1px solid #ced4da");
            }
        }
    });
    if (error == true) {
        $(context).html(html);
        swal("error", "Error", "Please fill all the required fields");
        return false;
    }
    var formData = new FormData();
    var other_data = $(this).parent().parent().parent().find(".frontendDynamicForm").serializeArray();
    var fileName = $(this).parent().parent().parent().find(".frontendDynamicForm").find('input[type="file"]');
    if(fileName.length > 0){
        var file_data = $(this).parent().parent().parent().find(".frontendDynamicForm").find('input[type="file"]')[0].files;
    var i = 0;
    $.each(fileName, function() {
        formData.append($(this).attr("name"), file_data[i]);
        i++;
    });
    }
    
    $.each(other_data, function(key, input) {
        formData.append(input.name, input.value);
    });
    formData.append("_token", token);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/frontend/submit-dynamic-data",
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                swal("success", "Success", json.message);
                setTimeout(function() {
                   window.location.replace(baseUrl + "/" + json.reffer);
                }, 300);
            } else {
                $(context).html(html);
                swal("error", "Error", json.message);
            }
        },
        error: function(data) {
            var json = $.parseJSON(data);
            $(context).html(html);
            swal("error", "Error", json.message);
        }
    });
});