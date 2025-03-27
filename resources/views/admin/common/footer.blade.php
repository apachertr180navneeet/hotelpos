<!-- footer start-->
<footer class="footer">
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-12 footer-copyright text-center">
         </div>
      </div>
   </div>
</footer>
</div>
</div>
@if(isset($tableName) AND $tableName == 'customers')
<div class="asyltyhamu" style="display:none;width: 100%;height: 100vh;position: fixed;background: #e5e5e5;z-index: 99999;top: 0;opacity: 0.5;"> </div>
<img class="asyltyhamu" src="{{url('/')}}/assets/uploads/ship_shop_pos_default/242791464.gif" style="display:none;position: absolute;margin-left: auto;margin-right: auto;left: 0;right: 0;top: 50%;text-align: center;z-index:999999">
<style type="text/css">
   .loading {    
       background-color: #ffffff;
       background-image: url("{{url('/')}}/assets/uploads/ship_shop_pos_default/198310047.gif");
       background-size: 150px;
       background-position:right center;
       background-repeat: no-repeat;
   }
</style>
@endif
@include('admin.common.popup')
@if($method == 'Dashboard') 
<script src="{{url('backend/assets/js/jquery-3.5.1.min.js')}}"></script>
<script src="{{url('backend/assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
<script src="{{url('backend/assets/js/icons/feather-icon/feather.min.js')}}"></script>
<script src="{{url('backend/assets/js/icons/feather-icon/feather-icon.js')}}"></script>
<script src="{{url('backend/assets/js/scrollbar/simplebar.js')}}"></script>
<script src="{{url('backend/assets/js/scrollbar/custom.js')}}"></script>
<script src="{{url('backend/assets/js/config.js')}}"></script>
<script src="{{url('backend/assets/js/sidebar-menu.js')}}"></script>
<script src="{{url('backend/assets/js/chart/knob/knob.min.js')}}"></script>
<script src="{{url('backend/assets/js/chart/knob/knob-chart.js')}}"></script>
<script src="{{url('backend/assets/js/chart/apex-chart/apex-chart.js')}}"></script>
<script src="{{url('backend/assets/js/chart/apex-chart/stock-prices.js')}}"></script>
<script src="{{url('backend/assets/js/notify/bootstrap-notify.min.js')}}"></script>
<script src="{{url('backend/assets/js/dashboard/default.js')}}"></script>
<script src="{{url('backend/assets/js/notify/index.js')}}"></script>
<script src="{{url('backend/assets/js/datepicker/date-picker/datepicker.js')}}"></script>
<script src="{{url('backend/assets/js/datepicker/date-picker/datepicker.en.js')}}"></script>
<script src="{{url('backend/assets/js/datepicker/date-picker/datepicker.custom.js')}}"></script>
<script src="{{url('backend/assets/js/photoswipe/photoswipe.min.js')}}"></script>
<script src="{{url('backend/assets/js/photoswipe/photoswipe-ui-default.min.js')}}"></script>
<script src="{{url('backend/assets/js/photoswipe/photoswipe.js')}}"></script>
<script src="{{url('backend/assets/js/typeahead/handlebars.js')}}"></script>
<script src="{{url('backend/assets/js/typeahead/typeahead.bundle.js')}}"></script>
<script src="{{url('backend/assets/js/typeahead/typeahead.custom.js')}}"></script>
<script src="{{url('backend/assets/js/typeahead-search/handlebars.js')}}"></script>
<script src="{{url('backend/assets/js/typeahead-search/typeahead-custom.js')}}"></script>
<script src="{{url('backend/assets/js/height-equal.js')}}"></script>
<script src="{{url('backend/assets/js/script.js')}}"></script>
<script src="{{url('backend/assets/js/theme-customizer/customizer.js')}}"></script>
@else
<script src="{{url('backend/assets/js/jquery-3.5.1.min.js')}}"></script>
<script src="{{url('backend/assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
<script src="{{url('backend/assets/js/datatable/datatables/jquery.dataTables.min.js')}}"></script>
<!--  <script src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script> -->
<script src="{{url('backend/assets/js/scrollbar/simplebar.js')}}"></script>
<script src="{{url('backend/assets/js/scrollbar/custom.js')}}"></script>
<script src="{{url('backend/assets/js/sidebar-menu.js')}}"></script>
<script src="{{url('backend/assets/js/script.js')}}"></script>
<script src="{{url('backend/assets/js/theme-customizer/customizer.js')}}"></script>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js" defer></script>
@endif
<script type="text/javascript">var baseUrl = '{{url("/")}}';</script>
<script type="text/javascript">var token = '{{ csrf_token() }}';</script>
{{-- 
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> --}}
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.5/dist/sweetalert2.all.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.5/dist/sweetalert2.min.css" rel="stylesheet">
<script src="<?php echo url("/backend/assets/toast/jquery.toast.js");?>"></script>
<script src="<?php echo url("/backend/assets/myjs/Backend.js");?>"></script>
<script src="<?php echo url("/backend/assets/myjs/Common.js");?>"></script>
<script src="<?php echo url("/backend/assets/myjs/Filters.js");?>"></script>
<?php //if(file_exists(url("/backend/assets/myjs/")."/".$method.".js")){?>
<script src="<?php echo url("/backend/assets/myjs/")."/".$method;?>.js"></script>
<?php //} ?>
<?php if(isset($method) AND $method!="ManageModule"){?>
<script src="<?php echo url("/backend/assets/myjs/ManageModule.js");?>"></script>
<?php } ?>

