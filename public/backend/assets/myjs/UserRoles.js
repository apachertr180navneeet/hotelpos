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
            },
        ],
        "ajax": {
            url: baseUrl + "/admin/dataTableUserRoles",
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
$("#jopaeuejjl").change(function () {
    $(".jopaeuejjl:checkbox").prop('checked', $(this).prop("checked"));
});
$("#lieiqszqds").change(function () {
    $(".lieiqszqds:checkbox").prop('checked', $(this).prop("checked"));
});

$(".nguqctmbsv").change(function () {
    var id = $(this).attr("data-id");
    $(".ghyytahimt"+id+":checkbox").prop('checked', $(this).prop("checked"));
});
$(".ptqqeljoxe").change(function () {
    var id = $(this).attr("data-id");
    $(".tqtlinsrvm"+id+":checkbox").prop('checked', $(this).prop("checked"));
});