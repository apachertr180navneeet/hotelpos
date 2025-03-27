<div class="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="white-box">
					<h3 class="box-title" style="margin-bottom:20px;"><?php echo $controllerHeading;?></h3>
					<form method="POST" action="#" id="submitMenuForm">
					<table class="table table-bordered table-responsive" id="myCustomDataTable">

						<input type="hidden" value="menuId" name="whereColumn">
                        <input type="hidden" value="menus" name="table">
                        <input type="hidden" value="menus" name="page">
						<input type="hidden" value="menus" name="controllerClassName">
						<thead>
							<tr>
								<th>Sno</th>
								<th>Menu Heading</th>
								<th>Parent Menu</th>
								<th>Menu Icon</th>
								<th>Sort Order</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<?php $i=1;foreach($modules as $menus){ ?>

							<?php if($menus["menuHeading"] != "Dashboard" && $menus["menuHeading"]!="Logout"){ ?>	

							<tr>
								<td class="text-bold"><?php echo $i;?></td>
								<td><strong><?php echo $menus["menuHeading"];?></strong>
									<br><br>
									<input type="text" name="menuHeading[]" value="<?php echo $menus["menuHeading"];?>">
								</td>
								<td><input type="hidden" name="parentId[]" value="0"></td>
								<td><input autocomplete="off"  type="text" class="form-control" value='<?php echo $menus["icon"];?>' name="icon[]"></td>
								<td><input autocomplete="off"  type="text" class="form-control" value="<?php echo $menus["sortOrder"];?>" name="sortOrder[]"></td>
								<td><?php echo ($menus["status"]==1)?'Enabled':'Disabled';?></td>
							</tr>
							<input type="hidden" name="menuId[]" value="<?php echo $menus["menuId"];?>">	
							<input type="hidden" name="updateId[]" value="<?php echo $menus["menuId"];?>">	
							<?php $childs = $controller->Functions->getDataWhere("menus","parentId",$menus["menuId"]);?>
							<?php if(!empty($childs)){ ?>
							<?php $a=1;foreach($childs as $childMenu){ ?>
							<tr>
								<td><?php echo $i.".".$a;?></td>
								<td>
									<strong><?php echo $menus["menuHeading"];?></strong>-><?php echo $childMenu["menuHeading"];?>
									<br><br>
									<input type="text" name="menuHeading[]" value="<?php echo $childMenu["menuHeading"];?>">
								</td>
								<td>
									<select class="form-control" name="parentId[]">
										<option value="0">Please Select</option>
										<?php foreach($modules as $m){ ?>
											<option <?php echo ($childMenu['parentId'] == $m['menuId'])?'selected':'';?> value="<?php echo $m['menuId'];?>"><?php echo $m['menuHeading'];?></option>
										<?php } ?>
									</select>
								</td>
								<td><input autocomplete="off"  type="text" class="form-control" value='<?php echo $childMenu["icon"];?>' name="icon[]"></td>
								<td><input autocomplete="off"  type="text" class="form-control" value="<?php echo $childMenu["sortOrder"];?>" name="sortOrder[]"></td>
								<td><?php echo ($childMenu["status"]==1)?'Enabled':'Disabled';?></td>
							</tr>

							<input type="hidden" name="menuId[]" value="<?php echo $childMenu["menuId"];?>">	
							<?php $a++;} ?>
							<?php } ?>

							<?php $i++;} ?>
							<?php } ?>

						</tbody>
					</table>
					<div class="form-actions" style="text-align: right;">
                        <button type="submit" class="btn btn-success submitMenuForm"> <i class="fa fa-check"></i> Save</button>
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
