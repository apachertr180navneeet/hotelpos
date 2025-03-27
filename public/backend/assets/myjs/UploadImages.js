var url = baseUrl + "/admin/upload-images-zip-folder";
var customFunction  = "";
$(document).ready(function(){
    // File upload via Ajax
    $("#uploadForm").on('submit', function(e){
        e.preventDefault();
        $.ajax({
            xhr: function() {
                var xhr = new window.XMLHttpRequest();
                xhr.upload.addEventListener("progress", function(evt) {
                    if (evt.lengthComputable) {
                        var percentComplete = parseInt(((evt.loaded / evt.total) * 100));
                        $("#progress-bar").width(percentComplete + '%');
                        $("#progress-bar").html(percentComplete+'%');
                    }
                }, false);
                return xhr;
            },
            type: 'POST',
            url: url,
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData:false,
            beforeSend: function(){
                $("#progress-bar").width('0%');
                $('#loader-icon').show();
            },
            error:function(){
                $('#loader-icon').html('<p style="color:#EA4335;">File upload failed, please try again.</p>');
            },
            success: function(resp){
                var json = $.parseJSON(resp);
                    if (json.status == "success") {
                        toast("success", "Folder uploaded successfully");
                    } else {
                        toast("error", json.message);
                }
                if(resp == 'ok'){
                    $('#uploadForm')[0].reset();
                    $('#loader-icon').html('<p style="color:#28A74B;">File has uploaded successfully!</p>');
                    
                }else if(resp == 'err'){
                    $('#loader-icon').html('<p style="color:#EA4335;">Please select a valid file to upload.</p>');
                }
            }
        });
    });

});

            