<style type="text/css">
   .settingTextArea{
   height: 150px !important;
   }
</style>
<script type="text/javascript">
   $(document).ready(function() {
     <?php if(isset($method) AND $method=="ManageModule"){?>
     <?php if($update_id != 0 AND empty($moduleFieldDetail['columnSortOrder'])){?>  
     fillAll();
     <?php } ?>
     function fillAll(){
         $('.wyewhxojgh').each(function() {
             console.log("hello");
             $(this).trigger("click");
             $(".bblolfjgbb").trigger("click");
         });
     }
     <?php } ?>
     $('.select2').select2();
     <?php if(!empty($autosuggestive)){?>
     <?php foreach($autosuggestive as $key=>$value){?>
             dynamicAutosuggestive('<?php echo $autosuggestive[$key][0];?>','<?php echo $autosuggestive[$key][1];?>','<?php echo $autosuggestive[$key][2];?>','<?php echo $key;?>');
     <?php } ?>
     <?php } ?>
   });
</script>
@if(isset($view) AND $view == 1)
<script type="text/javascript">
   $(document).ready(function() {
    $("input").attr("disabled","disabled");
    $("select").attr("disabled","disabled");
    $("textarea").attr("disabled","disabled");
    $(".wugugpchjn").hide();
    $(".cuegvkzkbo").hide();
    $(".grunmikftv").hide();
    $(".ulknpowlqk").hide();
    });
</script>
@endif
@if(isset($profitReport) AND $profitReport == "profitReport")
<script type="text/javascript">
   $( document ).ready(function() {
     $(".ipvcovvcve").html($(".ubfnrodouk").html());
     $(".amhalxzkkl").html($(".wywqomwsia").html());
     $(".wiqhdfjfku").html($(".yqvfybdcky").html());
     $(".lkinzrkpck").html($(".ygfqstaeix").html());
     $(".pguydijvix").html($(".aeagexlwrm").html());
     $(".pltgzdyokk").html($(".qszycvhiza").html());
     $(".llqvomztmx").html($(".dmpnpnjymo").html());
   });
</script>
@endif
@if(isset($profitReport) AND $profitReport == "dailySaleReport")
<script type="text/javascript">
   $( document ).ready(function() {
       $(".wiqhdfjfku").html($(".gedwuspqxa").html());   
       $(".llqvomztmx").html($(".ygfqstaeix").html());   
       $(".amhalxzkkl").html($(".xajmglbxdu").html());   
       $(".ipvcovvcve").html($(".rgbqrupaah").html());   
       $(".lkinzrkpck").html($(".exfhhxsfce").html());   
       $(".pguydijvix").html($(".aeagexlwrm").html());   
   });
</script>
@endif
@if(isset($profitReport) AND $profitReport == "dailyOrderReport")
<script type="text/javascript">
   $( document ).ready(function() {
       $(".llqvomztmx").html($(".qkhujzudyq").html());   
       $(".pguydijvix").html($(".bmqpzpsqnt").html());   
       $(".lkinzrkpck").html($(".ewpnyygswm").html());   
       $(".ipvcovvcve").html($(".pqxkurovxi").html());   
       $(".wiqhdfjfku").html($(".lmkoeijseg").html());   

   });
</script>
@endif
@if(!empty($popupMessages))
<div id="popupMessageModal" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="etniibotrj" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{!!$popupMessages[0]['heading']!!}</h4>
         </div>
         <div class="modal-body">
            {!!$popupMessages[0]['message']!!}
         </div>
      </div>
   </div>
</div>
@php(DB::select("UPDATE popup_message_list SET viewed=1 WHERE popupMessageListId='".$popupMessages[0]['popupMessageListId']."'"))
@endif
@if(!empty($popupMessages))
<script type="text/javascript">
   $( document ).ready(function() {
   $("#popupMessageModal").modal("show");
   
   $(document).on('click', '.etniibotrj', function() {
   $("#popupMessageModal").modal("hide");
   });
   });
</script>
@endif
</body>
</html>