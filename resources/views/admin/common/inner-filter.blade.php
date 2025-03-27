@php($filters1 = $controller::getDataWhereOrderBy("filters","filterModuleId,lineNo",$moduleId.",1","sortOrder","ASC"))
@php($filters2 = $controller::getDataWhereOrderBy("filters","filterModuleId,lineNo",$moduleId.",2","sortOrder","ASC"))
@if(!empty($filters1) || !empty($filters2))
<div class="row" style="margin-top:10px;padding: 12px;">
   <div class="col-md-12">
      <div class="row kaprrjhyxe">
         @foreach($filters1 as $filter)
         @if($filter['additionalAttributes']!='')
         @php($additionalAttributes = json_decode($filter['additionalAttributes'],true))
         @else
         @php($additionalAttributes = array())
         @endif
         <div class="col-md-{{$filter['rowColumnSize']}}">
            @if($filter['dateBetweenFilter']=='No' || $filter['dateBetweenFilter']=='')
            <label>{{$filter['fieldHeading']}}</label>
            @endif
            @php($fieldType = array("text","date"))
            @if(in_array($filter['fieldType'],$fieldType))
            @if($filter['dateBetweenFilter']=='Yes')
            <div class="row">
               <div class="col-md-6">
                  <label>Date Start</label>
                  <input type="{{$filter['fieldType']}}" class="form-control {{$filter['fieldClass']}}" name="{{$filter['fieldName']}}" id="{{$filter['fieldId']}}" placeholder="{{$filter['fieldPlaceholder']}}" {{ (in_array('disabled',$additionalAttributes))?'disabled':'' }} {{ (in_array('readonly',$additionalAttributes))?'readonly':'' }} {{ (in_array('multiple',$additionalAttributes))?'multiple':'' }}>
               </div>
               <div class="col-md-6">
                  <label>Date End</label>
                  <input type="{{$filter['fieldType']}}" class="form-control {{$filter['fieldClass']}}" name="{{$filter['fieldName']}}" id="{{$filter['fieldId']}}" placeholder="{{$filter['fieldPlaceholder']}}" {{ (in_array('disabled',$additionalAttributes))?'disabled':'' }} {{ (in_array('readonly',$additionalAttributes))?'readonly':'' }} {{ (in_array('multiple',$additionalAttributes))?'multiple':'' }}>
               </div>
            </div>
            @else
            <input type="{{$filter['fieldType']}}" class="form-control {{$filter['fieldClass']}}" name="{{$filter['fieldName']}}" id="{{$filter['fieldId']}}" placeholder="{{$filter['fieldPlaceholder']}}" {{ (in_array('disabled',$additionalAttributes))?'disabled':'' }} {{ (in_array('readonly',$additionalAttributes))?'readonly':'' }} {{ (in_array('multiple',$additionalAttributes))?'multiple':'' }}>
            @endif
            @if($filter['fieldType']=='autosuggestive')
            @endif
            @else
            <select class="form-control {{$filter['fieldClass']}}" name="{{$filter['fieldName']}}" {{ (in_array('disabled',$additionalAttributes))?'disabled':'' }} {{ (in_array('readonly',$additionalAttributes))?'readonly':'' }} {{ (in_array('multiple',$additionalAttributes))?'multiple':'' }}>
            @if(!in_array("remove_please_select",$additionalAttributes))
            <option value="">Please Select</option>
            @endif
            @if($filter['selectBoxValue']!='' AND $filter['selectBoxHtml']!='')
            @php($selectBoxValue = explode(",",$filter['selectBoxValue']))
            @php($selectBoxHtml = explode(",",$filter['selectBoxHtml']))
            @for($i=0;$i<count($selectBoxValue);$i++)
            <option value="{{$selectBoxValue[$i]}}">{{$selectBoxHtml[$i]}}</option>
            @endfor
            @else
            @if($filter['orderBy']!='' AND $filter['whereColumn']=='')
            @php($orderBy = explode("_",$filter['orderBy']))
            @php($selectBox = $controller::getDataOrderBy($filter['tableName'],$orderBy[0],$orderBy[1]))
            @elseif($filter['orderBy']!='' AND $filter['whereColumn']!='')
            @php($orderBy = explode("_",$filter['orderBy']))
            @php($selectBox = DB::select("SELECT * FROM ".$filter['tableName']." WHERE ".$filter['whereColumn']." ORDER BY ".$orderBy[0]." ".$orderBy[1]))
            @php($selectBox = $controller::arrayConvert($selectBox))
            @elseif($filter['orderBy']=='' AND $filter['whereColumn']!='')
            @php($selectBox = DB::select("SELECT * FROM ".$filter['tableName']." WHERE ".$filter['whereColumn']))
            @php($selectBox = $controller::arrayConvert($selectBox))
            @else
            @php($selectBox = $controller::getData($filter['tableName']))
            @endif
            @foreach($selectBox as $select)
            @php($selectHtml = explode(",",$filter['tableColumn']))
            @php($selectHt = "")
            @foreach($selectHtml as $sel)
            @php($selectHt .= "-".$select[$sel])
            @endforeach
            @php($selectHt = substr($selectHt, 1))
            <option value="{{$select[$filter['tableFirstColumn']]}}">{{$selectHt}}</option>
            @endforeach
            @endif
            </select>
            @endif
         </div>
         @endforeach
      </div>
      <div class="row kaprrjhyxe" style="margin-top:10px;">
         @foreach($filters2 as $filter)
         @if($filter['additionalAttributes']!='')
         @php($additionalAttributes = json_decode($filter['additionalAttributes'],true))
         @else
         @php($additionalAttributes = array())
         @endif
         <div class="col-md-{{$filter['rowColumnSize']}}">
            @if($filter['dateBetweenFilter']=='No' || $filter['dateBetweenFilter']=='')
            <label>{{$filter['fieldHeading']}}</label>
            @endif
            @php($fieldType = array("text","date"))
            @if(in_array($filter['fieldType'],$fieldType))
            @if($filter['dateBetweenFilter']=='Yes')
            <div class="row">
               <div class="col-md-6">
                  <label>Date Start</label>
                  <input type="{{$filter['fieldType']}}" class="form-control {{$filter['fieldClass']}}" name="dateStart" id="{{$filter['fieldId']}}1" placeholder="dateStart" {{ (in_array('disabled',$additionalAttributes))?'disabled':'' }} {{ (in_array('readonly',$additionalAttributes))?'readonly':'' }} {{ (in_array('multiple',$additionalAttributes))?'multiple':'' }}>
               </div>
               <div class="col-md-6">
                  <label>Date End</label>
                  <input type="{{$filter['fieldType']}}" class="form-control {{$filter['fieldClass']}}" name="dateEnd" id="{{$filter['fieldId']}}2" placeholder="dateEnd" {{ (in_array('disabled',$additionalAttributes))?'disabled':'' }} {{ (in_array('readonly',$additionalAttributes))?'readonly':'' }} {{ (in_array('multiple',$additionalAttributes))?'multiple':'' }}>
               </div>
            </div>
            @else
            <input type="{{$filter['fieldType']}}" class="form-control {{$filter['fieldClass']}}" name="{{$filter['fieldName']}}" id="{{$filter['fieldId']}}" placeholder="{{$filter['fieldPlaceholder']}}" {{ (in_array('disabled',$additionalAttributes))?'disabled':'' }} {{ (in_array('readonly',$additionalAttributes))?'readonly':'' }} {{ (in_array('multiple',$additionalAttributes))?'multiple':'' }}>
            @endif
            @if($filter['fieldType']=='autosuggestive')
            @endif
            @else
            <select class="form-control {{$filter['fieldClass']}}" name="{{$filter['fieldName']}}" {{ (in_array('disabled',$additionalAttributes))?'disabled':'' }} {{ (in_array('readonly',$additionalAttributes))?'readonly':'' }} {{ (in_array('multiple',$additionalAttributes))?'multiple':'' }}>
            @if(!in_array("remove_please_select",$additionalAttributes))
            <option value="">Please Select</option>
            @endif
            @if($filter['selectBoxValue']!='' AND $filter['selectBoxHtml']!='')
            @php($selectBoxValue = explode(",",$filter['selectBoxValue']))
            @php($selectBoxHtml = explode(",",$filter['selectBoxHtml']))
            @for($i=0;$i<count($selectBoxValue);$i++)
            <option value="{{$selectBoxValue[$i]}}">{{$selectBoxHtml[$i]}}</option>
            @endfor
            @else
            @if($filter['orderBy']!='' AND $filter['whereColumn']=='')
            @php($orderBy = explode("_",$filter['orderBy']))
            @php($selectBox = $controller::getDataOrderBy($filter['tableName'],$orderBy[0],$orderBy[1]))
            @elseif($filter['orderBy']!='' AND $filter['whereColumn']!='')
            @php($orderBy = explode("_",$filter['orderBy']))
            @php($selectBox = DB::select("SELECT * FROM ".$filter['tableName']." WHERE ".$filter['whereColumn']." ORDER BY ".$orderBy[0]." ".$orderBy[1]))
            @php($selectBox = $controller::arrayConvert($selectBox))
            @elseif($filter['orderBy']=='' AND $filter['whereColumn']!='')
            @php($selectBox = DB::select("SELECT * FROM ".$filter['tableName']." WHERE ".$filter['whereColumn']))
            @php($selectBox = $controller::arrayConvert($selectBox))
            @else
            @php($selectBox = $controller::getData($filter['tableName']))
            @endif
            @foreach($selectBox as $select)
            @php($selectHtml = explode(",",$filter['tableColumn']))
            @php($selectHt = "")
            @foreach($selectHtml as $sel)
            @php($selectHt .= "-".$select[$sel])
            @endforeach
            @php($selectHt = substr($selectHt, 1))
            <option value="{{$select[$filter['tableFirstColumn']]}}">{{$selectHt}}</option>
            @endforeach
            @endif
            </select>
            @endif
         </div>
         @endforeach
      </div>
      <div class="row" style="margin-top:10px;">
         <div class="col-md-8"></div>
         <div class="col-md-4">
            <div>
               <div class="btn btn-danger mmpsfhdgfg pull-right" style="padding:10px;width:45%;display:inline-block">Reset</div>
               <div class="btn btn-success umqhvkffpb pull-right" style="padding:10px;width:45%;display:inline-block;margin-right:10px;">Filter</div>
            </div>
         </div>
      </div>
   </div>
</div>
@endif