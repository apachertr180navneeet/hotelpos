if(views==1){
    $("input").attr("disabled","disabled");
    $("select").attr("disabled","disabled");
}
if (dataTableStatus == 0) {
    /*$(document).ready(function() {
        dataTableCall();
        $('#search').on('click', function() {
            $("#dataTable").dataTable().fnDestroy();
            dataTableCall();
        });
        $('#clear').on('click', function() {
            $("#dataTable").dataTable().fnDestroy();
            dataTableCall();
        });

        function dataTableCall() {
            $('#dataTable').DataTable({
                "processing": true,
                "language": {
                    "processing": '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span> '
                },
                "serverSide": true,
                "bSortable": true,
                "dom": 'lBfrtip',
                "responsive": true,
                buttons: [{
                        extend: 'copy',
                        footer: false,
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6, 7]
                        }
                    },
                    {
                        extend: 'csv',
                        footer: false,
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6, 7]
                        }
                    },
                    {
                        extend: 'excel',
                        footer: false,
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6, 7]
                        }
                    },
                    {
                        extend: 'pdf',
                        footer: false,
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6, 7]
                        }
                    },
                    {
                        extend: 'print',
                        footer: false,
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6, 7]
                        }
                    }
                ],
                "ajax": {
                    url: baseUrl + "/admin/dataTableOrder",
                    type: "POST",
                    data: {
                        '_token': token,
                    }
                },
                "columnDefs": [{
                    "orderable": false,
                    "targets": [4 - 1]
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
                aLengthMenu: [
                    [25, 50, 100, 200, -1],
                    [25, 50, 100, 200, "All"]
                ],
                iDisplayLength: 50
            });
        }
    });*/



    $(document).ready(function() {
        dataTableCall();
        $('#search').on('click', function() {
            $("#dataTable").dataTable().fnDestroy();
            dataTableCall();
        });
        $('#clear').on('click', function() {
            $("#dataTable").dataTable().fnDestroy();
            $("#startDate").val("");
            $("#endDate").val("");
            $(".jagxaeobnl").val("");
            dataTableCall();
        });

        function dataTableCall() {
            $('#dataTable').DataTable({
                "processing": true,
                "language": {
                    "processing": '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span> '
                },
                "serverSide": true,
                "bSortable": true,
                "dom": 'lBfrtip',
                "responsive": true,
                 buttons: [{
                        extend: 'copy',
                        footer: false,
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6, 7]
                        }
                    },
                    
                    {
                        extend: 'excel',
                        footer: false,
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6, 7]
                        }
                    },
                    
                    {
                        extend: 'print',
                        footer: false,
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5, 6, 7]
                        }
                    }
                ],
                "ajax": {
                    url: baseUrl + "/admin/dataTableOrder",
                    type: "POST",
                    data: {
                        'startDate': $("#startDate").val(),
                        'endDate': $("#endDate").val(),
                        'customerId': $("#customerId").val(),
                        'paymentMethod': $("#paymentMethod").val(),
                        'orderStatusId': $("#orderStatusId").val(),
                        'paymentStatus': $("#paymentStatus").val(),
                        '_token': token,
                    }
                },
                "columnDefs": [{
                    "orderable": false,
                    "targets": [4 - 1]
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
                aLengthMenu: [
                    [25, 50, 100, 200, -1],
                    [25, 50, 100, 200, "All"]
                ],
                iDisplayLength: 50
            });
        }
    });



}
$(document).on('click', '.removeTr', function() {
    var id = $(this).closest("tr").attr("data-id");
    var context = $(this);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/remove-from-cart-admin",
        data: "id=" + id+ "&_token=" + token,
        success: function(data) {
            $(".hwawoycpqx").load(location.href + " .hwawoycpqx");
            $(context).closest("tr").remove();
            $(context).closest("tr").remove;
        },
        error: function(data) {}
    });
});
$(document).on('click', '.saveOrder', function() {
    var error = 0;
    if($(".customerId").val()=="" || $(".customerId").val()==null){
        toast("error", "Please check all required fields properly");
        error = 1;
        return false;
    }
    if($(".addressKey").val()=="" || $(".addressKey").val()==null){
        toast("error", "Please check all required fields properly");
        error = 1;
        return false;
    }
    if(error==0){
        var html = $(this).html();
        $(this).html("Proessing...");
        var context = $(this);
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/saveOrder",
            data: $("#orderForm").serialize() + "&_token=" + token,
            success: function(data) {
                var json = $.parseJSON(data);
                if (json.status == "success") {
                        toast("success", "Order placed successfully");
                        setTimeout(function() {
                            window.location.replace(baseUrl + "/admin/order");
                        }, 300);
                } else {
                    toast("error", "There is some error during deleteing data");
                }
                $(context).html(html);
            },
            error: function(data) {}
        });
    }
});
$(document).on('change', '.customerId', function() {
    var value = $(this).val();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/getAddressOfSelectCustomer",
        data: "value="+value+ "&_token=" + token,
        success: function(data) {
            if(update_id == 0){
                $(".addressKey").html(data);
            }  
        },
        error: function(data) {}
    });
});
$(document).on('change', '.productId', function() {
    var value = $(this).val();
    var error = 0;
    $('.wbbrxndxci').each(function(){
        if($(this).attr('data-id') == value){
            error = 1;
            toast("error", "Product already added in the cart");
            $(".productId").html("");
            return false
        }
    });
    if(error==0){
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/getProductById",
            data: "value="+value+ "&_token=" + token,
            success: function(data) {
                 
                var json = $.parseJSON(data);
                if (json.status == "success") {
                    $(".productId").html("");
                    $(".aovarlbecn").append(data);
                    var i = 1;
                    $(".lkajankstm").each(function(){
                        $(this).html(i++);
                    });
                    $(".lrtkcrwunj").trigger("keyup");
                    $(".hwawoycpqx").load(location.href + " .hwawoycpqx");
                } else {
                    toast("error", json.message);
                }
            },
            error: function(data) {}
        });
    }
});
$(document).on('blur', '.lrtkcrwunj', function() {
    var id = $(this).closest("tr").attr("data-id");
    var packKey = $(this).attr("data-packkey");
    var quantity = $(this).val();
    var price = $(this).closest("tr").find(".futuvpkcbi").html();
    price = parseInt(price)*parseInt(quantity);
    $(this).closest("tr").find(".iwjpopkbcg").html(price);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/updateCart",
        data: "quantity="+quantity+ "&id=" + id+ "&packKey=" + packKey+ "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                toast("success", json.message);
            } else {
                toast("error", json.message);
            }
            $(".hwawoycpqx").load(location.href + " .hwawoycpqx"); 
        },
        error: function(data) {}
    });
});
$(document).on('click', '.applyCoupon', function() {
    var value = $(".coupon").val();
    var html = $(this).html();
    $(this).html("Proessing...");
    var context = $(this);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/apply-coupon",
        data: "value=" + value+ "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".hwawoycpqx").load(location.href + " .hwawoycpqx");
                toast("success", "Coupon Applied Successfully");
            } else if(json.status == "error1"){
                $(".hwawoycpqx").load(location.href + " .hwawoycpqx");
                toast("error",json.message);
            } else {
                $(".hwawoycpqx").load(location.href + " .hwawoycpqx");
                toast("error", "Invalid Coupon Code");
            }
            $(context).html(html);
        },
        error: function(data) {}
    });
});
$(document).on('blur', '.coupon', function() {
    var value = $(".coupon").val();
    if(value==""){
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/unset-coupon-2",
        data: "&_token=" + token,
        success: function(data) {
           var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".hwawoycpqx").load(location.href + " .hwawoycpqx");
            }
        },
        error: function(data) {}
    });
    }
});
function unsetCoupon(){
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/unset-coupon",
        data: "value=" + value+ "&_token=" + token,
        success: function(data) {
            
        },
        error: function(data) {}
    });
}
$(document).on('click', '.sgjzzcveal', function() {
    var packId = $(this).attr("data-packId");
    $(".mxmujdhrle").html("");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/get-packs-data",
        data: "packId="+packId+"&_token="+token,
        success: function(data) {
            $(".mxmujdhrle").html(data);
            $("#myModal").show(); 
        },
        error: function(data) {}
    });
});
$(document).on('click', '.hwsjffakui', function() {
    var packId = $(this).attr("data-packId");
    var productId = $(this).attr("data-productId");
    var key = $(this).attr("data-key");
    $(".mxmujdhrle").html("");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/update-packs-in-admin-cart",
        data: "id="+productId+"&quantity=1&packKey="+key+"&_token="+token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".mxmujdhrle").html("");
                $("#myModal").hide(); 
                $(".hwawoycpqx").load(location.href + " .hwawoycpqx");
                toast("success", json.message);
            }
        },
        error: function(data) {}
    });
});
$(document).on('click', '.closeModal', function() {
    $("#myModal").hide();
});

