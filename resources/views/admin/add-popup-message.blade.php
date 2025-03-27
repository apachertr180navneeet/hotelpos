@extends('admin.common.main')
@section('main-container')
<div class="page-body">
   <div class="container-fluid">
      <div class="edit-profile">
         <div class="row">
            <div class="col-xl-12">
               <form class="card" method="POST" id="popupFormMessage">
                  <input type="hidden" value="{{$update_id}}" name="update_id">
                  <input type="hidden" value="popupMessageId" name="where_column">
                  <input type="hidden" value="{{csrf_token()}}" name="_token">
                  <div class="card-header pb-0">
                     <h4 class="card-title mb-0">Add Popup Message</h4>
                     <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                  </div>
                  <div class="card-body">
                     <div class="row">
                        <div class="col-md-12">
                           <div class="mb-3">
                              <label class="form-label">Heading<span class="required">*</span></label>
                              <input class="form-control guexfopsgw" type="text" name="heading" placeholder="Heading" value="<?php echo $content['heading'];?>">
                           </div>
                        </div>
                        <div class="col-md-12">
                           <div class="mb-3">
                              <label class="form-label">Message<span class="required">*</span></label>
                              <textarea class="form-control mykjqosrzy template" id="template" name="message"><?php echo $content['message'];?></textarea>
                              <style type="text/css">
                                 .ck.ck-editor__main .ck-content {
                                    height: 250px;
                                 }
                              </style>
                              <script>
                                 CKEDITOR.replace( 'template' );
                              </script>
                           </div>
                        </div>
                        <div class="col-md-12">
                           <div class="mb-6">
                              <label class="control-label">User<span class="required">*</span> </label>
                              <select name="userId" class="form-control select2 ifdubipmov" multiple>
                                 @foreach($content['users'] as $user)
                                 <option <?php echo (isset($content['userId']) AND ($content['userId']==$user['userId']))?'selected':'';?> value="<?php echo $user['userId'];?>"><?php echo $user['name']."--".$user['email']."--".$user['dbName'];?></option>
                                 @endforeach
                              </select>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="card-footer text-end">
                     <div class="btn btn-primary tqrpkskkgg">Save</div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<style type="text/css">
   .ldropenijp{
   margin-top: 10px;
   }
</style>
<script type="text/javascript">
   var dataTableStatus = "0";
</script>
@endsection