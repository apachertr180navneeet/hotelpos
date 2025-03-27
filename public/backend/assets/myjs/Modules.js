$(document).ready(function() {
    var count = 6;
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
                extend: 'pdf',
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
            url: baseUrl + "/admin/dataTableModule",
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
        "iDisplayLength": 25
    });
});
$(document).on('change', '.vvrjoxfzqg', function() {
    var value = $(this).val();
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
            var result = value.split('_');
            var name = "";
            if(result[0]!=undefined){
                name = result[0].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            if(result[1]!=undefined){
                name += " "+result[1].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            if(result[2]!=undefined){
                name += " "+ result[2].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            if(result[3]!=undefined){
                name += " "+result[3].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            if(result[4]!=undefined){
                name += " "+result[4].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            value = value.toLowerCase().replace(/\b[a-z]/g, function(letter) {
                return letter.toUpperCase();
            });
            value = name.replace(/\s/g, '');
            $(".mzfptujhyl").val(value);
            $(".pxgcouswxe").val(name);
            $(".gsxkrpjxom").html(html);
        }
    });
});
$(document).on('change', '.pmivrsdqty', function() {
    var value = $(this).val();
    $(".xkwhjswscp").val("");
    //$(".xkwhjswscp").select2("val", "");
    //$(".xkwhjswscp").val('').trigger('change')
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
            var result = value.split('_');
            var name = "";
            if(result[0]!=undefined){
                name = result[0].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            if(result[1]!=undefined){
                name += " "+result[1].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            if(result[2]!=undefined){
                name += " "+ result[2].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            if(result[3]!=undefined){
                name += " "+result[3].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            if(result[4]!=undefined){
                name += " "+result[4].toLowerCase().replace(/\b[a-z]/g, function(letter) {
                    return letter.toUpperCase();
                });
            }
            value = value.toLowerCase().replace(/\b[a-z]/g, function(letter) {
                return letter.toUpperCase();
            });
            value = name.replace(/\s/g, '');
            console.log(value);
            console.log(name.toLowerCase()+","+name.toLowerCase()+","+name.toLowerCase());
            console.log(html);
            $(this).parent().parent().find('.lgnjtruymz').val(name.toLowerCase()+","+name.toLowerCase()+","+name.toLowerCase());
            $(this).parent().find('.pxjqttrubu').html(html);
            $(this).parent().find('.xkwhjswscp').html(html);
            //$(".pxgcouswxe").val(name);
            //$(".xkwhjswscp").html(html);
        }
    });
});
$(document).on('keyup', '.tbngmkyqrt', function() {
    var value = $(this).val();
    var output = value.replace(/\w+/g, function(txt) {
      return txt.charAt(0).toUpperCase() + txt.substr(1);
    }).replace(/\s/g, '');
    output = capFirst(output);
    $(this).parent().parent().find('.lgnjtruymz').val(output+","+output+","+output);
});
function capFirst(str) {
     return str[0].toLowerCase() + str.slice(1);
}
$(document).on('click', '.pwtmkwqltw,.ngezckxamg', function() {
    var val = $('.sqxacrviuq').val();
    $('.sqxacrviuq').val(val+$(this).attr('data-code'));
});
$(document).on('click', '.omumfdokms', function() {
    var html = $(".utpmgsvocw tr:first").html();
    $('.lyphayiyms').append('<tr>'+html+'</tr>');
    $(".lyphayiyms:last .gfohfsllqf").html("");
    $(".lyphayiyms:last .gfohfsllqf").val("");
});
$(document).on('click', '.scqznnsbod', function() {
    var table = $(this).attr("data-table");
    var context = $(this);
    var html = $(this).html();
    Swal.fire({
        title: "Are you sure you want to empty this table?",
        showCancelButton: true,
        confirmButtonText: "Yes Please Truncate It",
    }).then((result) => {
        if (result.isConfirmed) {
            $(context).html("Truncating...");
            $(context).click(function() {
                return false;
            });
            $(context).attr("disabled", "disabled");
            $.ajax({
                type: 'POST',
                url: baseUrl + "/admin/truncating-table",
                data: 'table=' + table+"&_token="+token,
                success: function(data) {
                    var json = $.parseJSON(data);
                    if (json.status == "success") {
                        toast("success", "Table Truncated Successfully");
                        $(context).html(html);
                    } else {
                        $(context).html(html);
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