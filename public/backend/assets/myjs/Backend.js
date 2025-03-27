/*function dynamicAutosuggestive(table, idColumn, valueColumn) {
    console.log(table);
    $(".status").select2({
        ajax: {
            url: baseUrl + "/admin/dynamicAutosuggestive",
            type: "post",
            dataType: 'json',
            delay: 250,
            data: function(params) {
                return {
                    searchTerm: params.term,
                    table: table,
                    idColumn: idColumn,
                    valueColumn: valueColumn,
                };
            },
            processResults: function(response) {
                return {
                    results: response
                };
            },
            cache: true
        }
    });
}*/
function dynamicAutosuggestive(table, idColumn, valueColumn,selectElementObj) {
    console.log(selectElementObj);
    $("."+selectElementObj).select2({
    ajax: {
            url: baseUrl + "/admin/dynamicAutosuggestive",
            type: "post",
            dataType: 'json',
            delay: 250,
            data: function(params) {
                return {
                    searchTerm: params.term,
                    table: table,
                    idColumn: idColumn,
                    valueColumn: valueColumn,
                    _token: token,
                };
            },
            processResults: function(response) {
                return {
                    results: response
                };
            },
            cache: true
        }
    });
}
function toast(type, text) {
    jQuery.toast({
        heading: type,
        text: text,
        position: 'bottom-right',
        loaderBg: '#ff6849',
        icon: type.toLowerCase(),
        hideAfter: 10000,
        stack: 6
    });
}

$(document).on('blur', '.heading', function() {
    var value = $(this).val();
    var value2 = value.toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
    var value3 = value.replace(/[^a-z0-9\s]/gi, '').replace(/[_\s]/g, '-');
    $(".seo").val(value3.toLowerCase());
});

