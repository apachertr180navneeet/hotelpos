var count = $(".pinqadcrvo").length;
if (typeof(ajax) != "undefined" && ajax !== null) {
    ajax = ajax;
} else {
    ajax = 0;
}
$(document).ready(function(e) {
    $('#moduleForm').on('submit', (function(e) {
        /*for (instance in CKEDITOR.instances) {
            CKEDITOR.instances[instance].updateElement();
        }*/
        var buttonHtml = $('.wugugpchjn').html();
        var error = false;
        $(".requiredField").each(function() {
            if ($.trim($(this).val()) == "" || $(this).val() == "Please Select") {
                $(this).css("border", "1px solid tomato");
                toast("Error", "Please fill all the required fields", "error");
                error = true;
            }
        });
        if (error == true) {
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

                        toast("Success", "Success", "Data has been successfully Updated/Inserted");
                        $('.kecdzifvtb').html(buttonHtml);
                        setTimeout(function() {
                            if (json.insert_id > "0") {
                                window.location.replace(baseUrl + "/admin/" + json.reffer + "/manage/" + json.insert_id);
                            } else {
                                window.location.replace(baseUrl + "/admin/" + json.reffer);
                            }

                        }, 100);

                    } else {
                        toast("error", json.message);
                        $('.wugugpchjn').html(buttonHtml);
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
$(document).on('keyup', '.required', function() {
    $(".required").each(function() {
        if ($.trim($(this).val()) == "" || $(this).val() == "Please Select") {
            $(this).css("border", "1px solid tomato");
        } else {
            $(this).css("border", "1px solid #e5ebec");
        }
    });

});
$(document).on('blur', '.rvsyfunmul', function() {
    var updateId = $(this).attr("data-updateId");
    var table = $(this).attr("data-table");
    var tableidcolumn = $(this).attr("data-tableidcolumn");
    var value = $(this).val();
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/change-sort-order",
        data: "updateId=" + updateId + "&table=" + table + "&tableidcolumn=" + tableidcolumn + "&value=" + value + "&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                toast("success", "Sort Order Updated");
            } else {
                toast("error", json.message);
            }

        },
        error: function(data) {

        }
    });
});
$(document).on('change', '.nmwiikhhkg', function() {
    var updateId = $(this).attr("data-updateId");
    var table = $(this).attr("data-table");
    var tableidcolumn = $(this).attr("data-tableidcolumn");
    var value = $(this).val();
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/change-featured",
        data: "updateId=" + updateId + "&table=" + table + "&tableidcolumn=" + tableidcolumn + "&value=" + value + "&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                toast("success", "Featured updated successfully");
            } else {
                toast("error", json.message);
            }

        },
        error: function(data) {

        }
    });
});
$(document).on('click', '.edit', function() {
    var updateId = $(this).attr("data-updateId");
    var table = $(this).attr("data-table");
    if (table != "modules") {
        window.location.href = baseUrl + controllerName + "/edit/" + updateId;
    } else {
        window.location.href = baseUrl + "/ManageModules/index/" + updateId;
    }

});

$(document).on('click', '.view', function() {
    var updateId = $(this).attr("data-updateId");
    var table = $(this).attr("data-table");
    if (table != "modules") {
        window.location.href = baseUrl + controllerName + "/view/" + updateId;
    } else {
        window.location.href = baseUrl + "/ManageModules/index/" + updateId;
    }

});
$(document).on('click', '.vigwmrmasu', function() {
    var html = $(this).html();
    $('.vigwmrmasu').html('<i class="fa fa-spinner fa-spin"></i>');
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/setPagesFields",
        data: $("#createFieldsForm").serialize() + "&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                toast("success", "Data has been successfully Updated/Inserted");
                setTimeout(function() {
                    window.location.replace(baseUrl + "/admin/modules")
                }, 1000);
            } else {
                toast("error", json.message);
                $('.vigwmrmasu').html(html);
            }

        },
        error: function(data) {
            $('.vigwmrmasu').html(html);
        }
    });
});

