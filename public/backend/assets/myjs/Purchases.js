$(document).ready(function() {
    var count = 3;
    var col = "";
    for (i = 0; i < count - 1; i++) {
        col += i + ",";
    }
    col = col.slice(0, -1);
    $('.customDataTable').DataTable({
        "processing": true,
        "language": {
            "processing": '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i>'
        },
        "serverSide": true,
        "bSortable": true,
        "dom": 'lBfrtip',
        "responsive": true,
        buttons: [{
            extend: 'copy',
            footer: false,
            exportOptions: {
                columns: [col]
            }
        }, ],
        "ajax": {
            url: baseUrl + "/admin/purchase/data-table-purchase",
            type: "POST",
            data: function(d) {
                d.table = table;
                d.column = columnName;
                d.method = method;
                d._token = token;
            }
        },
        "columnDefs": [{
            "orderable": false,
            "targets": [2 - 1]
        }],
        "order": [
            [0, 'desc']
        ],
        language: {
            search: "",
            searchPlaceholder: "Search..."
        },
        "bInfo": true,
        oLanguage: {
            sLengthMenu: "_MENU_",
        },
        "iDisplayLength": 25
    });
});
$("#jopaeuejjl").change(function() {
    $(".jopaeuejjl:checkbox").prop('checked', $(this).prop("checked"));
});
$("#lieiqszqds").change(function() {
    $(".lieiqszqds:checkbox").prop('checked', $(this).prop("checked"));
});
$(".nguqctmbsv").change(function() {
    var id = $(this).attr("data-id");
    $(".ghyytahimt" + id + ":checkbox").prop('checked', $(this).prop("checked"));
});
$(".ptqqeljoxe").change(function() {
    var id = $(this).attr("data-id");
    $(".tqtlinsrvm" + id + ":checkbox").prop('checked', $(this).prop("checked"));
});
$(document).on('click', '.cuegvkzkbo', function() {
    $("#addProductModal").modal("show");
});
$(document).on('click', '.ozienuudzq', function() {
    $("#addProductModal").modal("hide");
});
$(document).on('keyup', '.grzpapgjhr', function() {
    var value = $(this).val();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-category-pos",
        data: "categoryId=" + categoryId + "&_token=" + token,
        success: function(data) {},
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.dynamicSubmitButton', function() {
    var context = $(this);
    var html = $(this).html();
    var modalId = $(this).closest(".modal").attr("id");
    $(context).html("Submitting...");
    var error = false;
    $(this).parent().parent().parent().parent().find(".frontendDynamicForm").find("input,select").each(function() {
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
        toast("error", "Please fill all the required fields");
        return false;
    }
    var formData = new FormData();
    var other_data = $(this).parent().parent().parent().parent().find(".frontendDynamicForm").serializeArray();
    var fileName = $(this).parent().parent().parent().parent().find(".frontendDynamicForm").find('input[type="file"]');
    if (fileName.length > 0) {
        var file_data = $(this).parent().parent().parent().parent().find(".frontendDynamicForm").find('input[type="file"]')[0].files;
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
    formData.append("from", "purchase");
    $(this).prop('disabled', true);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/submitDynamicData",
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                toast("success", "Data added successfully");
                $("#" + modalId).modal("hide");
                $(context).prop('disabled', false);
            } else {
                $(context).html(html);
                toast("error", json.message);
            }
        },
        error: function(data) {
            var json = $.parseJSON(data);
            $(context).html(html);
            toast("error", json.message);
        }
    });
});
$(document).ready(function(e) {
    $('#purchaseForm').on('submit', (function(e) {
        var buttonHtml = $('.wugugpchjn').html();
        var error = false;
        $("#purchaseForm .requiredField").each(function() {
            if ($.trim($(this).val()) == "" || $(this).val() == "Please Select") {
                $(this).css("border", "1px solid tomato");
                error = true;
            } else {
                $(this).css("border", "1px solid #ced4da");
            }
        });
        e.preventDefault();
        if (error == true) {
            toast("error", "Please fill all the required fields");
            return false;
        }
        if (error == false) {
            $('.wugugpchjn').html('<i class="fa fa-spinner fa-spin"></i>');
            $('.wugugpchjn').prop('disabled', true);
            var formData = new FormData(this);
            $.ajax({
                type: 'POST',
                url: baseUrl + "/admin/purchase/submit-purchase",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                context: this,
                 success: function(data) {
                    var json = $.parseJSON(data);
                    if (json.status == "success") {
                        $('.wugugpchjn').html(buttonHtml);
                        toast("success", "Data has been successfully Updated/Inserted");
                        setTimeout(function() {
                            window.location.replace(baseUrl + "/admin/purchases");
                            $('.wugugpchjn').prop('disabled', false);
                        }, 300);
                    } else {
                        swal("error", "Error",json.message);
                        //$(".swal-title").after('<div class="swal-text" style="">' + json.message + '</div>');
                        $('.wugugpchjn').html(buttonHtml);
                        $('.wugugpchjn').prop('disabled', false);
                    }
                },
                error: function(data) {
                    var json = $.parseJSON(data);
                    swal("Error", "", "error");
                    $(".swal-title").after('<div class="swal-text" style="">' + json.message + '</div>');
                    
                    $('.wugugpchjn').html(buttonHtml);
                    $('.wugugpchjn').prop('disabled', false);
                }
            });
        }
        return false;
    }));
});
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
            url: baseUrl + "/admin/purchase/get-products",
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
        url: baseUrl + "/admin/purchase/add-to-purchase",
        data: "productId=" + productId + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".urahyuwwmn").load(location.href + " .urahyuwwmn", function() {
                    $(".bcmnykfmio").html("");
                    $(".bcmnykfmio").hide();
                    $(".pnaekqlgpu").val("");
                    //toast("success", json.message);
                    purchaseTotal();
                });
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
$(document).on('click', '.ulknpowlqk', function() {
    var productId = $(this).attr("data-id");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/purchase/delete-product-from-purchase",
        data: "productId=" + productId + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".urahyuwwmn").load(location.href + " .urahyuwwmn", function() {
                    $(".bcmnykfmio").html("");
                    $(".bcmnykfmio").hide();
                    //toast("success", json.message);
                    purchaseTotal();
                });
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
$(document).on('click', '.grunmikftv', function() {
    var formData = new FormData();
    formData.append("_token", token);
    var error = 0;
    $(".sjhnfqntvl").each(function() {
        if ($.trim($(this).val()) == "" && $(this).attr('name')!='barcode') {
            $(this).css("border", "1px solid red");
            error = 1;
        } else {
            formData.append($(this).attr('name'), $(this).val());
        }
    });
    if (error == 1) {
        toast("error", "Please fill all the required fields");
    } else {
        var context = $(this);
        var html = $(this).html();
        $(this).html("Please wait...");
        $(context).prop('disabled', true);
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/purchase/quick-add-product",
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            context: this,
            success: function(data) {
                var json = $.parseJSON(data);
                if (json.status == "success") {
                    $(".urahyuwwmn").load(location.href + " .urahyuwwmn", function() {
                        $(context).html(html);
                        toast("success", "Product added successfully");
                        $(context).prop('disabled', false);
                        $(".sjhnfqntvl").val("");
                        purchaseTotal();
                    });
                } else {
                    $(context).html(html);
                    toast("error", json.message);
                    $(context).prop('disabled', false);
                }
            },
            error: function(data) {
                var json = $.parseJSON(data);
                $(context).html(html);
                toast("error", json.message);
                $(context).prop('disabled', false);
            }
        });
    }
});
$(document).on('keyup', '.cdyedrdrhq', function() {
    var percent = $(".zrdibunyig").val();
    if(percent == ""){
        return false;
    }
    var cost = $(".cdyedrdrhq").val();
    if(cost == ""){
        cost = 1;
        $(this).val(1);
    }
    var price = $(".nkahvzltsh").val();
    
    var percentCal = parseFloat(cost)+(parseFloat(cost)/100)*parseFloat(percent);
    $(".nkahvzltsh").val(percentCal);
    
});
$(document).on('keyup', '.zrdibunyig', function() {
    var cost = $(".cdyedrdrhq").val();
    if(cost == ""){
        return false;
    }
    var price = $(".nkahvzltsh").val();
    var percent = $(this).val();
    if(percent == ""){
        percent = 0;
        $(this).val(0);
    }
    var percentCal = parseFloat(cost)+(parseFloat(cost)/100)*parseFloat(percent);
    $(".nkahvzltsh").val(percentCal);
    
});
$(document).on('keyup', '.nkahvzltsh', function() {
    var cost = $(".cdyedrdrhq").val();
    var percent = $(".zrdibunyig").val();
    var price = $(this).val();
    if(price == ""){
        price = 1;
    }
    var percentCal = ((parseFloat(price)-parseFloat(cost))/parseFloat(cost))*100;
    $(".zrdibunyig").val(percentCal.toFixed(2));
});
$(document).on('keyup', '.sjhnfqntvl', function() {
    if ($.trim($(this).val()) != "") {
        $(this).css("border", "1px solid #ced4da");
    }
});
$(document).on('change', '.sjhnfqntvl', function() {
    if ($.trim($(this).val()) != "") {
        $(this).css("border", "1px solid #ced4da");
    }
});
$(document).on('keypress keyup', '.isNatural', function() {
    $(this).val($(this).val().replace(/[^\d].+/, ""));
    if ((event.which < 48 || event.which > 57)) {
        event.preventDefault();
    }
});
$(document).on('blur', '.isNatural', function() {
    $(this).val($(this).val().replace(/[^\d].+/, ""));
    if ((event.which < 48 || event.which > 57)) {
        event.preventDefault();
    }
    if ($.trim($(this).val()) == "" || $.trim($(this).val()) == 0) {
        $(this).val(1);
        $(".qcjmjrbsop").trigger("keyup");
    }
});
$(document).on('keyup', '.rbvacamrpi', function() {
    var productId = $(this).attr("data-id");
    var quantity = $(this).val();
    if(quantity == 0 || quantity == ''){
        quantity = 1;
        $(this).val(1);
    }
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/purchase/update-purchase-quantity",
        data: "productId=" + productId + "&quantity=" + quantity + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".urahyuwwmn").load(location.href + " .urahyuwwmn", function() {
                    //toast("success", json.message);
                    purchaseTotal();
                });
            } else {
                $(context).html(html);
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('blur', '.uazwgwilhi', function() {
    var productId = $(this).attr("data-id");
    var cost = $(this).val();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/purchase/update-cost-price",
        data: "productId=" + productId + "&cost=" + cost + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".urahyuwwmn").load(location.href + " .urahyuwwmn", function() {
                    //toast("success", json.message);
                    purchaseTotal();
                });
            } else {
                $(context).html(html);
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('change', '.umnoiilcdp,.xsxebbmlkw', function() {
    var productId = $(this).attr("data-id");
    console.log($(this).parent().parent().html());
    var taxType = $(this).parent().parent().find('.umnoiilcdp').val();
    var taxId = $(this).parent().parent().find('.xsxebbmlkw').val();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/purchase/update-tax-type",
        data: "productId=" + productId + "&taxId=" + taxId + "&taxType=" + taxType + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".urahyuwwmn").load(location.href + " .urahyuwwmn", function() {
                    //toast("success", json.message);
                    purchaseTotal();
                });
            } else {
                $(context).html(html);
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
purchaseTotal();
function purchaseTotal(){
    $(".yjcpesjsgl").html('<img src="'+baseUrl+'/backend/loader.gif" style="width:100px;display:block;margin:auto;margin-top:50px;">');
    var total = 0;
    $(".rbvacamrpi").each(function(){
        total += parseInt($(this).val());
    });
    $(".fayczggbbp").html(total);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/purchase/purchase-total",
        data: "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".yjcpesjsgl").html(json.data);
            } else {
                $(context).html(html);
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
}
$(document).on('click', '.changePurchaseStatus', function() {
    var context = $(this);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/purchase/change-status",
        data: "status="+$(this).attr("data-status")+"&table="+$(this).attr("data-table")+"&id="+$(this).attr("data-tableIdColumn")+"&updateId="+$(this).attr("data-updateId")+"&_token="+token,
        success: function(data) {
            /*if($(context).attr("data-status")=="Approved"){
                $(context).removeClass("badge-success");
                $(context).addClass("badge-danger");
                $(context).html("DisApproved");
                $(context).attr("data-status","DisApproved");
            }else{
                $(context).removeClass("badge-danger");
                $(context).addClass("badge-success");
                $(context).html("Approved");
                $(context).attr("data-status","Approved");
            }*/
            location.reload();
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.delete', function() {
    var table = $(this).attr("data-page");
    var id = $(this).attr("data-id");
    var column = $(this).attr("data-column");
    var context = $(this);


    Swal.fire({
        title: "You want to delete this data?",
        showCancelButton: true,
        confirmButtonText: "Delete",
    }).then((result) => {
        if (result.isConfirmed) {
            $(context).html("Deleting...");
            $(context).click(function() {
                return false;
            });
            $(context).attr("disabled", "disabled");
            $.ajax({
                type: 'POST',
                url: baseUrl + "/deleteData",
                data: 'table=' + table + '&id=' + id + '&column=' + column + '&_token=' + token,
                success: function(data) {
                    var json = $.parseJSON(data);
                    if (json.status == "success") {
                        $(context).closest("tr").remove();
                        toast("success", "Data has been successfully deleted");
                    } else {
                        toast("error", "There is some error during deleteing data");
                    }
                },
                error: function(data) {}
            });
            return false;
        } else if (result.isDenied) {
            $(context).html(html);
            $(context).click(function() {
                return true;
            });
            $(context).removeAttr("disabled", "disabled");
        }
    });

});