<div class="row" style="margin-top:10px;padding: 12px;">
   <div class="col-md-12">
      <table class="table table-bordered ejrmzmuhxg">
         <tr>
            @php($filters = $controller::getDataWhereOrderBy("filters","forWhat,line",$type.',1',"sortOrder","ASC"))
            @php($i = 1)
            @if(!empty($filters))
            @foreach($filters as $filter)
            <td>
               <label style="margin-bottom:10px;color: black;font-weight: bold;">{{$filter['heading']}}</label>
               @if($filter['type']=="select")
               <select class="form-control zkblwbvxhq{{$i++}} {{$filter['class']}} select2" name="{{$filter['name']}}">
                  <option value="">Please Select</option>
                  @if(!empty($purchase) AND $purchase['packingPurchase']==1 AND $filter['tableName']=='packaging_type')
                  
                  @if($filter['orderByColumn']!="")
                     @php($data = $controller::getDataOrderBy('packing_raw_material',$filter['orderByColumn'],$filter['AscDesc']))
                  @else
                     @php($data = $controller::getData('packing_raw_material'))
                  @endif

                  
                  @elseif(!empty($purchase) AND $purchase['packingPurchase']==1 AND $filter['tableName']=='products')
                  
                  @if($filter['orderByColumn']!="")
                     @php($data = $controller::getDataOrderBy('packing_bill_of_material',$filter['orderByColumn'],$filter['AscDesc']))
                  @else
                     @php($data = $controller::getData('packing_bill_of_material'))
                  @endif

                  @else
                  
                  @if($filter['orderByColumn']!="")
                     @php($data = $controller::getDataOrderBy($filter['tableName'],$filter['orderByColumn'],$filter['AscDesc']))
                  @else
                     @php($data = $controller::getData($filter['tableName'])
                  @endif
                  
                  @endif
                  @if(!empty($data))
                  @foreach($data as $d)
                  @if(!empty($purchase) AND $purchase['packingPurchase']==1 AND $filter['tableName']=='packaging_type')
                  <option {{ (!empty($purchase) AND $purchase[$filter['name']]==$d['packingRawMaterialId']) ? 'selected' : ""}} value="{{$d['packingRawMaterialId']}}">{{$d['packagingName']}}</option>
                  @elseif(!empty($purchase) AND $purchase['packingPurchase']==1 AND $filter['tableName']=='products')
                  <option {{ (!empty($purchase) AND $purchase[$filter['name']]==$d['packingRawMaterialId']) ? 'selected' : ""}} value="{{$d['packingRawMaterialId']}}">{{$d['productName']}}</option>
                  @else
                  <option {{ (!empty($purchase) AND $purchase[$filter['name']]==$d[$filter['selectIdColumn']]) ? 'selected' : ""}} value="{{$d[$filter['selectIdColumn']]}}">{{$d[$filter['selectHeadingColumn']]}}</option>
                  @endif
                  @endforeach
                  @endif
               </select>
               @elseif($filter['type']=="text")
               <input value="{{ (!empty($purchase)) ? $purchase[$filter['name']] : ""}}" type="text" class="form-control {{$filter['class']}}" id="{{$filter['id']}}" name="{{$filter['name']}}">
               @elseif($filter['type']=="date")
               <input value="{{ (!empty($purchase)) ? $purchase[$filter['name']] : ""}}" type="date" class="form-control {{$filter['class']}}" id="{{$filter['id']}}" name="{{$filter['name']}}">
               @elseif($filter['type']=="file")
               <input type="file" class="form-control {{$filter['class']}}" id="{{$filter['id']}}" name="{{$filter['name']}}">
               @endif
            </td>
            @endforeach
            @endif
         </tr>
      </table>
      <table class="table table-bordered ejrmzmuhxg" style="margin-top:10px;">
         <tr>
            @php($filters = $controller::getDataWhereOrderBy("filters","forWhat,line",$type.',2',"sortOrder","ASC"))
            @php($i = 1)
            @if(!empty($filters))
            @foreach($filters as $filter)
            <td>
               <label style="margin-bottom:10px;color: black;font-weight: bold;">{{$filter['heading']}}</label>
               @if($filter['type']=="select")
               <select class="form-control dugnjxhhbz{{$i++}} {{$filter['class']}} select2" name="{{$filter['name']}}">
                  <option value="">Please Select</option>
                  @if($filter['tableName']!="")
                  @if($filter['orderByColumn']!="")
                     @php($data = $controller::getDataOrderBy($filter['tableName'],$filter['orderByColumn'],$filter['AscDesc']))
                  @else
                     @php($data = $controller::getData($filter['tableName'])
                  @endif
                  @if(!empty($data))
                  @foreach($data as $d)
                  <option {{ (!empty($purchase) AND $purchase[$filter['name']]==$d[$filter['selectIdColumn']]) ? 'selected' : ""}} value="{{$d[$filter['selectIdColumn']]}}">{{$d[$filter['selectHeadingColumn']]}}</option>
                  @endforeach
                  @endif
                  @else
                  @php($explodeValue = explode(",",$filter['idValue']))
                  @php($explodeHeading = explode(",",$filter['headingValue']))
                  @for($i=0;$i<count($explodeValue);$i++)
                  <option {{ (!empty($purchase) AND $purchase[$filter['name']]==$d[$filter['idValue']]) ? 'selected' : ""}} value="{{$d[$filter['selectIdColumn']]}}">{{$d[$filter['selectHeadingColumn']]}}</option>
                  @endfor
                  @endif
               </select>
               @elseif($filter['type']=="text")
               <input value="{{ (!empty($purchase)) ? $purchase[$filter['name']] : ""}}" type="text" class="form-control {{$filter['class']}}" id="{{$filter['id']}}" name="{{$filter['name']}}">
               @elseif($filter['type']=="date")
               <input value="{{ (!empty($purchase)) ? $purchase[$filter['name']] : ""}}" type="date" class="form-control {{$filter['class']}}" id="{{$filter['id']}}" name="{{$filter['name']}}">
               @elseif($filter['type']=="file")
               <input type="file" class="form-control {{$filter['class']}}" id="{{$filter['id']}}" name="{{$filter['name']}}">
               @endif
            </td>
            @endforeach
            @endif
         </tr>
      </table>
   </div>
</div>
<style type="text/css">
   .ejrmzmuhxg td{
   width: 12.5% !important;
   }
   .select2-selection{
   width: 100%;
   }
</style>