$(document).on('click', '#setZero', function() {
    $("input[name='fieldSortOrder[]']").val(0);
});
$(document).on('click', '#setColumnThree', function() {
    $("input[name='fieldColumn[]']").val(3);
});
$(document).on('change', '.qysmpryxid', function() {
    var value = $(this).val();
    var id = $(this).attr("data-id");
    if (value == "Yes") {
        $("#dxlmujpqqq" + id).show();
        $("#uqgvamdhfy" + id).show();
        $("#dxlmujpqqq" + id).removeClass("hidden");
        $("#uqgvamdhfy" + id).removeClass("hidden");
    } else {
        $("#dxlmujpqqq" + id).hide();
        $("#uqgvamdhfy" + id).hide();
        $("#dxlmujpqqq" + id).addClass("hidden");
        $("#uqgvamdhfy" + id).addClass("hidden");
    }
});


$(document).on('click', '.wyewhxojgh', function() {
    $(".modal-body input").val("");
    $(".modal-body select").val("");
    $(".skexvazfne").attr("disabled", "disabled");
    $(".tanfdmfntg").attr("disabled", "disabled");
    var id = $(this).attr("data-id");
    var column = $(this).attr("data-column");
    var fieldType = $("#dlcjyqvwju" + id).val();
    $('#fieldOptions').modal({
        backdrop: 'static',
        keyboard: false
    });
    if (fieldType == "select") {
        $(".hiddenSelect").show();
    } else {
        $(".hiddenSelect").hide();
    }
    $(".fieldCount").val(id);

    $(".dztvenfyvo").attr("data-id", "unique:" + $(".tableName").val() + "," + $(".iotvnxomzy" + id).val());
    $(".dztvenfyvo").html("unique:" + $(".tableName").val() + "," + $(".iotvnxomzy" + id).val());


    $(".vpdskwkhrw").val($(".iotvnxomzy" + id).val());
    $(".vmbeagfcqb").val($(".otvglqedpo" + id).val());

    $(".wcahrihaye").val($(".sbjlewmslt" + id).val());
    $(".baqowwepyo").val($(".wxjbpbqksd" + id).val());
    $(".juesuetyud").val($(".qobngwixqp" + id).val());
    $(".abptvlieua").val($(".pdefvqxgms" + id).val());
    $(".lmgdwaxaof").val($(".cnxqojxdcw" + id).val());
    $(".igfgafmqku").val($(".upjkmamola" + id).val());
    $(".nofsloifut").val($(".pussbzkrei" + id).val());
    $(".egyldrhzwj").val($(".bgwogeundq" + id).val());
    $(".zvbnfvdxfd").val($(".alyrzixsnv" + id).val());
    $(".pfqplgtnka").val($(".zqipqmrlrj" + id).val());
    $(".tiztpnoemz").val($(".utzuibfsgf" + id).val());
    $(".ocjrrctggx").val($(".iecsiaosir" + id).val());
    $(".iowztvfkgr").val($(".rhuuqdogvt" + id).val());
    $(".kbjjujieje").val($(".ircimpknot" + id).val());
    
    $(".mzxbwicqmr").val($(".lrcoqnsfwn" + id).val());
    $(".zhlfhzpsum").val($(".fjdowyvrjr" + id).val());
    $(".aldpyzfyyq").val($(".hponxlzdtn" + id).val());
    $(".bofvremmxr").val($(".xzzvuuizlz" + id).val());


    if ($(".buztgveyvq" + id).val()) {
        $(".zsuubmpqzw").val($(".buztgveyvq" + id).val());
    } else {
        $(".zsuubmpqzw").val(0);
    }

    $(".vpdskwkhrw").val(column);
    if ($(".iotvnxomzy" + id).val() == "") {
        $(".vpdskwkhrw").trigger("change");

    }
    $(".pfqplgtnka").trigger("change");
    //$(".mzxbwicqmr").val($(".lrcoqnsfwn" + id).val());

    setTimeout(function() {
        $(".skexvazfne").removeAttr("disabled");
        $(".skexvazfne").val($(".loofcswkif" + id).val());
    }, 1500);
    setTimeout(function() {
        $(".tanfdmfntg").removeAttr("disabled");
        var result = $(".uaavuucqgk" + id).val().split(',');
        $.each($(".uaavuucqgk" + id).val().split(","), function(i, e) {
            $(".tanfdmfntg option[value='" + e + "']").prop("selected", true);
        });
    }, 1500);
    $('#fieldOptions').modal('show');

});
$(document).on('click', '.bblolfjgbb', function() {
    var id = $(".fieldCount").val();
    $("#acvbxmwlfv" + id).html("");
    var html = '<input type="hidden" class="otbikxofbc' + id + '" value="' + $(".vpdskwkhrw").val() + '" name="fieldColumnName[]">';
    html += '<input type="hidden" class="iotvnxomzy' + id + '" value="' + $(".vpdskwkhrw").val() + '" name="fieldName[]">';
    html += '<input type="hidden" class="otvglqedpo' + id + '" value="' + $(".vmbeagfcqb").val() + '" name="fieldId[]">';
    html += '<input type="hidden" class="lrcoqnsfwn' + id + '" value="' + $(".mzxbwicqmr").val() + '" name="fieldClass[]">';
    html += '<input type="hidden" class="sbjlewmslt' + id + '" value="' + $(".wcahrihaye").val() + '" name="fieldPlaceHolder[]">';
    html += '<input type="hidden" class="wxjbpbqksd' + id + '" value="' + $(".baqowwepyo").val() + '" name="fieldDefaultValue[]">';
    html += '<input type="hidden" class="qobngwixqp' + id + '" value="' + $(".juesuetyud").val() + '" name="fieldAttribute[]">';
    html += '<input type="hidden" class="buztgveyvq' + id + '" value="' + $(".zsuubmpqzw").val() + '" name="fieldRequired[]">';
    html += '<input type="hidden" class="pdefvqxgms' + id + '" value="' + $(".abptvlieua").val() + '" name="fieldValidation[]">';
    html += '<input type="hidden" class="cnxqojxdcw' + id + '" value="' + $(".lmgdwaxaof").val() + '" name="fieldHeadingBefore[]">';
    html += '<input type="hidden" class="upjkmamola' + id + '" value="' + $(".igfgafmqku").val() + '" name="fieldAdditionalAttribute[]">';
    html += '<input type="hidden" class="pussbzkrei' + id + '" value="' + $(".nofsloifut").val() + '" name="fieldAdditionalAttribute2[]">';
    html += '<input type="hidden" class="bgwogeundq' + id + '" value="' + $(".egyldrhzwj").val() + '" name="fieldSelectBoxText[]">';
    html += '<input type="hidden" class="alyrzixsnv' + id + '" value="' + $(".zvbnfvdxfd").val() + '" name="fieldSelectBoxValue[]">';
    html += '<input type="hidden" class="zqipqmrlrj' + id + '" value="' + $(".pfqplgtnka").val() + '" name="fieldSelectTable[]">';
    html += '<input type="hidden" class="loofcswkif' + id + '" value="' + $(".skexvazfne").val() + '" name="fieldSelectIdColumn[]">';
    html += '<input type="hidden" class="uaavuucqgk' + id + '" value="' + $(".tanfdmfntg").val() + '" name="fieldSelectMainColumn[]">';
    html += '<input type="hidden" class="utzuibfsgf' + id + '" value="' + $(".tiztpnoemz").val() + '" name="fieldSelectWhere[]">';
    html += '<input type="hidden" class="iecsiaosir' + id + '" value="' + $(".ocjrrctggx").val() + '" name="fieldOrderBy[]">';
    html += '<input type="hidden" class="rhuuqdogvt' + id + '" value="' + $(".iowztvfkgr").val() + '" name="fieldOrderByValue[]">';
    html += '<input type="hidden" class="ircimpknot' + id + '" value="' + $(".kbjjujieje").val() + '" name="fieldSelectValue[]">';
    html += '<input type="hidden" class="fjdowyvrjr' + id + '" value="' + $(".zhlfhzpsum").val() + '" name="fieldSelectOperator[]">';
    html += '<input type="hidden" class="hponxlzdtn' + id + '" value="' + $(".aldpyzfyyq").val() + '" name="fieldCustomQuery[]">';
    html += '<input type="hidden" class="xzzvuuizlz' + id + '" value="' + $(".bofvremmxr").val() + '" name="fieldCustomFields[]">';
    $("#acvbxmwlfv" + id).html(html);
    $("#xvilmfukva" + id).show();
    $('#fieldOptions').modal("hide");
});
$(document).on('change', '.pfqplgtnka', function() {
    var value = $(this).val();
    var id = $(this).attr("data-id");
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/getcolumns",
        data: "tableName=" + value + "&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            html = "";
            for (i = 0; i < json.length; i++) {
                html += '<option value="' + json[i].Field + '">' + json[i].Field + '</option>'
            }
            $(".skexvazfne").html(html);
            $(".tanfdmfntg").html(html);
        }
    });
});
$(document).on('change', '.dihaxsktpe', function() {
    var value = $(this).val();
    var id = $(this).attr("data-id");
    var context = $(this);
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/getcolumns",
        data: "tableName=" + value + "&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            html = "";
            for (i = 0; i < json.length; i++) {
                html += '<option>' + json[i].Field + '</option>';
            }
            $(context).parent().parent().find(".jztfvxaqvs").html(html);
            $(context).parent().parent().find(".aejqvtcizy").html(html);
        }
    });
});
$(document).on('click', '.showAllTableTr ', function() {
    $(".sgrgvtpleu").show();
});
$(document).on('click', '.abmmgmlscb', function() {
    var text = $(this).attr("data-id");
    var value = $(this).attr("data-value");
    $(".egyldrhzwj").val(text);
    $(".zvbnfvdxfd").val(value);
});
$(document).on('change', '.gqqkhjzrae', function() {
    var value = $(this).val();
    $(".gqqkhjzrae").val(value);
});

