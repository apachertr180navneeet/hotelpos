$(document).on('change', '.pmivrsdqty', function() {
    var value = $(this).val();
    $(".xkwhjswscp").val("");
    $('.pxjqttrubu').html('').select2({data: [{id: '', text: ''}]});
    $('.xkwhjswscp').html('').select2({data: [{id: '', text: ''}]});


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
                //html += '<option value="' + json[i].Field + '">' + json[i].Field + '</option>'
                //$(".pxjqttrubu").select2('data', {id: json[i].Field, text: json[i].Field});
                $(".pxjqttrubu").select2({data: [{id: json[i].Field, text: json[i].Field}]});
                $(".xkwhjswscp").select2({data: [{id: json[i].Field, text: json[i].Field}]});
            }
            /*var result = value.split('_');
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
            
            /*$(this).parent().parent().find('.lgnjtruymz').val(name.toLowerCase()+","+name.toLowerCase()+","+name.toLowerCase());
            $(this).parent().find('.pxjqttrubu').html(html);
            $(this).parent().find('.xkwhjswscp').html(html);*/
            //$(".pxjqttrubu").select2('data', {html}); 
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
    //$(this).parent().parent().find('.lgnjtruymz').val(output+","+output+","+output);
    $('.ubliuypnsy').val(output);
    $('.jonnvaijjm').val(output);
    $('.nippwjswoi').val(output);
    $('.whaowmndwo').val(value);
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