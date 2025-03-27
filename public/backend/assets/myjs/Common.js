function toast(type, heading, message) {
    $.toast({
        heading: heading,
        position: 'bottom-right',
        loaderBg: '#ff6849',
        text: message,
        showHideTransition: 'slide',
        icon: type.toLowerCase(),
        hideAfter: 5500,
    })
}
function swal(type, heading, message) {
    Swal.fire({
      title: heading,
      html: message,
      icon: type
    });
}
function login() {
    var buttonHtml = $('.kecdzifvtb').html();
    $('.kecdzifvtb').html('<i class="fa fa-spinner fa-spin"></i>');
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/verify-login",
        data: "_token=" + token + "&" + $('#loginForm').serialize(),
        context: this,
        success: function(data) {
            console.log(data);
            
            var json = $.parseJSON(data);
           
            if (json.status == "success") {
                toast("success", json.message);
                $('.kecdzifvtb').html(buttonHtml);
                setTimeout(function() {
                    window.location.replace(baseUrl + "/admin/")
                }, 500);
            } else {
                toast("Error", json.message);
                $('.kecdzifvtb').html(buttonHtml);
            }
        }
    });
    return false;
}
$('.isFloat').on('keyup', function() {
        var value = $(this).val();

        // Regular expression to match valid float numbers
        var validFloat = /^-?\d*(\.\d*)?$/;

        if (!validFloat.test(value)) {
            // Remove the last character if it's not part of a valid float
            $(this).val(value.slice(0, -1));
        }
    });
$(document).on('click', '.kecdzifvtb', function() {
    login();
    return false;
});
$(document).on('click', '.xpqlbyjsye', function() {
    registerAccount();
    return false;
});
$(document).on('keypress keyup blur', '.is_natural', function() {
    $(this).val($(this).val().replace(/[^\d].+/, ""));
    if ((event.which < 48 || event.which > 57)) {
        event.preventDefault();
    }
});
$(document).on('keyup', '.requiredField', function() {
    if ($.trim($(this).val()) == "") {
        $(this).css("border", "1px solid tomato");
    } else {
        $(this).css("border", "1px solid #e5e5e5");
    }
});
$(document).on('change', '.swphabtqdn', function() {
    var table = $(this).val();
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/show-columns-from-table",
        data: "_token=" + token + "&" +"table=" + table,
        context: this,
        success: function(data) {
            $("#columns").html(data);
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

/*$("#manualForm input").each(function( index ) {
    var name = $(this).attr("name");
    if(name.indexOf('_validation') != -1){
        var validation = name;
        var value = $("input[name="+validation+"]").val();
        if(value.indexOf('max:') != -1){
            var result = value.split('|');
            var i;
            for (i = 0; i < result.length; ++i) {
                name =  name.replace("_validation", "");
                if(result[i].indexOf('max:') != -1){
                    var result2 = result[i].split(':');
                    $("input[name="+name+"]").attr("max",result2[1]);
                }
                if(result[i].indexOf('min:') != -1){
                    var result2 = result[i].split(':');
                    $("input[name="+name+"]").attr("min",result2[1]);
                }
            }
        }
    }
});*/