$(document).on('blur', '#shortcode,.aehmwfgprf', function() {
    var value = $(this).val();
    var value2 = value.toLowerCase().replace(/ /g, '_').replace(/[^\w-]+/g, '');
    $(this).val(value2);
});
$(document).on('blur', '.npdeahbphx', function() {
    var value = $(this).val();
    var value2 = value.toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
    var value3 = value.replace(/[^a-z0-9\s]/gi, '').replace(/[_\s]/g, '-');
    $(".ywfzqlqkac").val(value3.toLowerCase());
});
$(document).ready(function(e) {
    $('#manualForm').on('submit', (function(e) {
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
                jQuery(this).css("border", "1px solid #ced4da");
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
                url: baseUrl + "/admin/submitDynamicData",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                context: this,
                 success: function(data) {
                    var json = $.parseJSON(data);
                    if (json.status == "success") {
                        jQuery('.wugugpchjn').html(buttonHtml);
                        toast("success", "Data has been successfully Updated/Inserted");
                        setTimeout(function() {
                            if (json.reffer == "modules" || json.reffer == "userroles") {
                                window.location.replace(baseUrl + "/admin/" + json.reffer)
                            } else {
                                window.location.replace(baseUrl + "/admin/page/" + json.reffer)
                            }
                        }, 300);
                    } else {
                        swal("error", "Error",json.message);
                        //$(".swal-title").after('<div class="swal-text" style="">' + json.message + '</div>');
                        jQuery('.wugugpchjn').html(buttonHtml);
                    }
                },
                error: function(data) {
                    var json = $.parseJSON(data);
                    swal("Error", "", "error");
                    $(".swal-title").after('<div class="swal-text" style="">' + json.message + '</div>');
                    
                    $('.wugugpchjn').html(buttonHtml);
                }
            });
        }
        return false;
    }));
});
if (dataTableStatus == 1) {
    //$(document).ready(function() {

        
        dataTableCall();
        $('#search').on('click', function() {
            $("#myDataTable").dataTable().fnDestroy();
            dataTableCall();
        });
        $('#clear').on('click', function() {
            $("#myDataTable").dataTable().fnDestroy();
            $(".zkblwbvxhq").val("").trigger('change');
            $(".hscsqpybyn").val("").trigger('change');
            $(".rdfehunpgo").val("").trigger('change');
            $(".twvxwffhqw").val("").trigger('change');
            $(".sezrxmpdil").val("").trigger('change');
            $("#startDate").val("");
            $("#endDate").val("");
            dataTableCall();
        });
        var col = "";
        for (i = 0; i < countColumns; i++) {
            col += i + ",";
        }
        col = col.slice(0, -1);
        function dataTableCall() {
        var string = "";

        $( ".kaprrjhyxe select" ).each(function(index) {
          string = string + $(this).attr("name") +"__"+ $(this).val()+","; 
        });
        $( ".kaprrjhyxe input" ).each(function(index) {
          string = string + $(this).attr("name") +"__"+ $(this).val()+","; 
        });

        $('#myDataTable').DataTable({
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
                        columns: [col]
                    }
                },
                {
                    extend: 'csv',
                    footer: false,
                    exportOptions: {
                        columns: [col]
                    }
                },
                {
                    extend: 'excel',
                    footer: false,
                    exportOptions: {
                        columns: [col]
                    }
                },
                {
                    extend: 'print',
                    footer: false,
                    exportOptions: {
                        columns: [col]
                    }
                }
            ],
            "ajax": {
                url: baseUrl + "/admin/data",
                type: "POST",
                data: function(d) {
                    d.controllerName = controllerName;
                    d.tableName = tableName;
                    d.tableIdColumn = tableIdColumn;
                    d.moduleId = moduleId;
                    d._token =  token;
                    d.filters =  string;
                }
            },
            "ordering": (copyTable == 'Yes')?false:true,
            "columnDefs": [{
                "orderable": false,
                "targets": 'no-sort',
                "targets": [countColumns - 1]
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
   // });
}
$(document).on('click', '.deleteImage', function() {
    var image = $(this).attr("data-image");
    var context = $(this);

    Swal.fire({
        title: "You want to delete this image?",
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
                url: baseUrl + "/admin/unlinkImage",
                data: 'link=' + image+"&_token="+token,
                success: function(data) {
                    var json = $.parseJSON(data);
                    if (json.status == "success") {
                        $(context).parent().find(".imageDiv").remove();
                        $(context).remove();
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
$(document).on('click', '.softDeleteData', function() {
    var id = $(this).attr("data-updateid");
    var table = $(this).attr("data-table");
    var column = $(this).attr("data-tableidcolumn");
    var moduleid = $(this).attr("data-moduleid");
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
                url: baseUrl + "/admin/softDeleteData",
                data: 'id=' + id + '&table=' + table + '&column=' + column+"&moduleid="+moduleid+"&_token="+token,
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
$(document).on('click', '.deleteData', function() {
    var id = $(this).attr("data-updateid");
    var table = $(this).attr("data-table");
    var column = $(this).attr("data-tableidcolumn");
    var moduleid = $(this).attr("data-moduleid");
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
                url: baseUrl + "/admin/deleteData",
                data: 'id=' + id + '&table=' + table + '&column=' + column+"&moduleid="+moduleid+"&_token="+token,
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
$(document).ready(function(e) {
    $('#settingForm').on('submit', (function(e) {
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
                url: baseUrl + "/admin/updateSettings",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                context: this,
                success: function(data) {
                    var json = $.parseJSON(data);
                    if (json.status == "success") {
                        jQuery('.wugugpchjn').html(buttonHtml);
                        toast("success", "Data has been successfully Updated/Inserted");
                        setTimeout(function() {
                            window.location.replace(baseUrl + "/settings")
                        }, 300);
                    } else {
                        toast("error", json.message);
                        jQuery('.wugugpchjn').html(buttonHtml);
                    }
                },
                error: function(data) {
                    $('.wugugpchjn').html(buttonHtml);
                }
            });
        }
        return false;
    }));
});
var i = 2;
$(document).on('click', '.appendTr', function() {
    var copy = $(".appendThis").html();
    $(".appendHere").append(copy);
    $(".appendHere .countRow:last").attr("data-id", i++);
    $(".appendHere .countRow:last").find(".categoryPercent").val("");
    $(".appendHere .countRow:last").find(".dateStart").val("");
    $(".appendHere .countRow:last").find(".dateEnd").val("");
});
$(document).on('click', '.deleteTr', function() {
    var countRow = $(".countRow").length;
    var id = $(this).closest(".row").attr("data-id");
    if (countRow == 1 || id == 1) {
        toast("error", "You cant remove first row");
        return false;
    }
    $(this).closest(".row").remove;
    $(this).closest(".row").remove();
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
$(document).on('click', '.submitMenuForm', function() {
    var buttonHtml = $('.submitMenuForm').html();
    $('.submitMenuForm').html("Please Wait..");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/submitMenuForm",
        data: $("#submitMenuForm").serialize(),
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $('.submitMenuForm').html(buttonHtml);
                $("#submitMenuForm")[0].reset;
                $("#submitMenuForm")[0].reset();
                toast("success", "Menu Updated successfully");
            } else {
                toast("error", json.message);
                $('.submitMenuForm').html(buttonHtml);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('change', '.kzqdhmtphl', function() {
    var buttonHtml = $('.submitMenuForm').html();
    $('.submitMenuForm').html("Please Wait..");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/submitMenuForm",
        data: $("#submitMenuForm").serialize(),
        success: function(data) {
            
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.szajorfpwe', function() {
    $.ajax({
        type: 'POST',
        url: baseUrl + "/setMenuSession",
        data: "setMenuSession="+$(this).find(".hide-menu").html(),
        success: function(data) {
            
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.vvykezzqwx', function() {
    var context = $(this);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/setChildMenuSession",
        data: "setChildMenuSession="+$(this).find("span").html(),
        success: function(data) {
            window.location.replace($(context).attr("href"));
        },
        error: function(data) {}
    });
    return false;
});


$(document).on('click', '.changeStatus', function() {
    var context = $(this);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/changeStatus",
        data: "status="+$(this).attr("data-status")+"&table="+$(this).attr("data-table")+"&id="+$(this).attr("data-tableIdColumn")+"&updateId="+$(this).attr("data-updateId")+"&_token="+token,
        success: function(data) {
            if($(context).attr("data-status")=="Enabled"){
                $(context).removeClass("badge-success");
                $(context).addClass("badge-danger");
                $(context).html("Disabled");
                $(context).attr("data-status","Disabled");
            }else{
                $(context).removeClass("badge-danger");
                $(context).addClass("badge-success");
                $(context).html("Enabled");
                $(context).attr("data-status","Enabled");
            }
        },
        error: function(data) {}
    });
    return false;
});
var countWs = 1;
$(document).on('click', '.rbxxgggose', function() {

    var idCkeditor = $(".bpdwqxkvoa:first").attr("id");
    if(CKEDITOR.instances[idCkeditor]){
        CKEDITOR.instances[idCkeditor].destroy();
    }
    

    var copy = $(".nljqvqzidj").html();
    $(".nrgtfbkhsj").append('<div class="row yponlomnbk" style="padding:0px 30px 30px 30px;"><div class="col-md-12"><div class="vxvtjcycoj" style="padding:5px 10px;background:#ff8819;width:50px;text-align:center;color:white;font-weight:bold;cursor:pointer;float:right;border-radius: 0.25rem;">D</div></div>'+copy+'</div>');

    $(".nrgtfbkhsj").find("input:last").val("");
    $(".nrgtfbkhsj").find("textarea:last").val("");
    $(".nrgtfbkhsj").find(".relatedImages:last").hide();
    $(".nrgtfbkhsj").find("select:last").prop("selectedIndex", 0);

    $('.bpdwqxkvoa').each(function(index, value) {
        if(index > 0){
            $(this).attr("id",readableRandomStringMaker(8));
        }
    });

    $('.bpdwqxkvoa').each(function(index, value) {
        if(index > 0){
            CKEDITOR.replace($(this).attr("id"));
        } 
    });


});
$(document).on('click', '.vxvtjcycoj', function() {
    $(this).closest(".row").remove();
    $(this).closest(".row").remove;
});
function readableRandomStringMaker(length) {
  for (var s=''; s.length < length; s += 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.charAt(Math.random()*62|0));
  return s;
}
$(document).on('click', '.ajouvvcoff', function() {
    var context = $(this);
    var html = $(this).html();
    var database = $(this).attr("data-value");
    
    Swal.fire({
        title: "You want to restore database? Current database will be overwritten and it is a one way process.",
        showCancelButton: true,
        confirmButtonText: "Restore",
    }).then((result) => {
        if (result.isConfirmed) {
            $(context).html("Restoring...");
            $(context).click(function() {
                return false;
            });
            $(context).attr("disabled", "disabled");
            $.ajax({
                type: 'POST',
                url: baseUrl + "/admin/restoreDatabase",
                data: "database=" + database + "&_token=" + token,
                success: function(data) {
                    $(context).html(html);
                    $(context).click(function() {
                        return true;
                    });
                    $(context).attr("disabled", "disabled");
                    swal("Success", "Database Restored Successfully", "success");
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
$(document).on('click', '.bbwdxhpefe', function() {
    var context = $(this);
    var html = $(this).html();
    $(context).html("Processing...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/takeBackupButton",
        data: "_token=" + token,
        success: function(data) {
            toast("success", "Database Backup Done");
            $(context).html(html);
        },
        error: function(data) {}
    });
});
$(document).on('click', '.showPopUp', function() {
    var className = $(this);
    if(className.hasClass('btpasijoaw')){
        $("#selectStoreModal").modal("show");
    }
});

$(document).on('click', '.whnxrafkxq', function() {
    $("#selectStoreModal").modal("hide");
});
$(document).on('click', '.showPopUpUser', function() {
    var className = $(this);
    if(className.hasClass('cbzfzgbuge')){
        $("#selectUserModal").modal("show");
    }
});
$(document).on('click', '.lkqvejrubd', function() {
    $("#selectUserModal").modal("hide");
});

$(document).on('click', '.dzuvvrsqcf', function() {
    $("#selectLanguageModal").modal("show");
});
$(document).on('click', '.fadfdfkgpf', function() {
    $("#selectLanguageModal").modal("hide");
});

$(document).on('change', '.dqwofazecn', function() {
    var storeId = $(this).val();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/select-store",
        data: "storeId=" + storeId+"&_token=" + token,
        success: function(data) {
            location.reload();
        },
        error: function(data) {}
    });
});
$(document).on('change', '.qgdgpmnhvj', function() {
    var userId = $(this).val();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/select-user",
        data: "userId=" + userId+"&_token=" + token,
        success: function(data) {
            location.reload();
        },
        error: function(data) {}
    });
});
$(document).on('change', '.acepzridje', function() {
    var languageId = $(this).val();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/select-language",
        data: "languageId=" + languageId+"&_token=" + token,
        success: function(data) {
            location.reload();
        },
        error: function(data) {}
    });
});
$("#selectAllCheckbox").click(function () {
    $(".selectAllCheckbox").prop('checked', $(this).prop('checked'));
});
$(document).on('click', '.xyfiykkfkf', function() {
    var string = '';
    var disabled = $(this).attr('disabled');
    if(typeof disabled !== 'undefined' && disabled !== false){
        toast("error", "Please wait copying is already in process.");
        return false;
    }
    var table = $(this).attr("data-table");
    var moduleFirstColumn = $(this).attr("data-moduleFirstColumn");
    var moduleId = $(this).attr("data-moduleId");
    $(".selectAllCheckbox:checked").each(function(){
        string += $(this).val()+','; 
    });
    if(string==''){
        toast("error", "Please select at least one item to copy.");
        return false;
    }
    var html = $(this).html();
    $(this).html('Please Wait...');
    $(this).attr("disabled","disabled");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/copy-table-data",
        data: "string=" + string+"&table=" + table+"&moduleFirstColumn=" + moduleFirstColumn+"&moduleId=" + moduleId+"&_token=" + token,
        success: function(data) {
            location.reload();
        },
        error: function(data) {}
    });
});
$(document).on('blur', '.ldqspskkad', function() {
    var gst = $(this).val();
    $(".asyltyhamu").show();
    var error = 0;
    if(gst==''){
        error = 1;
        toast("error", "Please check GST Field");
        $(".asyltyhamu").hide();
    }
    if(error == 0){
    $("input[name='firmName']").attr("disabled","disabled");
    $("textarea[name='firmAddress']").attr("disabled","disabled");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/get-gst-information",
        data: "gst=" + gst +"&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".asyltyhamu").hide();
                $(".firmName").addClass("loading");
                $("input[name='firmName']").removeAttr("disabled");
                $("input[name='firmName']").removeAttr("disabled");
                $("input[name='firmName']").val(json.name);
                $("textarea[name='firmAddress']").val(json.address);
            }
        },
        error: function(data) {}
    });
    }
    return false;
});