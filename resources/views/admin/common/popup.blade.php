@if(Session::get('roleId')==1 || Session::get('roleId')==2)
<div id="selectStoreModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="whnxrafkxq" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">{{$controller::message("Select Store")}}</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            <label>{{$controller::message("Select Store")}}</label>
            <select class="form-control dqwofazecn select2" name="selectStore">
              @if(Session::get("superAdmin")=='Yes' AND Session::get("roleId")==1)
              @php($selectStores = $controller::getData("stores"))
              @else
              @php($selectStores = $controller::getDataWhere("stores","userId",Session::get('userId')))
              @endif
              <option value="">{{$controller::message("All")}}</option>
              @if(!empty($selectStores))
              @foreach($selectStores as $store)
              <option {{ ($store['storeId']==Session::get('storeId'))?'selected':'' }} value="{{$store['storeId']}}">{{$store['name']}}</option>
              @endforeach
              @endif
            </select>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default whnxrafkxq" data-dismiss="modal">{{$controller::message("Close")}}</button>
      </div>
    </div>
  </div>
</div>
@endif
@if(Session::get("superAdmin")=='Yes' || Session::get('roleId')==1)
<div id="selectUserModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="lkqvejrubd" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">{{$controller::message("Select User")}}</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            <label>{{$controller::message("Select User")}}</label>
            <select class="form-control qgdgpmnhvj select2" name="selectUser">
              @php($selectUsers = $controller::getDataWhere("users","roleId",2))
              <option value="">{{$controller::message("Logged In As Admin")}}</option>
              @if(!empty($selectUsers))
              @foreach($selectUsers as $user)
              <option {{ ($user['userId']==Session::get('userId'))?'selected':'' }} value="{{$user['userId']}}">{{$user['userName']}}-{{$user['userEmail']}}</option>
              @endforeach
              @endif
            </select>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default lkqvejrubd" data-dismiss="modal">{{$controller::message("Close")}}</button>
      </div>
    </div>
  </div>
</div>
@endif
<div id="selectLanguageModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="fadfdfkgpf" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">{{$controller::message("Select Language")}}</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            <label>{{$controller::message("Select Language")}}</label>
            <select class="form-control acepzridje select2" name="selectLanguage">
              @php($selectLanguages = $controller::getData("languages"))
              @if(!empty($selectLanguages))
                @foreach($selectLanguages as $language)
                  <option {{ ($language['heading']==Session::get('languageId'))?'selected':'' }} value="{{$language['heading']}}">{{$language['heading']}}</option>
                @endforeach
              @endif
            </select>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default fadfdfkgpf" data-dismiss="modal">{{$controller::message("Close")}}</button>
      </div>
    </div>
  </div>
</div>
<div id="sendMailToVendorPO" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="zdhntayosz" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">{{$controller::message("Send Purchase Order")}}</h4>
      </div>
      <div class="modal-body">
        <div class="row" style="margin-top:10px;">
          <div class="col-md-12">
            <label>{{$controller::message("Vendor Name")}}</label>
            <input type="text" class="form-control gayleaicri" readonly>
            <input type="hidden" class="form-control moyvwgpbmr" readonly value="">
            <input type="hidden" class="form-control zgluujefew" readonly value="">
          </div>
        </div>
        <div class="row" style="margin-top:10px;">
          <div class="col-md-12">
            <label>{{$controller::message("Vendor Email")}}</label>
            <input type="text" class="form-control sefzcqqgfa">
          </div>
        </div>
        <div class="row" style="margin-top:10px;">
          <div class="col-md-12">
            <label>{{$controller::message("Store Email")}}</label>
            <input type="text" class="form-control vskbzmasky" value="{{$settings['adminEmail']}}">
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary wdmxisfomn" data-dismiss="modal">{{$controller::message("Send Mail")}}</button>
      </div>
    </div>
  </div>
</div>