$(document).on('click', '.rdlbljzlgi', function() {
    var id = $(this).attr("data-id");
    var val = $(".abptvlieua").val();
    if (id == "required") {
        $(".zsuubmpqzw").val(1);
    }
    if (val == "") {
        $(".abptvlieua").val(id);
    } else {
        $(".abptvlieua").val(val + "|" + id);
    }
});
$(document).on('change', '.vpdskwkhrw', function() {
    var value = $(this).val();
    if (value != "") {
        $(".vmbeagfcqb").val(value);
        $(".mzxbwicqmr").val(value);
        $(".wcahrihaye").val(getUpperCasePosition(value));
    }
});
$(document).on('change', '.lmquhorrmm', function() {
    var value = $(this).val();
    if (value == "Yes") {
        var maximum = null;
        $('.qavgfjjiak').each(function() {
            var value = parseFloat($(this).val());
            maximum = (value > maximum) ? value : maximum;
        });
        if (maximum == "0") {
            maximum = 0;
        } else {
            maximum += 1;
        }
        $(this).parent().parent().find(".qavgfjjiak").val(maximum);
    } else {
        $(this).parent().parent().find(".qavgfjjiak").val("");
    }
});

function getUpperCasePosition(inputString) {
    var str = "";
    for (var i = 0; i < inputString.length; i++) {
        if (inputString[i].match(/[A-Z]/) != null) {
            str += " ";
        }
        str += inputString[i];
    }
    str = str.replace(/_/g, ' ');
    str = str.toLowerCase().replace(/\b[a-z]/g, function(letter) {
        return letter.toUpperCase();
    });
    return str;
}
$(document).on('keyup', '.acpchwhbhe', function() {
    var value = $(this).val();
    $(this).parent().parent().find(".axxgncqyhi").val(value.toLowerCase());
    $(this).parent().parent().find(".bfjhaqgczl").val(value.toLowerCase());
    $(this).parent().parent().find(".cerkhzzpsn").val(getUpperCasePosition(value));
    $(this).parent().parent().find(".jtyuiofwvz").val(getUpperCasePosition(value));
});
$(document).on('change', '.dxlmujpqqq', function() {
    var value = $(this).val();
    var id = $(this).attr("data-id");
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/getcolumns",
        data: "tableName=" + value + "&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            html = "";
            for (i = 0; i < json.length; i++) {
                html += '<option>' + json[i].Field + '</option>'
            }
            $("#uqgvamdhfy" + id).html(html);
        }
    });
});
$(document).on('click', '.irqyjvvpul', function() {
    var id = $(this).attr("data-id");
    $("#pinqadcrvo" + id).remove();
    reArrange();
});
$(document).on('click', '.pjppcadihh', function() {
    ++count;
    html = '<tr id="pinqadcrvo' + count + '">';
    html += '<td>';
    html += '<strong>' + count + '</strong><i class="fa fa-check xvilmfukva" id="xvilmfukva' + count + '" style="color:green;margin-left: 15px;display: none;" aria-hidden="true"></i>';
    html += '</td>';
    html += '<td>';
    html += '<select class="form-control dlcjyqvwju" id="dlcjyqvwju' + count + '" name="fieldType[]">';
    html += '<optgroup label="Main">';
    html += '<option selected="" value="text">Text</option>';
    html += '<option value="email">Email</option>';
    html += '<option value="select">Select</option>';
    html += '<option value="textarea">Textarea</option>';
    html += '<option value="wysiwyg">Wysiwyg Editor</option>';
    html += '<option value="file">File</option>';
    html += '<option value="password">Password</option>';
    html += '<option value="hidden">Hidden</option>';
    html += '<option value="number">Number</option>';
    html += '</optgroup>';
    html += '<optgroup label="Additional">';
    html += '<option value="checkbox">Checkbox</option>';
    html += '<option value="radio">Radio</option>';
    html += '<option value="color">Color</option>';
    html += '<option value="date">Date</option>';
    html += '<option value="datetime">Datetime Local</option>';
    html += '<option value="month">Month</option>';
    html += '<option value="tel">Tel</option>';
    html += '<option value="time">Time</option>';
    html += '<option value="url">Url</option>';
    html += '<option value="week">Week</option>';
    html += '</optgroup>';
    html += '</select>';
    html += '</td>';
    html += '<td>';
    html += '<input class="form-control" type="text" name="fieldHeading[]" placeholder="Field Heading" value="">';
    html += '</td>';
    html += '<td><input class="form-control" type="text" name="fieldSortOrder[]" placeholder="Sort Order"></td>';
    html += '<td><input class="form-control" type="text" name="fieldColumn[]" placeholder="Column"></td>';
    html += '<td>';
    html += '<div class="pull-right">';
    html += '<div class="btn btn-primary afvotqkbvd wyewhxojgh" data-column="" id="wyewhxojgh' + count + '" data-id="' + count + '" style="margin-left:3px;">O</div>';
    html += '<div class="btn btn-danger afvotqkbvd irqyjvvpul" id="irqyjvvpul' + count + '" data-id="' + count + '" style="margin-left:8px;">-</div>';
    html += '<div class="btn btn-success afvotqkbvd pjppcadihh" id="pjppcadihh' + count + '" data-id="' + count + '" style="margin-left:7px;">+</div>';
    html += '<div class="acvbxmwlfv" id="acvbxmwlfv' + count + '">';
    html += '<input type="hidden" class="otbikxofbc' + count + '" value="" name="fieldColumnName[]">';
    html += '<input type="hidden" class="iotvnxomzy' + count + '" value="" name="fieldName[]">';
    html += '<input type="hidden" class="otvglqedpo' + count + '" value="" name="fieldId[]">';
    html += '<input type="hidden" class="lrcoqnsfwn' + count + '" value="" name="fieldClass[]">';
    html += '<input type="hidden" class="sbjlewmslt' + count + '" value="" name="fieldPlaceHolder[]">';
    html += '<input type="hidden" class="wxjbpbqksd' + count + '" value="" name="fieldDefaultValue[]">';
    html += '<input type="hidden" class="qobngwixqp' + count + '" value="" name="fieldAttribute[]">';
    html += '<input type="hidden" class="buztgveyvq' + count + '" value="" name="fieldRequired[]">';
    html += '<input type="hidden" class="pdefvqxgms' + count + '" value="" name="fieldValidation[]">';
    html += '<input type="hidden" class="upjkmamola' + count + '" value="" name="fieldAdditionalAttribute[]">';
    html += '<input type="hidden" class="bgwogeundq' + count + '" value="" name="fieldSelectBoxText[]">';
    html += '<input type="hidden" class="alyrzixsnv' + count + '" value="" name="fieldSelectBoxValue[]">';
    html += '<input type="hidden" class="zqipqmrlrj' + count + '" value="" name="fieldSelectTable[]">';
    html += '<input type="hidden" class="loofcswkif' + count + '" value="" name="fieldSelectIdColumn[]">';
    html += '<input type="hidden" class="tanfdmfntg' + count + '" value="" name="fieldSelectMainColumn[]">';
    html += '<input type="hidden" class="utzuibfsgf' + count + '" value="" name="fieldSelectWhere[]">';
    html += '<input type="hidden" class="iecsiaosir' + count + '" value="" name="fieldOrderBy[]">';
    html += '<input type="hidden" class="rhuuqdogvt' + count + '" value="" name="fieldOrderByValue[]">';
    html += '<input type="hidden" class="ircimpknot' + count + '" value="" name="fieldSelectValue[]">';
    html += '<input type="hidden" class="ivomalhdrc' + count + '" value="" name="fieldTableColumn[]">';
    html += '</div>';
    html += '</div>';
    html += '</td>';
    html += '</tr>';

    $(".appendResult").append(html);
    reArrange();
});

