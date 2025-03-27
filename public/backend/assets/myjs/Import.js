$(document).ready(function(e) {
    $('#importForm').on('submit', (function(e) {
        for (instance in CKEDITOR.instances) {
            CKEDITOR.instances[instance].updateElement();
        }
        var buttonHtml = $('.wugugpchjn').html();
        var error = false;
        $(".requiredField").each(function() {
            if (jQuery.trim(jQuery(this).val()) == "" || jQuery(this).val() == "Please Select") {
                jQuery(this).css("border", "1px solid tomato");
                error = true;
            } else {
                jQuery(this).css("border", "1px solid #bd793c2e");
            }
        });
        e.preventDefault();
        if (error == true) {
            toast("error", "Please fill all the required fields");
            return false;
        }
        if (error == false) {
            $('.wugugpchjn').html('<i class="fa fa-spinner fa-spin"></i>');
            var formData = new FormData(this);
            $.ajax({
                type: 'POST',
                url: baseUrl + "/admin/import-excel-file",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                context: this,
                success: function(data) {
                    $(".xvbndliemd").html(data);
                    $(".wugugpchjn").html(buttonHtml);
                },
                error: function(data) {
                    $('.wugugpchjn').html(buttonHtml);
                }
            });
        }
        return false;
    }));
});
$(document).on('click', '.litfprctkn', function() {
    var sheet = $(".clyddgcpuj").attr("data-sheet");
    var file = $(".clyddgcpuj").attr("data-file");
    var buttonHtml = $('.litfprctkn').html();
    $('.litfprctkn').html('<i class="fa fa-spinner fa-spin"></i>');
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/import-excel-file-in-database",
        data: "sheetName="+sheet+"&file="+file+"&_token="+token,
        success: function(data) {
            $(".litfprctkn").html(buttonHtml);
            var json = $.parseJSON(data);
            if (json.status == "success") {
                toast("success", "Excel Imported Successfully.");
            } else {
                toast("error", "There is some error during importing.");
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.rfyemuxbrk', function() {
    var sheet = $(this).attr("data-sheet");
    var file = $(this).attr("data-file");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/showExcelSheetData",
        data: "sheetName="+sheet+"&file="+file+"&_token="+token,
        success: function(data) {
            $(".odsofgvpfb").html(data);
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.rfyemuxbrk', function() {
    $(".rfyemuxbrk").removeClass("clyddgcpuj");
    $(this).addClass("clyddgcpuj");
});
