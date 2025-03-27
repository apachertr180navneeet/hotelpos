@extends('admin.common.main')
@section('main-container')
<div class="page-body">
    <div class="container-fluid">
        <div class="edit-profile">
            <div class="row">
                <div class="col-xl-12">
                    <form class="card" method="POST" id="manualForm">
                        <input type="hidden" value="userRoles" name="controllerClassName">
                        <input type="hidden" value="roles" name="table">
                        <input type="hidden" value="{{$update_id}}" name="update_id">
                        <input type="hidden" value="roleId" name="where_column">
                        <input type="hidden" value="roleId" name="tableIdColumn">
                        <input type="hidden" value="{{csrf_token()}}" name="_token">
                        <div class="card-header pb-0">
                            <div class="row">
                                <div class="col-6 col-sm-6">
                                    <h4 class="card-title mb-0">User Roles</h4>
                                </div>
                                <div class="col-6 col-sm-6">
                                    <a href="{{url("/")}}/admin/userroles" class="btn btn-danger jicrlyhywf pull-right">Back</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">Role Name<span class="required">*</span></label>
                                        <input class="form-control mzfptujhyl" type="text" name="heading" placeholder="Heading" value="<?php echo $content['heading'];?>">
                                        <input type="hidden" name="heading_validation" value="required">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="form-label">Permission</label>
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>Sno</td>
                                            <td><strong>Parent Menu</strong></td>
                                            <td><input type="checkbox" id="jopaeuejjl">&nbsp;&nbsp;<strong>View Permission</strong></td>
                                            <td><input type="checkbox" id="lieiqszqds">&nbsp;&nbsp;<strong>Edit Permission</strong></td>
                                        </tr>
                                        @php($i=1)
                                        @php($a=1)
                                        @foreach($menus as $menu)
                                        <tr>
                                            <td>{{$i}}</td>
                                            <td><strong>{{$menu['menuHeading']}}</strong></td>
                                            @php($checkedViewParent = "")
                                            @if(!empty($content['permission']['view']) AND in_array($menu['menuId'],$content['permission']['view']))
                                            @php($checkedViewParent = "checked")
                                            @endif
                                            @php($checkedEditParent = "")
                                            @if(!empty($content['permission']['edit']) AND in_array($menu['menuId'],$content['permission']['edit']))
                                            @php($checkedEditParent = "checked")
                                            @endif
                                            <td><strong><strong><input {{$checkedViewParent}} name="permission[view][]" value="{{$menu['menuId']}}" type="checkbox" class="jopaeuejjl nguqctmbsv nguqctmbsv{{$i}}" data-id="{{$i}}">&nbsp;&nbsp;</strong>{{$menu['menuHeading']}}</td>
                                            <td><strong><strong><input {{$checkedEditParent}} name="permission[edit][]" value="{{$menu['menuId']}}" type="checkbox" class="lieiqszqds ptqqeljoxe ptqqeljoxe{{$i}}" data-id="{{$i}}">&nbsp;&nbsp;</strong>{{$menu['menuHeading']}}</td>
                                        </tr>
                                        @php($subMenu = $controller::getDataWhereOrderBy("menus","parentId",$menu['menuId'],"sortOrder","ASC",100))
                                        @foreach($subMenu as $sub)
                                        <tr>
                                            <td>{{$a++}}</td>
                                            <td></td>
                                            @php($checkedViewChild = "")
                                            @if(!empty($content['permission']['view']) AND in_array($sub['menuId'],$content['permission']['view']))
                                            @php($checkedViewChild = "checked")
                                            @endif
                                            @php($checkedEditChild = "")
                                            @if(!empty($content['permission']['edit']) AND in_array($sub['menuId'],$content['permission']['edit']))
                                            @php($checkedEditChild = "checked")
                                            @endif
                                            <td><strong><input {{$checkedViewChild}} name="permission[view][]" value="{{$sub['menuId']}}" type="checkbox" class="jopaeuejjl ghyytahimt ghyytahimt{{$i}}" data-id="{{$i}}">&nbsp;&nbsp;{{$sub['menuHeading']}}</strong></td>
                                            <td><strong><input {{$checkedEditChild}} name="permission[edit][]" value="{{$sub['menuId']}}" type="checkbox" class="lieiqszqds tqtlinsrvm tqtlinsrvm{{$i}}" data-id="{{$i}}">&nbsp;&nbsp;{{$sub['menuHeading']}}</strong></td>
                                        </tr>
                                        @endforeach
                                        @php($i++)
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-end">
                            @if(isset($permission['edit']) AND $permission['edit']==1)
                            <button class="btn btn-primary wugugpchjn" type="submit">Save</button>
                            @endif
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
var dataTableStatus = "0";
</script>
@endsection