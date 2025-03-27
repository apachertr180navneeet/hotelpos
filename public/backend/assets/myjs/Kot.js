if(views==1){
    $("input").attr("disabled","disabled");
    $("select").attr("disabled","disabled");
}
if (dataTableStatus == 0) {
    $(document).ready(function() {
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
                buttons: [
                ],
                "ajax": {
                    url: baseUrl + "/admin/dataTableKot",
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
    });
}