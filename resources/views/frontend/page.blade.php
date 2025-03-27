@extends('frontend.common.main')
@section('main-container')
<section class="container success-wrapper">
   <div class="row">
      <div id="content" class="col-sm-12">
         <h1 class="page-title">{{$content['heading']}}</h1>
         @if(file_exists($content['image']))
         <img src="{{ $controller::image($content['image']) }}" style="width:100%;height:350px;object-fit:cover">
         @endif
         <div style="margin-top: 20px;">
            {{$controller::filterDescriptionForModules($content['shortDescription'])}}
            {{$controller::filterDescriptionForModules($content['description'])}}
         </div>
      </div>
   </div>
</section>
@endsection