$(document).on('keyup', '.qfoffmpdov', function() {
    var text = $(this).val();
    var context = $(this);
    if($.trim(text)==""){
        $(context).parent().find('.htcmerncmt').hide();
        $(context).parent().parent().parent().parent().find(".wjvpcvipiz").val(0);
    }
    $(context).parent().find('.htcmerncmt').hide();
    if($.trim(text)!=""){
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/dynamicAutoSuggestive",
            data: "class=rkiihqranf&id=customerId&value=firstName,lastName,email,mobile&table=customers&text="+text+"&_token="+token,
            success: function(data) {
                if(data!="<ul></ul>"){
                    $(context).parent().find('.htcmerncmt').show();
                    $(context).parent().find('.htcmerncmt').html(data);
                }
            },
            error: function(data) {}
        });
    }
});
$(document).on('click', '.rkiihqranf', function() {
    var id = $(this).attr("data-id");
    var text = $(this).text();
    var context = $(this);
    $(context).parent().parent().parent().parent().find(".wjvpcvipiz").val(id);
    $(context).parent().parent().parent().parent().find(".qfoffmpdov").val(text);
    $(context).parent().parent().parent().parent().find('.htcmerncmt').hide();
    $(context).parent().parent().parent().parent().find(".htcmerncmt").html("");
});