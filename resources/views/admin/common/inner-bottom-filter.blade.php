<div class="row" style="margin-top:10px;padding: 12px;">
  <div class="col-md-12">
    <table class="table table-bordered ejrmzmuhxg">
      <tr>
        @php($filters = $controller::getDataWhereOrderBy("filters","forWhat",$type,"sortOrder","ASC"))

        @if(!empty($filters))
        @foreach($filters as $filter)
        <td>
          <label style="margin-bottom:10px;color: black;font-weight: bold;">{{$filter['heading']}}</label>
          @if($filter['type']=="select")
          <select class="form-control zkblwbvxhq {{$filter['class']}}" name="{{$filter['name']}}">
            <option value="">Please Select</option>
            @php($data = $controller::getData($filter['tableName']))
            @if(!empty($data))
            @foreach($data as $d)
            <option value="{{$d[$filter['selectIdColumn']]}}">{{$d[$filter['selectHeadingColumn']]}}</option>
            @endforeach
            @endif
          </select>
          @elseif($filter['type']=="text")
          <input value="{{ (!empty($purchase)) ? json_decode($purchase['charges'],true)[$filter['name']] : 0}}" type="text" class="form-control {{$filter['class']}}" id="{{$filter['id']}}" name="{{$filter['name']}}" value="{{$filter['value']}}">
          @elseif($filter['type']=="date")
          <input value="{{ (!empty($purchase)) ? json_decode($purchase['charges'],true)[$filter['name']] : 0}}" type="date" class="form-control {{$filter['class']}}" id="{{$filter['id']}}" name="{{$filter['name']}}">
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