const main = () => {
    $('.percentage').bind({
        focusin: onFocusIn,
        keyup: onChange
    });
};
const onFocusIn = (e) => {
    const $target = $(e.currentTarget);
    $target.data('val', $target.val());
};
const onChange = (e) => {
    const regex = /^((100)|(\d{1,2}(\.\d*)?))%?$/,
        $target = $(e.currentTarget),
        value = $target.val(),
        event = e || window.event,
        keyCode = event.keyCode || event.which,
        isValid = value.trim().length === 0 ||
        (keyInRange(keyCode) && regex.test(value));
    if (!isValid) {
        $target.val($target.data('val'));
        event.preventDefault();
    } else {
        $target.data('val', value);
    }
};
const keyInRange = (keyCode) =>
    (keyCode >= 48 && keyCode <= 57) || /* top row numbers       */
    (keyCode >= 96 && keyCode <= 105) || /* keypad numbers        */
    (keyCode === 110 || keyCode === 190) || /* decimal separator     */
    (keyCode === 8 || keyCode === 46); /* back-space and delete */
main();

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
$(document).on('click', '.dynamicSubmitButton', function() {
    alert('hello');
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
    formData.append("from", "pos");
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
            //location.reload();
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                toast("success", "Data added successfully");
                $("#" + modalId).modal("hide");
                var table = $(this).parent().parent().parent().parent().find(".frontendDynamicForm").find('input[name="table"]').val();
                if (table == 'customers') {
                    $(".ypquertdvp").html(json.data.name);
                    $(".zreztcswsn").html(json.data.mobile);
                    $(".gkbsidbjhs").html(json.data.currentBalance);
                    $(".nmcjehiquz").html(json.data.rewardPoints);
                }
                if (table == 'customer_ledger_wallet') {
                    $("#xjeivqykta").load(location.href + " #xjeivqykta");
                }
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
$(document).ready(function() {
    $('.select2').select2();
    totalCart();
});
$(document).on('click', '.zumijhnuub', function() {
    $(".lqdknzeigq").hide();
    $(".yucjolghct").html("Send OTP");
    $(".mznpuwzcoo").attr("readonly", "readonly");
    $(".mznpuwzcoo").val("");
    $("#otpToUseRewardModal").modal("show");
});
$(document).on('click', '.nrfxvbmuzf', function() {
    $("#otpToUseRewardModal").modal("hide");
});
$(document).on('click', '.lqrwhmuvjf', function() {
    $("#skipRewardOtpModal").modal("show");
});
$(document).on('click', '.jojluqojvi', function() {
    $("#skipRewardOtpModal").modal("hide");
});
$(document).on('click', '.pkhplghgti', function() {
    $("#addCustomerModal").modal("show");
    $("#frontendDynamicForm21 input[name='openingBalance']").parent().parent().show();
    $("#frontendDynamicForm21 select[name='cityId']").parent().parent().removeClass("col-md-4");
    $("#frontendDynamicForm21 select[name='cityId']").parent().parent().addClass("col-md-3");
    $("#frontendDynamicForm21 select[name='stateId']").parent().parent().removeClass("col-md-4");
    $("#frontendDynamicForm21 select[name='stateId']").parent().parent().addClass("col-md-3");
    $("#frontendDynamicForm21 select[name='countryId']").parent().parent().removeClass("col-md-4");
    $("#frontendDynamicForm21 select[name='countryId']").parent().parent().addClass("col-md-3");
    $("#frontendDynamicForm21 select[name='customerGroupId']").parent().parent().removeClass("col-md-4");
    $("#frontendDynamicForm21 select[name='customerGroupId']").parent().parent().addClass("col-md-3");
});
$(document).on('click', '.hsmebjmxlg', function() {
    $("#addCustomerModal").modal("hide");
});
$(document).on('click', '.kxaqwblsrv', function() {
    $("#amountPaidToTheCustomer").modal("show");
});
$(document).on('click', '.thpvhuvazk', function() {
    $("#amountPaidToTheCustomer").modal("hide");
});
$(document).on('click', '.xkvawimkrj', function() {
    var productId = $(this).attr("data-id");
    var price = $(this).html();
    $(".nonmxmvurw").val(productId);
    $(".mznpuwzcoo").val(price);
    $("#changePriceModal").modal("show");
});
$(document).on('click', '.xyuguqfqxo', function() {
    $("#changePriceModal").modal("hide");
});
$(document).on('click', '.tmywzlmytl', function() {
    $("#addPaymentToCustomer").modal("show");
});
$(document).on('click', '.egdmkczybf', function() {
    $("#addPaymentToCustomer").modal("hide");
});
$(document).on('click', '.oizfbjddqq', function() {
    if ($(".ifgrtfiuqw").length == 0) {
        toast("error", "Cart empty");
    } else {
        $("#orderTotalModal").modal("show");
    }
});
$(document).on('click', '.exyezprljc', function() {
    $("#orderTotalModal").modal("hide");
});
$(document).on('click', '.hbqskdsvrd', function() {
    $("#runningOrderModal").modal("show");
});
$(document).on('click', '.eyhittgdbt', function() {
    $("#runningOrderModal").modal("hide");
});
$(document).on('click', '.elvjqsptjs', function() {
    var html = $(this).html();
    var context = $(this);
    $(this).html('<i class="fa-solid fa-circle-pause"></i>');
    $(this).prop('disabled', true);
    $(".nknmyxjszh").show();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/clearPosData",
        data: "_token=" + token,
        success: function(data) {
            $("#xjeivqykta").load(location.href + " #xjeivqykta");
            $(context).html(html);
            $(context).prop('disabled', false);
            $(".nknmyxjszh").hide();
            $(".voptyhycaj").select2("val", "");
            $(".ueekytclsn").select2("val", "");
            $(".pnaekqlgpu").val("");
            $(".iurrzhfiti").val("");
            $(".wudhonlgmp").val("");
            $(".hlqcchvedu").val("");
            $(".cdqzxcqicd").val("Walk In Customer");
            $(".akbmamllxh").html("0");
            $(".utslibohbo").html("");
            $(".zotzqhlnxx").html('<tr class="fouzzopram"><td colspan="5"><img src="' + baseUrl + '/backend/assets/pos/empty.png" class="gkaypbrfnm"></td></tr>');
            $(".voptyhycaj").val("").trigger('change');
            $(".ueekytclsn").val("").trigger('change');
            $(".snnfcfhdcy").val("").trigger('change');
            totalCart();
            toast("success", "Data Cleared");
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.jmlcfeockz', function() {
    var name = $(".iurrzhfiti").val();
    var mobile = $(".wudhonlgmp").val();
    if (name == "") {
        toast("error", "Name cant be null");
        $(".iurrzhfiti").css("border", "1px solid red");
        return false;
    }
    if (mobile == "") {
        toast("error", "Mobile cant be null");
        $(".wudhonlgmp").css("border", "1px solid red");
        return false;
    }
    var html = $(this).html();
    var context = $(this);
    $(this).html('<i class="fa-solid fa-circle-pause"></i>');
    $(this).prop('disabled', true);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/quick-add-customer",
        data: "name=" + name + "&mobile=" + mobile + "&_token=" + token,
        success: function(data) {
            location.reload();
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $("#xjeivqykta").load(location.href + " #xjeivqykta", function() {
                    $(context).html(html);
                    $(".iurrzhfiti").val("");
                    $(".wudhonlgmp").val("");
                    toast("success", "Data Added Successfully");
                    $(context).prop('disabled', false);
                });
            } else {
                toast("error", json.message);
                $(context).html(html);
                $(context).prop('disabled', false);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('keyup', '.iurrzhfiti,.wudhonlgmp', function() {
    var name = $(".iurrzhfiti").val();
    var mobile = $(".wudhonlgmp").val();
    if (name != "") {
        $(".iurrzhfiti").css("border", "1px solid #ced4da");
    }
    if (mobile != "") {
        $(".wudhonlgmp").css("border", "1px solid #ced4da");
    }
});
// $(document).on('change', '.voptyhycaj', function() {
//     var categoryId = $(this).val();
//     $(".nknmyxjszh").show();
//     $.ajax({
//         type: 'POST',
//         url: baseUrl + "/admin/set-category-pos",
//         data: "categoryId=" + categoryId + "&_token=" + token,
//         success: function(data) {
//             $(".lzyoqmylwh").load(location.href + " .lzyoqmylwh", function() {
//                 $(".nknmyxjszh").hide();
//             });
//         },
//         error: function(data) {}
//     });
//     return false;
// });

function setCategory(button) {
    var categoryId = $(button).data('id'); // Get category ID from data-id attribute

    // Change button color to red and reset others back to primary
    $(".flexDiv button").removeClass("btn-danger").addClass("btn-primary"); // Reset all buttons
    $(button).removeClass("btn-primary").addClass("btn-danger"); // Change clicked button to danger

    $(".nknmyxjszh").show(); // Show loader

    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-category-pos",
        data: {
            categoryId: categoryId,
            _token: token
        },
        success: function(data) {
            $(".lzyoqmylwh").load(location.href + " .lzyoqmylwh", function() {
                $(".nknmyxjszh").hide(); // Hide loader after content reloads
            });
        },
        error: function(xhr, status, error) {
            console.error("Error:", error);
            $(".nknmyxjszh").hide(); // Hide loader in case of error
        }
    });

    return false;
}


$(document).on('change', '.ueekytclsn', function() {
    var manufacturerId = $(this).val();
    $(".nknmyxjszh").show();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-manufacturer-pos",
        data: "manufacturerId=" + manufacturerId + "&_token=" + token,
        success: function(data) {
            $(".lzyoqmylwh").load(location.href + " .lzyoqmylwh", function() {
                $(".nknmyxjszh").hide();
            });
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('keyup', '.qcjmjrbsop', function() {
    var quantity = 0;
    $(".qcjmjrbsop").each(function(index) {
        if (parseInt($(this).val()) == "") {
            quantity += parseInt(1);
        } else {
            quantity += parseInt($(this).val());
        }
    });
    $(".fchdbybagj").html(quantity);
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

function isNumberKey(txt, evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (txt.value.indexOf('%') === -1) {
        return true;
    }
    if (charCode == 46) {
        if (txt.value.indexOf('.') === -1) {
            return true;
        } else {
            return false;
        }
    } else {
        if (charCode > 31 && (charCode < 48 || charCode > 57)) return false;
    }
    return true;
}
$(document).on('click', '.mjhnxodsgc', function() {
    var json = $(this).attr("data-json");
    var page = $(this).attr("data-page");
    json = $.parseJSON(json);
    console.log(json);
    
    var productId = json.productId;
    var error = 0;
    if (orderTypeRequired == 1) {
        var orderTypeValue = $(".snnfcfhdcy").val();
        if (orderTypeValue == "") {
            toast("error", "Please select order type first");
            error = 1;
            return false;
        }
        if (orderTypeValue == "DineIn" && $(".fspqembzib").length == 0) {
            toast("error", "Please select table to place an order");
            error = 1;
            return false;
        }
    }
    $(".zotzqhlnxx tr").each(function(index) {
        if ($(this).find(".ucyspmmbme").length == 1 && json.productType == 'Hotel') {
            toast("error", "Hotel room already added in the cart");
            error = 1;
            return false;
        }
    });
    if (onProductCllickIncreasePosQuantity == 1) {
        $(".zotzqhlnxx tr").each(function(index) {
            if ($(this).attr("data-id") == json.productId) {
                var qty = $(this).find(".qcjmjrbsop").val();
                if (json.productType == 'Hotel') {
                    $(this).find(".qcjmjrbsop").val(1);
                    $(this).find(".qcjmjrbsop").trigger("blur");
                } else {
                    $(this).find(".qcjmjrbsop").val(parseInt(qty) + 1);
                    $(this).find(".qcjmjrbsop").trigger("blur");
                }
                error = 1;
                return false;
            }
        });
    } else {
        $(".zotzqhlnxx tr").each(function(index) {
            if ($(this).attr("data-id") == json.productId) {
                toast("error", "Product already added in the cart.");
                error = 1;
                return false;
            }
        });
    }
    if (json.quantity < 1) {
        toast("error", "Quantity is not sufficient");
        error = 1;
        return false;
    }
    if (error == 0) {
        var html = '<tr class="ifgrtfiuqw ifgrtfiuqw' + json.productId + '" data-id="' + json.productId + '">';
        html += '<td>';
        html += '<div class="jqkorjasuq" data-id="' + json.productId + '">' + json.heading + '</div>';
        if (showBarcode == 1) {
            html += '<div class="gmnmbdygnw">' + barCodeLanguage + ' : <span class="zuexkraafh">' + json.barcode + '</span></div>';
        }
        if (showModal == 1) {
            html += '<div class="gmnmbdygnw">' + modalLanguage + ' : <span class="zuexkraafh">' + json.model + '</span></div>';
        }
        if (enableTaxes == 1) {
            if (json.taxInclusiveValue != 0) {
                var taxValue = json.taxInclusiveValue;
            } else {
                var taxValue = json.taxExclusiveValue;
            }
            html += '<div class="gmnmbdygnw">' + taxLanguage + ' (' + json['taxType'] + ') : <span class="zuexkraafh">' + json.taxHeading + '<br> (<span class="asxigmquih">' + taxValue.toFixed(2) + '</span>)</span></div>';
        }
        if (showExtraInformtionPopup == 1 && json.productType != 'Hotel') {
            html += '<div class="qxuzwreqdt">';
            html += '<span class="dzlgfmdxvn" data-extraInformation="" data-id="' + json.productId + '">' + showExtraInformtionPopupLanguage + '</span>';
            html += '<span class="kexlkbindt"></span>';
            html += '</div>';
        } else {
            html += '<span class="ucyspmmbme" style="text-decoration: underline;cursor: pointer;" data-id="' + json.productId + '">Attach Details</span>';
        }
        html += '</td>';
        html += '<td>';
        
        html += '<input type="text" style="width:50px;text-align: center;" data-id="' + json.productId + '" class="form-control qcjmjrbsop isNatural" value="1">';
        html += '</td>';
        html += '<td><input type="text" style="width:50px;text-align: center;" data-id="' + json.productId + '" class="form-control vojotpessc percentage" value="0"></td>';
        if (json.changePriceDuringBilling == 1) {
            html += '<td class="symbol"><span class="kmaziybpmu xkvawimkrj" data-id="' + json.productId + '">' + json.price + '</span></td>';
        } else {
            html += '<td class="symbol"><span class="kmaziybpmu">' + json.price + '</span></td>';
        }
        html += '<td class="symbol"><span class="akbvtlipgp">' + json.price + '</span><i class="fa-solid fa-trash pull-right twqysfgott" data-id="' + json.productId + '"></i></td>';
        html += '</tr>';
        $(".fouzzopram").hide();
        if (page != 'pos-simple') {
            if (cartAppendStyle == "append") {
                $(".zotzqhlnxx").append(html);
                if ($(".tableFixHead")[0]) {
                    $(".tableFixHead").animate({
                        scrollTop: $(".tableFixHead")[0].scrollHeight
                    }, 1000);
                } else {
                    if (page != 'pos-simple') {
                        $(".tableFixHeadWithoutQuickAdd").animate({
                            scrollTop: $(".tableFixHeadWithoutQuickAdd")[0].scrollHeight
                        }, 1000);
                    }
                }
            } else {
                $(".zotzqhlnxx").prepend(html);
            }
        }
        $(".gejarqqfgd").html($(".ifgrtfiuqw").length);
        var quantity = 0;
        $(".qcjmjrbsop").each(function(index) {
            quantity += parseInt($(this).val());
        });
        $(".fchdbybagj").html(quantity);
        var pId = json.productId;
        var productType = json.productType;
        $(".trsvjbfsof").html("");
        $(".trsvjbfsof").hide("");
        if (page == 'pos-simple') {
            var tot = parseInt($(".ifgrtfiuqw").length) + 1;
            html = '<tr class="ifgrtfiuqw" data-id="' + json.productId + '">';
            html += '<td>' + tot + '</td>';
            html += '<td>' + json.barcode + '</td>';
            html += '<td>' + json.heading + '</td>';
            html += '<td><input type="text" style="width:100%;text-align: center;" data-id="' + json.productId + '" class="form-control qcjmjrbsop isNatural" value="1"></td>';
            html += '<td>PCS</td>';
            html += '<td><input type="text" style="width:100%;text-align: center;" class="form-control vojotpessc percentage" data-id="' + json.productId + '" value="0"></td>';
            html += '<td class="symbol"><span class="kmaziybpmu data-id="' + json.productId + '">' + json.price + '</span></td>';
            html += '<td align="right" class="symbol"><span class="akbvtlipgp">' + json.price + '</span></td>';
            html += '<td><i class="fa-solid fa-trash pull-right twqysfgott" style="color:#5bc273" data-id="' + json.productId + '"></i></td>';
            html += ' </tr>';
            $(".zotzqhlnxx").append(html);
        }
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/set-cart-pos",
            data: "productId=" + json.productId + "&_token=" + token,
            success: function(data) {
                var json = $.parseJSON(data);
                if (json.status == "success") {
                    $('.ifgrtfiuqw' + productId).toggleClass('base highlighted');
                    $('.twqysfgott[data-id=' + productId + ']').css('color', '#5bc273');
                    setTimeout(function() {
                        $('.ifgrtfiuqw' + productId).removeClass('base highlighted');
                    }, 1000);
                    if (productType == 'Hotel') {
                        $('.inrqwlsqvg[data-id="' + pId + '"]').addClass('phjmxgubwz');
                        $('.inrqwlsqvg[data-id="' + pId + '"]').trigger('click');
                    }
                    totalCart();
                } else {
                    toast("error", json.message);
                }
            },
            error: function(data) {}
        });
        return false;
    }
});

function setTotalsValueCheckout(json) {
    $(".gejarqqfgd").html(json.data.totalItemsInCart);
    $(".fchdbybagj").html(json.data.totalQuantityInCart);
    $(".tkhqljglpj").html(json.data.subTotal);
    $(".jhswgwguhq").html(json.data.productDiscount);
    $(".somxmhodzr").html(json.data.tax);
    $(".rgicmfwsdb").html(json.data.rewardPoints);
    $(".jjtopmmhob").html(Math.round(json.data.total));
    if (json.data.globalDiscount == "") {
        $(".fvwuionill").hide();
        $(".ykmnjpxvoj").val("0");
    } else {
        $(".xuphzwvpxk").html(json.data.globalDiscount);
        $(".petxwuyzfd").html(json.data.globalDiscountValue);
    }
    if (json.data.additionalCharges.length != "") {
        var html = "";
        $.each(json.data.additionalCharges, function(keyName, keyValue) {
            html += '<tr>';
            html += '<td width="70%" class="prtduitanr">' + keyName + ' (<span data-key="' + keyName + '" class="hgwajgrogq">Remove</span>)</td>';
            html += '<td style="vertical-align:top;text-align:right;" class="jmsxcnsuet akbmamllxh symbol">' + keyValue + '</td>';
            html += '</tr>';
        });
        $(".utslibohbo").html(html);
    }
}
$(document).on('blur', '.qcjmjrbsop,.vojotpessc', function() {
    var quantity = $(this).parent().parent().find('.qcjmjrbsop').val();
    var price = $(this).parent().parent().find('.kmaziybpmu').html();
    var discount = $(this).parent().parent().find('.vojotpessc').val();
    var productId = $(this).attr("data-id");
    var context = $(this);
    if ($.trim(quantity) == "") {
        quantity = 1;
    }
    if ($.trim(discount) == "") {
        $(this).val(0);
    }
    $(this).parent().parent().find('.akbvtlipgp').html(parseInt(quantity) * parseInt(price));
    $(".qcjmjrbsop").attr("disabled", "disabled");
    $(".vojotpessc").attr("disabled", "disabled");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/update-quantity-discount-in-pos-cart",
        data: "productId=" + productId + "&quantity=" + quantity + "&discount=" + encodeURIComponent(discount) + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                totalCart();
            } else {
                $(context).val(json.quantityAvaliable);
                $(context).trigger("blur");
                toast("error", json.message);
            }
            $(".vojotpessc").removeAttr("disabled");
            $(".qcjmjrbsop").removeAttr("disabled");
            //calculate();
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.twqysfgott', function() {
    var productId = $(this).attr("data-id");
    var context = $(this);
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/delete-item-from-cart",
        data: "productId=" + productId + "&delete=" + productId + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).closest("tr").remove();
                if ($(".zotzqhlnxx .ifgrtfiuqw").length == 0) {
                    $(".fouzzopram").css('display', 'block');
                    $(".zotzqhlnxx").html('<tr class="fouzzopram"><td colspan="5"><img src="' + baseUrl + '/backend/assets/pos/empty.png" class="gkaypbrfnm"></td></tr>');
                }
                if (json.productType == '1') {
                    //alert("hotel");
                    $('.inrqwlsqvg[data-id="' + productId + '"]').removeClass('phjmxgubwz');
                }
                totalCart();
            } else {
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.dzlgfmdxvn', function() {
    var productId = $(this).attr("data-id");
    var extraInformation = $(this).parent().find(".kexlkbindt").html();
    $("#addExtraInformationModal").modal("show");
    $(".udqoycldon").val(productId);
    $(".qqhkrzdwvr").val(extraInformation);
    $(".zhbckfjebb").val(extraInformation);
});
$(document).on('click', '.wjrqsbgwqr', function() {
    $("#addExtraInformationModal").modal("hide");
});
$(document).on('click', '.eknchfanuv', function() {
    var productId = $(".udqoycldon").val();
    var extraInformation = $(".qqhkrzdwvr").val();
    var extraInformation2 = $(".zhbckfjebb").val();
    if ($.trim(extraInformation2) != '') {
        extraInformation = extraInformation2;
    }
    var context = $(this);
    var html = $(this).html();
    $(".eknchfanuv").html("Saving...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-additional-information",
        data: "productId=" + productId + "&extraInformation=" + extraInformation + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                $(".udqoycldon").val(0);
                $(".qqhkrzdwvr").val("");
                $(".zhbckfjebb").val("");
                $("#addExtraInformationModal").modal("hide");
                $('.zotzqhlnxx tr[data-id="' + productId + '"]').find(".kexlkbindt").html(extraInformation);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('keyup', '.pnaekqlgpu', function() {
    var search = $(this).val();
    var page = $(this).attr("data-page");
    if (search == '' && page == 'pos-simple') {
        $(".trsvjbfsof").hide();
        return false;
    }
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/get-products",
        data: "search=" + search + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            var html = "";
            $(".trsvjbfsof").show();
            for (let i = 0; i < json.length; i++) {
                let obj = json[i];
                if (restaurant == 1) {
                    html += "<div data-json='" + JSON.stringify(obj) + "' class='mjhnxodsgc child' data-page=" + page + ">";
                } else {
                    //html += '<div data-json="' + JSON.stringify(obj) + '" class="mjhnxodsgc childNoRestaurant">';
                    html += "<div data-json='" + JSON.stringify(obj) + "' class='mjhnxodsgc childNoRestaurant' data-page=" + page + ">";
                }
                html += '<div class="eplxwhepxa symbol">' + obj.price + '</div>';
                html += '<div class="waifqtsovw">' + qtyLanguage + ':' + obj.quantity + '</div>';
                html += '<div class="eplxwhepxa"></div>';
                if (showImage == 1) {
                    html += '<div><img src="' + baseUrl + "/" + obj.image + '" class="inqiowvkgz"></div>';
                }
                if (showImage != 1) {
                    html += '<div class="sixherwpuw oqmseozavb" style="margin-top:20px;">' + obj.heading + '</div>';
                } else {
                    html += '<div class="sixherwpuw oqmseozavb"">' + obj.heading + '</div>';
                }
                if (showBarcode == 1) {
                    html += '<div class="sixherwpuw">' + barCodeLanguage + ' : <span>' + obj.barcode + '</span></div>';
                }
                if (showModal == 1) {
                    html += '<div class="sixherwpuw">' + modalLanguage + ' : <span>' + obj.model + '</span></div>';
                }
                html += '</div>';
            }
            $(".parent").html(html);
            if (page == "pos-simple") {
                html = "<ul class='mfakldsqtk' style='background:white;width:498px;'>";
                for (let i = 0; i < json.length; i++) {
                    let obj = json[i];
                    html += "<li>";
                    html += "<div data-json='" + JSON.stringify(obj) + "' class='mjhnxodsgc childNoRestaurant' data-page=" + page + ">";
                    if (showImage == 1) {
                        html += '<div style="display:inline-block;padding:5px;">';
                        html += '<img style="height:35px;width:35px;display:block" src="' + baseUrl + "/" + obj.image + '" class="inqiowvkgz">';
                        html += '</div>';
                    }
                    html += '<div style="display:inline-block;font-size:14px;vertical-align:top;margin-left:10px;" class="sixherwpuw oqmseozavb"">' + obj.heading + '<br>';
                    html += obj.barcode;
                    html += '</div>';
                    html += '</div>';
                    html += '</li>';
                }
                html += "</ul>";
            }
            $(".trsvjbfsof").html(html);
            if (json.length == 1) {
                $(".mjhnxodsgc").trigger("click");
                $(".pnaekqlgpu").val("");
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('keyup', '.cdqzxcqicd', function() {
    var search = $(this).val();
    if ($.trim(search) == "") {
        $(".pjgkzsiken").hide();
    }
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/get-customer",
        data: "search=" + search + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            $(".pjgkzsiken").show();
            var html = "<ul>";
            var v = 0;
            for (let i = 0; i < json.length; i++) {
                let obj = json[i];
                html += '<li class="qxcqgvgyft" data-id="' + obj.customerId + '">' + obj.name + ' - <span>' + obj.mobile + '</span></li>';
                v++;
            }
            html += '</ul>';
            $(".pjgkzsiken").html(html);
            if($(".qxcqgvgyft").length == 1 && v == 1 && $(".qxcqgvgyft span").html() == search){
                console.log("hello")
                $(".qxcqgvgyft").trigger("click");
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.qxcqgvgyft', function() {
    var customerId = $(this).attr("data-id");
    $(".pjgkzsiken").hide();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-customer-pos",
        data: "customerId=" + customerId + "&_token=" + token,
        success: function(data) {
            $("#xjeivqykta").load(location.href + " #xjeivqykta", function() {
                $(".jdmegedtfz").toggleClass("trColorClass").fadeOut(100, function() {
                    $(this).toggleClass("trColorClass").fadeIn(100);
                });
                $(".pjgkzsiken").html("");
                $(".cdqzxcqicd").val($(".ypquertdvp").html());
                totalCart();
            });
            $("#rkuuefljil").load(location.href + " #rkuuefljil", function() {});
            if (page == 'pos-simple') {
                var json = $.parseJSON(data);
                $(".customerId").val(json.data.name);
                $(".loqxflvmbu").val(json.data.mobile);
                $(".opvpttudfr").val(json.data.walletBalance);
                $(".fbqfjkccdw").val(json.data.rewardPoints);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.oopqnjttiw', function() {
    var html = $(".dhczlwwitd").html();
    $(".paatkzwsbf").append('<tr class="dhczlwwitd">' + html + '</tr>');
    $(".paatkzwsbf tr:last").find('.hyvilgkkno').html('<div class="btn btn-warning wssoxkvqbf">-</div>');
});
$(document).on('click', '.wssoxkvqbf', function() {
    $(this).closest("tr").remove();
});
$(document).on('click', '.hazsdirwkr', function() {
    if ($(this).hasClass("txyksvijpk")) {
        $(".bmhwaxmrap").show();
    } else {
        $(".bmhwaxmrap").hide();
    }
    $(".hazsdirwkr").removeClass("kxbkwzcope");
    var context = $(this);
    $(context).addClass("kxbkwzcope");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-payment-method",
        data: "paymentId=" + $(context).attr("data-id") + "&_token=" + token,
        success: function(data) {
            $(".kjjjudpgev").attr("data-id", $(context).attr("data-id"));
            $(".kjjjudpgev").html($(context).html());
            totalCart();
            $(".bmhwaxmrap").load(location.href + " .bmhwaxmrap", function() {});
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.anleefcqnn', function() {
    if (orderTypeRequired == 1) {
        var orderTypeValue = $(".snnfcfhdcy").val();
        if (orderTypeValue == "") {
            toast("error", "Please select order type first");
            error = 1;
            return false;
        }
        if (orderTypeValue == "DineIn" && $(this).hasClass("jipygxdcve")) {
            toast("error", "You cant remove table because order type is Dine In");
            error = 1;
            return false;
        }
    }
    if (enableOrderType == 1) {
        var orderTypeValue = $(".snnfcfhdcy").val();
        if (orderTypeValue != "DineIn") {
            toast("error", "Please select order type Dine In to select table");
            error = 1;
            return false;
        }
    }
    $(".anleefcqnn").removeClass("fspqembzib");
    $(this).addClass("fspqembzib");
    var table = $(this).attr("data-id");
    var error = 0;
    if (error == 0) {
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/set-table-for-order",
            data: "seatingTableId=" + table + "&_token=" + token,
            success: function(data) {
                //$(".oizfbjddqq").show();
                location.reload();
            },
            error: function(data) {}
        });
        return false;
    }
});
$(document).on('click', '.tnqnlhuldn', function() {
    var html = $(".jlpydkiuvl").html();
    $(".jmuhdzdnhr").append('<tr class="dhczlwwitd">' + html + '</tr>');
    $(".jmuhdzdnhr tr:last").find('.nshasolzqx').html('<div class="btn btn-warning awozixezld">-</div>');
});
$(document).on('click', '.awozixezld', function() {
    $(this).closest("tr").remove();
});
$(document).on('change', '.snnfcfhdcy ', function() {
    var orderType = $(this).val();
    var selectedTable = $(".fspqembzib").length;
    var cartLength = $(".ifgrtfiuqw").length;
    if (orderType != 'DineIn' && selectedTable > 0) {
        toast("error", "Table removed because Order Type is not Dine In");
        $(".anleefcqnn").removeClass("fspqembzib");
    }
    if (orderType == 'DineIn' && cartLength > 0 && selectedTable == 0) {
        toast("error", "Please select table to proceed");
        //$(".oizfbjddqq").hide();
    } else {
        //$(".oizfbjddqq").show();
    }
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-order-type",
        data: "orderType=" + orderType + "&_token=" + token,
        success: function(data) {},
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.ytjeufczfu ', function() {
    var html = $(this).html();
    var context = $(this);
    $(this).html("Saving...");
    var data = {};
    $(".adtqciqetx").each(function(index) {
        var label = $(".adtqciqetx").eq(index).val();
        var value = $(".ebvjekillz").eq(index).val();
        if (label != "" && (value != "" && value != 0)) {
            data[label] = value;
        }
    });
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-additional-costs",
        data: "additionalCharges=" + JSON.stringify(data) + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                totalCart();
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.scnqjwalyl ', function() {
    var html = $(this).html();
    var context = $(this);
    $(this).html("Saving...");
    var data = {};
    var count = 0;
    $(".zhfrtvawty").each(function(index) {
        var label = $(".zhfrtvawty").eq(index).val();
        var value = $(".dxzhvatgkq").eq(index).val();
        if (label != "" && (value != "" && value != 0)) {
            data[label] = value;
            count++;
        }
    });
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-multiple-payment-methods",
        data: "multiple=" + JSON.stringify(data) + "&count=" + count + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                toast("success", "Multiple payment method applied successfully");
                totalCart();
            } else {
                /*$(".bmhwaxmrap").load(location.href + " .bmhwaxmrap", function() {
                        $('.hazsdirwkr[data-id="' + defaultPaymentMethod + '"]').trigger('click');
                 });*/
                toast("error", json.message);
                $(context).html(html);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.hgwajgrogq ', function() {
    var html = $(this).html();
    var context = $(this);
    var key = $(this).attr("data-key");
    $(this).html("Removing...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/remove-additional-cost-by-key",
        data: "additionalCostkey=" + key + "&_token=" + token,
        success: function(data) {
            $(".jcrzyvykvc").load(location.href + " .jcrzyvykvc");
            totalCart();
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.vcifezirdo ', function() {
    var html = $(this).html();
    var context = $(this);
    var discount = $(".ykmnjpxvoj").val();
    $(this).html("Applying...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-global-discount",
        data: "discount=" + discount + "&_token=" + token,
        success: function(data) {
            $(context).html(html);
            totalCart();
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('blur', '.faqsvztvml ', function() {
    var points = $(this).val();
    var context = $(this);
    if (points != "") {
        $(this).attr("disabled", "disabled");
    }
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/redeem-reward-points",
        data: "points=" + points + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).removeAttr("disabled");
                totalCart();
            } else {
                $(context).removeAttr("disabled");
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.tutwtgfgdr ', function() {
    var orderId = $(this).attr("order-id");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-order-id-edit",
        data: "orderId=" + orderId + "&_token=" + token,
        success: function(data) {
            location.reload();
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.oavyfxaopn ', function() {
    var productId = $(".nonmxmvurw").val();
    var price = $(".mznpuwzcoo").val();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/change-runtime-price",
        data: "productId=" + productId + "&price=" + price + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $("#lllnnlgotb").load(location.href + " #lllnnlgotb", function() {
                    $("#changePriceModal").modal("hide");
                    totalCart();
                });
                if (page == 'pos-simple') {
                    $("#changePriceModal").modal("hide");
                }
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('keyup', '.wudhonlgmp ', function() {
    var length = $(this).val().length;
    if (length == 0) {
        $(".pjgkzsiken").html("");
        $(".pjgkzsiken").hide();
    }
    if (length > 4) {
        var mobile = $(this).val();
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/check-quick-add-customer-mobile",
            data: "mobile=" + mobile + "&_token=" + token,
            success: function(data) {
                var json = $.parseJSON(data);
                $(".pjgkzsiken").show();
                var html = "<ul>";
                for (let i = 0; i < json.length; i++) {
                    let obj = json[i];
                    html += '<li class="qxcqgvgyft" data-id="' + obj.customerId + '">' + obj.name + ' - ' + obj.mobile + '</li>';
                }
                html += '</ul>';
                $(".pjgkzsiken").html(html);
            },
            error: function(data) {}
        });
        return false;
    }
    /*var orderId = $(this).attr("order-id");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/set-order-id-edit",
        data: "orderId=" + orderId+"&_token=" + token,
        success: function(data) {
            location.reload();
        },
        error: function(data) {}
    });
    return false;*/
    //alert($(this).val().length);
});

function totalCart() {
    $(".dfccowismj").html('<img src="' + baseUrl + '/backend/loader.gif" style="width:100px;display:block;margin:auto;margin-top:100px;">');
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/pos-total-cart",
        data: "_token=" + token,
        success: function(data) {
            $(".dfccowismj").html(data);
        },
        error: function(data) {}
    });
    return false;
}
$(document).on('click', '.kipxcfuiuv,.ucduyqmgff', function() {
    var html = $(this).html();
    var orderTypeCheckout = $(this).attr("data-id");
    var context = $(this);
    if (orderTypeRequired == 1) {
        var orderTypeValue = $(".snnfcfhdcy").val();
        if (orderTypeValue == "") {
            toast("error", "Please select order type first");
            error = 1;
            return false;
        }
        if (orderTypeValue == "DineIn" && $(".fspqembzib").length == 0) {
            toast("error", "Please select table to place an order");
            error = 1;
            return false;
        }
    }
    if (salesPersonRequired == 1 && $(".hlqcchvedu").val() == "") {
        toast("error", "Please select sales person first");
        error = 1;
        return false;
    }
    var form = new FormData();
    if (orderTypeCheckout == "sendToKot") {
        form.append("orderType", orderTypeValue);
        form.append("checkoutType", 'sendToKot');
        form.append("hold", 1);
    } else if (orderTypeCheckout == "hold") {
        form.append("orderType", orderTypeValue);
        form.append("checkoutType", 'hold');
        form.append("hold", 1);
    } else if (orderTypeCheckout == "finalCheckout") {
        form.append("orderType", orderTypeValue);
        form.append("checkoutType", 'finalCheckout');
        form.append("hold", 0);
    }
    form.append("employeeId", $(".hlqcchvedu").val());
    form.append("posComment", $(".vtevgyicqb").val());
    form.append("deliveryDate", $(".tjksphrcmh").val());
    form.append('posImage', $('.cfqsyiujrf')[0].files[0]);
    form.append("_token", token);
    if ($(".kxbkwzcope").length != 0) {
        form.append("paymentId", $(".kxbkwzcope").attr("data-id"));
    }
    if ($(".kxbkwzcope").hasClass('txyksvijpk')) {
        form.append("paymentId", $(".kxbkwzcope").attr("data-id"));
    }
    $(".kipxcfuiuv").hide();
    $(".oizfbjddqq").hide();
    $(".ucduyqmgff").hide();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/checkout",
        data: form,
        cache: false,
        contentType: false,
        processData: false,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            console.log(json.status);
            
            if (json.status == "success") {
                if (orderTypeCheckout != 'hold') {
                    var url = baseUrl + "/admin/invoice/" + json.type + "/" + json.orderId;
                    window.open(url, '_blank');
                }
                location.reload();
            } else {
                $(context).removeAttr("disabled");
                if (json.type == "multipleMisMatch") {
                    toast("error", json.message);
                    $(".bmhwaxmrap").load(location.href + " .bmhwaxmrap", function() {
                        $('.hazsdirwkr[data-id="' + defaultPaymentMethod + '"]').trigger('click');
                    });
                } else {
                    toast("error", json.message);
                }
            }
            $(".kipxcfuiuv").show();
            $(".oizfbjddqq").show();
            $(".ucduyqmgff").show();
        },
        error: function(data) {
            $(".kipxcfuiuv").show();
            $(".oizfbjddqq").show();
            $(".ucduyqmgff").show();
        }
    });
});
$(document).on('click', '.pfpabpuwbr', function() {
    var html = $(this).html();
    var reason = $(".ppupypyhzm").val();
    var error = 0;
    if ($.trim(reason) == '') {
        toast("error", "Please enter a reason to skip reward OTP.");
        error = 1;
    }
    if (error == 0) {
        var context = $(this);
        Swal.fire({
            title: "Are you sure you want to skip OTP Validation?",
            showCancelButton: true,
            confirmButtonText: "Yes",
        }).then((result) => {
            if (result.isConfirmed) {
                $(context).html("Saving...");
                /*$(context).click(function() {
                    return false;
                });*/
                $(context).attr("disabled", "disabled");
                $.ajax({
                    type: 'POST',
                    url: baseUrl + "/admin/skip-otp-for-reward-validation",
                    data: 'reason=' + reason + "&_token=" + token,
                    success: function(data) {
                        var json = $.parseJSON(data);
                        if (json.status == "success") {
                            //$(context).remove();
                            $(context).html(html);
                            $("#skipRewardOtpModal").modal("hide");
                            $(".faqsvztvml").removeAttr("readonly");
                            $(context).removeAttr("disabled");
                        } else {
                            $(context).html(html);
                            $(context).removeAttr("disabled");
                            toast("error", json.message);
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
    }
});
$(document).on('click', '.yucjolghct ', function() {
    var html = $(this).html();
    var context = $(this);
    $(this).html("Sending...");
    $(".mznpuwzcoo").val("");
    $(".lqdknzeigq").hide();
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/send-otp-for-reward",
        data: "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                $(".lqdknzeigq").show();
                $('.lqdknzeigq').delay(5000).fadeOut('slow');
                $(".yucjolghct").html("Resend OTP");
                $(".mznpuwzcoo").val("");
                $(".mznpuwzcoo").removeAttr("readonly");
            } else {
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.rfilpekahi ', function() {
    var html = $(this).html();
    var context = $(this);
    var otp = $(".mznpuwzcoo").val();
    $(this).html("Validating...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/validate-otp-for-reward",
        data: "otp=" + otp + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                $(".lqdknzeigq").hide();
                $(".yucjolghct").html("Send OTP");
                $(".mznpuwzcoo").val("");
                $(".mznpuwzcoo").removeAttr("readonly");
                $("#otpToUseRewardModal").modal("hide");
                $(".faqsvztvml").removeAttr("readonly");
            } else {
                $(context).html(html);
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.gvrddswwbp ', function() {
    $("#sendReminderToCustomer").modal("show");
});
$(document).on('click', '.etjvtpjmmc ', function() {
    $("#sendReminderToCustomer").modal("hide");
});
$(document).on('click', '.dosnmdzkhr ', function() {
    var value = $(this).attr("data-value");
    var context = $(this);
    var html = $(this).html();
    if (value == "whatsapp") {
        var url = "https://api.whatsapp.com/send?phone=91" + whatsapp + "&text=Hello%20Your%20Payment%20Is%20pending%20of%20rs%20" + $(".gkbsidbjhs").val() + ".";
        window.open(url, '_blank');
    } else {
        $(context).html("Sending...");
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/send-reminder-to-customer",
            data: "value=" + value + "&_token=" + token,
            success: function(data) {
                var json = $.parseJSON(data);
                if (json.status == "success") {
                    $(context).html(html);
                    $("#sendReminderToCustomer").modal("hide");
                    toast("success", "Reminder has been sent successfully");
                } else {
                    $(context).html(html);
                    toast("error", json.message);
                }
            },
            error: function(data) {}
        });
        return false;
    }
});
$(document).on('click', '.mreuiavyie ', function() {
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/edit-customer",
        data: "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $("#frontendDynamicForm21 input[name='update_id']").val(json.data.customerId);
                $("#frontendDynamicForm21 input[name='name']").val(json.data.name);
                $("#frontendDynamicForm21 input[name='mobile']").val(json.data.mobile);
                $("#frontendDynamicForm21 input[name='email']").val(json.data.email);
                $("#frontendDynamicForm21 input[name='openingBalance']").val(json.data.openingBalance);

                $("#frontendDynamicForm21 input[name='walletBalance']").val(json.data.walletBalance);
                $("#frontendDynamicForm21 input[name='rewardPoints']").val(json.data.rewardPoints);
                $("#frontendDynamicForm21 select[name='customerGroupId']").val(json.data.customerGroupId);
                $("#frontendDynamicForm21 select[name='cityId']").val(json.data.cityId);
                $("#frontendDynamicForm21 select[name='stateId']").val(json.data.stateId);
                $("#frontendDynamicForm21 select[name='countryId']").val(json.data.countryId);

                $("#frontendDynamicForm21 input[name='openingBalance']").parent().parent().hide();
                $("#frontendDynamicForm21 select[name='cityId']").parent().parent().removeClass("col-md-3");
                $("#frontendDynamicForm21 select[name='cityId']").parent().parent().addClass("col-md-4");
                $("#frontendDynamicForm21 select[name='stateId']").parent().parent().removeClass("col-md-3");
                $("#frontendDynamicForm21 select[name='stateId']").parent().parent().addClass("col-md-4");
                $("#frontendDynamicForm21 select[name='countryId']").parent().parent().removeClass("col-md-3");
                $("#frontendDynamicForm21 select[name='countryId']").parent().parent().addClass("col-md-4");
                $("#frontendDynamicForm21 select[name='customerGroupId']").val(json.data.customerGroupId);
                $("#frontendDynamicForm21 select[name='customerGroupId']").parent().parent().removeClass("col-md-3");
                $("#frontendDynamicForm21 select[name='customerGroupId']").parent().parent().addClass("col-md-4");

                $("#frontendDynamicForm21 select[name='status']").val(json.data.status);
                $("#frontendDynamicForm21 input[name='gstNo']").val(json.data.gstNo);
                $("#frontendDynamicForm21 input[name='firmName']").val(json.data.firmName);
                $("#frontendDynamicForm21 textarea[name='firmAddress']").val(json.data.firmAddress);
                $("#addCustomerModal").modal("show");
            } else {
                $(context).html(html);
                toast("error", json.message);
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.jqkorjasuq ', function() {
    var productId = $(this).attr("data-id");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/get-product-information",
        data: "productId=" + productId + "&_token=" + token,
        success: function(data) {
            $(".kgqvcmzywj").html(data);
            $("#getProductDetail").modal("show");
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.fxexbqdlol ', function() {
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/remove-room",
        data: "&_token=" + token,
        success: function(data) {
            location.reload();
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('blur', '.ldqspskkad0', function() {
    var gst = $(this).val();
    var error = 0;
    if (gst == '') {
        error = 1;
        toast("error", "Please check GST Field");
    }
    if (error == 0) {
        $("#frontendDynamicForm21 input[name='firmName']").attr("disabled", "disabled");
        $("#frontendDynamicForm21 textarea[name='firmAddress']").attr("disabled", "disabled");
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/get-gst-information",
            data: "gst=" + gst + "&_token=" + token,
            success: function(data) {
                var json = $.parseJSON(data);
                if (json.status == "success") {
                    $("#frontendDynamicForm21 input[name='firmName']").removeAttr("disabled");
                    $("#frontendDynamicForm21 input[name='firmName']").removeAttr("disabled");
                    $("#frontendDynamicForm21 input[name='firmName']").val(json.name);
                    $("#frontendDynamicForm21 textarea[name='firmAddress']").val(json.address);
                }
            },
            error: function(data) {}
        });
    }
    return false;
});
$(document).on('change', '.jkuhyjkszh ', function() {
    var hotelRoomId = $(this).val();
    var error = 0;
    if (hotelRoomId == "") {
        toast("success", "Please select room");
        error = 1;
        return false;
    }
    if (error == 0) {
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/change-hotel-room",
            data: "hotelRoomId=" + hotelRoomId + "&_token=" + token,
            success: function(data) {
                location.reload();
            },
            error: function(data) {}
        });
        return false;
    }
});
$(document).on('change', '.magztvvntu ', function() {
    var orderId = $(this).val();
    var error = 0;
    if (orderId == "") {
        toast("success", "Please select order ID");
        error = 1;
        return false;
    }
    if (error == 0) {
        $.ajax({
            type: 'POST',
            url: baseUrl + "/admin/get-order-product-by-order-id",
            data: "orderId=" + orderId + "&_token=" + token,
            success: function(data) {
                var json = $.parseJSON(data);
                if (json.status == "success") {
                    var html = "";
                    var sno = 1;
                    $(".qawqaxmgvo").html("");
                    $.each(json.orderProducts, function(keyName, keyValue) {
                        html += '<tr class="kiciigfccd' + sno + '">';
                        html += '<td width="20%">' + sno + '</td>';
                        html += '<td width="15%">' + keyValue['heading'] + '<br>' + keyValue['model'] + '' + keyValue['barcode'] + '</td>';
                        html += '<td width="20%"><input type="text" class="form-control nokqxzncqo" data-max="' + keyValue['quantity'] + '" value="1" data-id="' + keyValue['productId'] + '"></td>';
                        html += '<td width="20%" class="ncvacaebto">' + keyValue['price'] + '</td></td>';
                        html += '<td width="15%"><div class="btn btn-primary gnhovxyanc" style="width:100%" data-id="' + keyValue['productId'] + '" data-orderId="' + keyValue['orderId'] + '">Return</div></td>';
                        html += '</tr>';
                        sno++;
                    });
                    $(".qawqaxmgvo").append(html);
                }
            },
            error: function(data) {}
        });
        return false;
    }
});

function returnCalculate() {
    var qty = 0;
    var qtySum = 0;
    var total = 0;
    $(".ekmpoiovzr").each(function() {
        var quantity1 = $(this).parent().parent().find(".nokqxzncqo").val();
        var total2 = $(this).parent().parent().find(".ncvacaebto").html();
        qty++;
        qtySum += parseInt(quantity1);
        total += parseInt(total2) * parseInt(quantity1);
    });
    $(".rwnymzicvx").html(qty);
    $(".ssrvxmxehc").html(qtySum);
    $(".tlzxifeqcb").html(total);
}
$(document).on('blur', '.nokqxzncqo', function() {
    var val = $(this).val();
    var max = $(this).attr("data-max");
    if (parseInt(val) > parseInt(max)) {
        $(this).val(max);
    }
    returnCalculate();
});
$(document).on('click', '.gnhovxyanc', function() {
    var html = '<i class="fa-solid fa-check"></i>';
    $(this).addClass("ekmpoiovzr");
    $(this).html(html);
    returnCalculate();
});
$(document).on('click', '.ekmpoiovzr', function() {
    var html = 'Return';
    $(this).removeClass("ekmpoiovzr");
    $(this).html(html);
    returnCalculate();
});
$(document).on('click', '.ipysmrmfcu', function() {
    var quantity = "";
    var total = "";
    var productId = "";
    var orderId = 0;
    $(".ekmpoiovzr").each(function() {
        var quantity1 = $(this).parent().parent().find(".nokqxzncqo").val();
        var total2 = $(this).parent().parent().find(".ncvacaebto").html();
        quantity += quantity1 + ",";
        total += (parseInt(total2) * parseInt(quantity1)) + ",";
        productId += $(this).attr("data-id") + ",";
        orderId = $(this).attr("data-orderId");
    });
    if ($('.bgvdmjqjmo').is(':checked')) {
        var checked = 1;
    } else {
        var checked = 0;
    }
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/save-product-return-details",
        data: "checked=" + checked + "&quantity=" + quantity + "&orderId=" + orderId + "&total=" + total + "&productId=" + productId + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $("#returnProduct").modal("hide");
                toast("success", "Product returned successfully");
                $("#xjeivqykta").load(location.href + " #xjeivqykta", function() {
                    $(".jdmegedtfz").toggleClass("trColorClass").fadeOut(100, function() {
                        $(this).toggleClass("trColorClass").fadeIn(100);
                    });
                    $(".pjgkzsiken").html("");
                    $(".cdqzxcqicd").val($(".ypquertdvp").html());
                    totalCart();
                });
                $("#rkuuefljil").load(location.href + " #rkuuefljil", function() {});
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.sjzppnuwtr ', function() {
    $("#returnProduct").modal("show");
});
$(document).on('click', '.cfllymijhi ', function() {
    $("#returnProduct").modal("hide");
});
$(document).on('click', '.jtjtsutclm ', function() {
    $("#hotelRoomChangeModal").modal("show");
});
$(document).on('click', '.girwfcwari ', function() {
    $("#hotelRoomChangeModal").modal("hide");
});
$(document).on('click', '.yedwbcchno ', function() {
    $("#getProductDetail").modal("hide");
});
$(document).on('click', '.mdbjzbadvj ', function() {
    var id = $(this).attr("order-id");
    var url = baseUrl + "/admin/order/invoice/" + id;
    window.open(url, '_blank');
});
$(document).on('click', '.inrqwlsqvg,.ucyspmmbme', function() {
    var id = $(this).attr("data-id");
    $(".wimdghlgbo").val(id);
    $("#hotelRoomPopup").modal("show");
});
$(document).on('click', '.ohfsnpyslb', function() {
    $(".wimdghlgbo").val("");
    $("#hotelRoomPopup").modal("hide");
});
$(document).on('click', '.ojdhyoefbp', function() {
    $("#hotelRoomBooked").modal("show");
});
$(document).on('click', '.wvzlrnxfjw', function() {
    $("#hotelRoomBooked").modal("hide");
});
$(document).on('click', '.ipauryfora', function() {
    var d = new Date();
    var month = d.getMonth() + 1;
    var day = d.getDate();
    var output = d.getFullYear() + '-' +
        (('' + month).length < 2 ? '0' : '') + month + '-' +
        (('' + day).length < 2 ? '0' : '') + day;
    $(".bmehnirpbl").val(output);
    var dt = new Date();
    var time = dt.getHours() + ":" + (('' + dt.getMinutes()).length < 2 ? '0' : '') + dt.getMinutes();
    $(".ixojsjdgxu").val(time);
    var dateCheckOut = output;
    var timeCheckOut = time;
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/update-hotel-price-in-cart",
        data: "dateCheckOut=" + dateCheckOut + "&timeCheckOut=" + timeCheckOut + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $("#lllnnlgotb").load(location.href + " #lllnnlgotb", function() {
                    totalCart();
                });
            }
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.lizmusvqgo', function() {
    var heading = $(".ixvsgojvra").val();
    var model = $(".mauyrbrggu").val();
    var quantity = $(".tsfyilfdza").val();
    var hsnCode = $(".rgpdqnkoij").val();
    var cost = $(".sxszfjnqxm").val();
    var price = $(".bovmvqblxq").val();
    var vendorId = $(".sjzovdqwey").val();
    var html = $(".lizmusvqgo").html();
    var context = $(this);
    $(".lizmusvqgo").html("Please Wait...");
    $.ajax({
        type: 'POST',
        url: baseUrl + "/admin/quick-add-product",
        data: "heading=" + heading + "&model=" + model + "&quantity=" + quantity + "&hsnCode=" + hsnCode + "&cost=" + cost + "&price=" + price + "&vendorId=" + vendorId + "&_token=" + token,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(context).html(html);
                toast("success", "Product added successfully");

                var productId = json.message;

                /*if (json.status == "success") {
                    $('.ifgrtfiuqw' + productId).toggleClass('base highlighted');
                    $('.twqysfgott[data-id=' + productId + ']').css('color', '#5bc273');
                    setTimeout(function() {
                        $('.ifgrtfiuqw' + productId).removeClass('base highlighted');
                    }, 1000);
                    
                    totalCart();
                } else {
                    toast("error", json.message);
                }*/

                /* [data] => Array
        (
            [heading] => asdas
            [model] => df
            [quantity] => 1
            [hsnCode] => 1
            [cost] => 1
            [price] => 1
            [vendorId] => 1
            [barcode] => 98321022
            [storeId] => 1
            [userId] => 1
            [dateUpdated] => 2024-08-20 11:22:50
            [insertedBy] => 1
        )*/
                $(".fouzzopram").hide();

                var tot = parseInt($(".ifgrtfiuqw").length) + 1;
                html = '<tr class="ifgrtfiuqw" data-id="' + productId + '">';
                html += '<td>' + tot + '</td>';
                html += '<td>' + json.data.data.barcode + '</td>';
                html += '<td>' + json.data.data.heading + '</td>';
                html += '<td><input type="text" style="width:100%;text-align: center;" data-id="' + productId + '" class="form-control qcjmjrbsop isNatural" value="1"></td>';
                html += '<td>PCS</td>';
                html += '<td><input type="text" style="width:100%;text-align: center;" class="form-control vojotpessc percentage" data-id="' + productId + '" value="0"></td>';
                html += '<td class="symbol"><span class="kmaziybpmu data-id="' + productId + '">' + json.data.data.price + '</span></td>';
                html += '<td align="right" class="symbol"><span class="akbvtlipgp">' + json.data.data.price + '</span></td>';
                html += '<td><i class="fa-solid fa-trash pull-right twqysfgott" style="color:#5bc273" data-id="' + productId + '"></i></td>';
                html += ' </tr>';
                $(".zotzqhlnxx").append(html);
                if (json.status == "success") {
                    $('.ifgrtfiuqw' + productId).toggleClass('base highlighted');
                    $('.twqysfgott[data-id=' + productId + ']').css('color', '#5bc273');
                    setTimeout(function() {
                        $('.ifgrtfiuqw' + productId).removeClass('base highlighted');
                    }, 1000);

                    totalCart();
                } else {
                    toast("error", json.message);
                }


            } else {
                $(context).html(html);
                toast("error", json.message);
            }
            $(".lizmusvqgo").html("Add Product");
        },
        error: function(data) {}
    });
    return false;
});
$(document).on('click', '.iogimlsqtl', function() {
    $(this).closest(".row").remove();
    var i = 1;
    $(".uculleyxsr").each(function() {
        $(this).html(i++);
    });
    var i = 1;
    $(".difulkxnxi").each(function() {
        $(this).html(i++);
    });
    var i = 1;
    $(".jsjdxwinfn").each(function() {
        $(this).attr("name", "personName" + i++);
    });
    var i = 1;
    $(".didxspkzal").each(function() {
        $(this).attr("name", "personId" + i++);
    });
});
$(document).on('click', '.zzimskzjbd', function() {
    var copy = $(".pgllwrffif:first").clone();
    $(".rihsazkopq").append(copy);
    var i = 1;
    $(".uculleyxsr").each(function() {
        $(this).html(i++);
    });
    var i = 1;
    $(".difulkxnxi").each(function() {
        $(this).html(i++);
    });
    var i = 0;
    $(".jsjdxwinf").each(function() {
        $(this).attr("name", "personName[" + i++ + "]");
    });
    var i = 0;
    $(".didxspkza").each(function() {
        $(this).attr("name", "personId[" + i++ + "]");
    });
    var i = 0;
    $(".mnqtrtvhuo").each(function() {
        $(this).attr("name", "personIdSaved[" + i++ + "]");
    });
    $('.rihsazkopq .zzimskzjbd:last').removeClass("btn-primary");
    $('.rihsazkopq .zzimskzjbd:last').addClass("btn-warning iogimlsqtl");
    $('.rihsazkopq .zzimskzjbd:last').html("-");
    $('.rihsazkopq .zzimskzjbd:last').removeClass("zzimskzjbd");
    $('.rihsazkopq .jsjdxwinf:last').val("");
    $('.rihsazkopq .didxspkza:last').val("");
    $('.rihsazkopq .mnqtrtvhuo:last').val("");
    $('.rihsazkopq .lmewsgjooz:last').html("");
    //var length = $(".jsjdxwinf").length;
    //length = length-1;
    //$('.rihsazkopq .lmewsgjooz'+length).html("");
});
$(document).ready(function () {
    $('#hotelRoomForm').on('submit', function (e) {
        e.preventDefault(); // Prevent default form submission
        
        var context = $(this);
        var html = $(this).html();
        var error = false;

        if (!error) {
            var formData = new FormData(this);
            formData.append("_token", token);
            var id = $('.wimdghlgbo').val();

            $.ajax({
                type: 'POST',
                url: baseUrl + "/admin/attach-hotel-room-data",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                context: this,
                success: function (data) {
                    // Directly use `data`, as it's already an object
                    if (data.status === "success") {
                        $(context).html(html);
                        toast("success", "Data added successfully");
                        $("#hotelRoomPopup").modal("hide");

                        $('.inrqwlsqvg[data-id="' + id + '"]').addClass("phjmxgubwz");
                        totalCart();
                        location.reload();
                    } else {
                        $(context).html(html);
                        toast("error", data.message);
                    }
                },
                error: function (jqXHR) {
                    try {
                        var json = JSON.parse(jqXHR.responseText);
                        toast("error", json.message);
                    } catch (e) {
                        toast("error", "An unexpected error occurred");
                    }
                }
            });
        }
    });
});

$(document).on('click', '.btkwsrhjsk', function() {
    var orderId = $(this).attr("order-id");
    var context = $(this);
    Swal.fire({
        title: "Are you sure you want to cancel this order?",
        showCancelButton: true,
        confirmButtonText: "Yes",
    }).then((result) => {
        if (result.isConfirmed) {
            $(context).attr("disabled", "disabled");
            $.ajax({
                type: 'POST',
                url: baseUrl + "/admin/saveOrderHistory",
                data: "orderId=" + orderId + "&_token=" + token,
                success: function(data) {
                    var json = $.parseJSON(data);
                    if (json.status == "success") {
                        toast("success", "Order Status Changed Successfully");
                        //location.reload();
                    } else {
                        toast("error", "There is some error during deleteing data");
                    }
                    $(context).html(html);
                    $(context).removeAttr("disabled");
                },
                error: function(data) {}
            });
            return false;
        } else if (result.isDenied) {
            $(context).click(function() {
                return true;
            });
            $(context).removeAttr("disabled");
        }
    });
});