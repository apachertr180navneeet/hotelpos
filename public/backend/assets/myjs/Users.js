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
            url: baseUrl + "/admin/data-table-pos-users",
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
$(document).on('click', '.tqrpkskkgg', function() {
    var html = $(".tqrpkskkgg").html();
    $(".tqrpkskkgg").html("Wait...");
    $(".tqrpkskkgg").attr("disabled","disabled");
    //$(".tqrpkskkgg").hide();
    $(".tqrpkskkgg").prop('disabled', true);
    $.ajax({
        type: "POST",
        url: baseUrl + "/admin/save-login-users",
        data: $("#loginFormUsers").serialize() + "&_token=" + token,
        context: this,
        success: function(data) {
            var json = $.parseJSON(data);
            if (json.status == "success") {
                $(".tqrpkskkgg").html(html);
                $(".tqrpkskkgg").prop('disabled', false);
                toast("success", "Data has been successfully Updated/Inserted");
                setTimeout(function() {
                    window.location.replace(baseUrl + "/admin/pos-users")
                }, 300);
            } else {
                toast("error", json.message);
            }
        }
    });
});