function reArrange() {
    var i = 1;
    $(".clauceappn").each(function() {
        $(this).html(i++);
    });
}
$(document).on('click', '.jpzztmbhdn', function() {
    var value = $(this).attr("data-value");
    var array = value.split('___');

    $("input[name=fieldNameReadonly]").val(array[0] + "," + array[1]);
    $("input[name=tableName]").val(array[1]);
    $("input[name=fieldHeading]").val(array[2]);

    var output = array[2].replace(/\w+/g, function(txt) {
        return txt.charAt(0).toUpperCase() + txt.substr(1);
    }).replace(/\s/g, '');
    output = output.toLowerCase();

    $("input[name=fieldName]").val(output);
    $("input[name=fieldId]").val(output);
    $("input[name=fieldClass]").val(output);
    $("input[name=fieldPlaceholder]").val(array[2]);

    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/get-filter-form",
        data: "fieldNameReadonly=" + $("input[name=fieldNameReadonly]").val() + "&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            html = "";
            var response = JSON.parse(data);
            $.each(response.data, function(index, value) {
                $("input[name=" + index + "]").val(value);
                $("select[name=" + index + "]").val(value);
                if (index == 'additionalAttributes') {
                    $.each(response.data.additionalAttributes, function(i, e) {
                        $(".kisonqgtoy option[value='" + e + "']").prop("selected", true);
                    });
                }

            });
        }
    });

    /*$("#filterForm").each(function(){
        $(this).find(':input').attr("name");
    });*/

    $("#exampleModal").modal("show");
});
$(document).on('click', '.oqrxovtjdb', function() {
    $("#filterForm").trigger("reset");
    $("#exampleModal").modal("hide");
});
$(document).on('click', '.xmhwldpokl', function() {
    var form = $("#filterForm").serialize();
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/filter-form",
        data: form + "&_token=" + token,
        context: this,
        success: function(data) {
            $("#filterForm").trigger("reset");
            $("#exampleModal").modal("hide");
        }
    });
});
$(document).on('click', '.umqhvkffpb', function() {
    $("#myDataTable").dataTable().fnDestroy();
    dataTableCall();
});
$(document).on('change', '.ficxeeqzxi', function() {
    var val = $(this).val();
    var classValue = $(".nelilxbybe").val();
    if (val == 'autosuggestive') {
        if (classValue.indexOf('select2') != -1) {
            //console.log("select2" + " found");
        } else {
            classValue = classValue + " select2";
            classValue = $.trim(classValue);
            $(".nelilxbybe").val(classValue);
        }
    } else {
        classValue = classValue.replace('select2', '');
        classValue = $.trim(classValue);
        $(".nelilxbybe").val(classValue);
    }
});
$(document).on('click', '.mmpsfhdgfg', function() {
    $(".kaprrjhyxe select").each(function() {
        $(this).val("");
        $(this).val('').trigger('change');
    });
    $(".kaprrjhyxe input").each(function() {
        $(this).val("");
    });
    $("#myDataTable").dataTable().fnDestroy();
    dataTableCall();
});
$(document).on('click', '.hliabfpbie', function() {
    var id = $(this).attr("data-id");
    Swal.fire({
        title: "Are you sure you want to delete?",
        showCancelButton: true,
        confirmButtonText: "Delete",
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                type: "POST",
                url: baseUrl + "/deleteData",
                data: "&table=" + "filters" + "&column=" + "filterId" + "&id=" + id + "&_token=" + token,
                context: this,
                success: function(data) {
                    location.reload();
                }
            });
        } else if (result.isDenied) {

        }
    });

});