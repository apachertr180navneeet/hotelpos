<?php
   error_reporting(E_ALL);
   session_start();
   if(isset($_GET['clear'])){
      session_destroy();
   }
   
   if(isset($_POST['submit'])){
     header("Content-type: application/vnd.ms-word");
     header("Content-Disposition: attachment;Filename=".$_POST['flat'].".doc");    
     echo "<html>";
     echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
     echo "<style>";
     echo "body{font-family:Calibri', sans-serif;}";
     echo ".tfqxrtzrft li{margin-bottom:10px;}";
     echo ".tfqxrtzrft li{font-size:14px !important;}";
     echo "</style>";
     echo "<body>";
     if(isset($_POST['autoGenerate']) AND $_POST['autoGenerate']==1){
        $_POST['from'] = $_POST['date'];
        $_POST['to'] = date('d-m-Y', strtotime('+11 months', strtotime($_POST['date'])));
     }
     foreach($_POST as $key=>$value){
       $_SESSION[$key] = $value;
     }
     //$aadharOwner = chunk_split($_POST['aadharOwner'], 4, ' ');
     //$aadharTenant = chunk_split($_POST['aadharTenant'], 4, ' ');
?>
<p style="font-size:14px;"><span style="font-size:14px;">&nbsp;</span></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">&nbsp;</span></strong></p>
<p style="text-align:center;font-size:14px;"><strong><u><span style="font-size:14px;">&nbsp;</span></u></strong></p>
<p style="text-align:center;font-size:14px;"><strong><u><span style="font-size:14px;">RENT AGREEMENT</span></u></strong></p>
<p style="text-align:justify;font-size:14px;"><span style="font-size:14px;">This Rent Agreement is made at Gurugram on <strong><u><?php echo date("F j, Y",strtotime($_POST['date']));?>&nbsp;</u></strong>between the following parties:&nbsp;</span></p>
<p style="text-align:justify;font-size:14px;"><strong><span style="font-size:14px;text-transform:uppercase;"><?php echo $_POST['owner'];?> (</span></strong><span style="font-size:14px;">Hereinafter referred the First Party/Owner where the terms and conditions so admits include its representatives, heirs, executors, administrators, successors and assigns)</span></p>
<p style="text-align:center;font-size:14px;"><strong><span style="font-size:14px;">AND</span></strong></p>
<p style="text-align:justify;font-size:14px;"><strong><span style="font-size:14px;text-transform:uppercase;"><?php echo $_POST['tenant'];?> (</span></strong><span style="font-size:14px;">Hereinafter referred the second Party/Tenant where the terms and conditions so admits its representative&rsquo;s heirs, executors, administrators, successors and assigns&nbsp;</span></p>
<p style="font-size:14px;"><span style="font-size:14px;">Whereas the First Party/Landlord is the owner of <strong style="text-transform:uppercase;"><?php echo $_POST['flatAddress'];?></strong>&nbsp;</span></p>
<p style="font-size:14px;"><span style="font-size:14px;">Where the Landlord has agreed to let out the above said premises to the tenant and whereas the Landlord has represented that the said property is free from all encumbrances and the Landlord has clean and unrestricted right to the said property and is legally competent to enter, into this lease Agreement on the terms and conditions contain herein.</span></p>
<p style="text-align:justify;font-size:14px;"><strong><u><span style="font-size:14px;">And whereas the both the parties have agreed for it on the following term and conditions: -</span></u></strong></p>
<ol style="list-style-type: decimal;" class="tfqxrtzrft">
   <li><span style="font-size:14px;">That the tenant shall pay the monthly rent <strong>Rs. <?php echo $_POST['rent'];?>/- (<span style="text-transform:uppercase"><?php echo getIndianCurrency($_POST['rent']);?></span> ONLY)</strong> Excluding maintenance to the first party in advance.</span></li>
   <li><span style="font-size:14px;">That the tenant has paid <strong>Rs. <?php echo $_POST['security'];?>/- (<span style="text-transform:uppercase"><?php echo getIndianCurrency($_POST['security']);?></span> ONLY)</strong> as a one-month security deposit which is refundable at the time of termination of the agreement or will be adjusted after handover all the keys of the apartment<strong>.</strong></span></li>
   <?php if(isset($_POST['autoGenerate']) AND $_POST['autoGenerate']==1){ ?>
   <li><span style="font-size:14px;">That the tenancy shall commenced from <strong><?php echo date("d-m-Y",strtotime($_POST['date']));?></strong> to <strong><?php echo date('d-m-Y', strtotime('+11 months', strtotime($_POST['date'])));?></strong> for the period of <strong>11 months.</strong></span></li>
   <?php }else{ ?>
   <li><span style="font-size:14px;">That the tenancy shall commenced from <strong><?php echo $_POST['from'];?></strong> to <strong><?php echo $_POST['to'];?></strong> for the period of <strong>11 months.</strong></span></li>
   <?php } ?>
   <li><span style="font-size:14px;">That the monthly rent of the premises will be paid to the Landlord on or before 10<sup>th</sup> day of each English calendar month.</span></li>
   <li><span style="font-size:14px;">That the lock-in period of this rent deed is for <strong><?php echo $_POST['locking'];?> months. In case tenant vacate</strong> the said primase within 6 months. The first party will forfeit the security amount.</span></li>
   <li><span style="font-size:14px;">That the rent shall be increased <strong>@10%</strong> after <strong>11</strong> months. Or with the mutual consent of both the parties.</span></li>
   <li><span style="font-size:14px;">That the electricity, water, sewer charges shall have paid by tenant which are not included in the above rent.</span></li>
   <li><span style="font-size:14px;">That the time during the terms and conditions of the tenancy, the tenant will keep and maintain premises clean, neat, tidy and healthy in all seasons.</span></li>
   <li><span style="font-size:14px;">That if the tenant wants to vacate the said premises before the tenancy period, he will have to serve 30 days prior notice to the owner. similarly, owner will also have to give 30 days&rsquo; prior notice to the Tenant.</span></li>
   <li><span style="font-size:14px;">That the tenant shall keep the property in good tenable condition day to day and upkeep and repair it when necessary.</span></li>
   <li><span style="font-size:14px;">That the tenant shall not sub-let. Assign or otherwise part with possession of the demised premised without the consent of the Landlord in writing.</span></li>
   <li><span style="font-size:14px;">That the tenant shall not keep any hazardous or inflammable items/goods, weapons etc. in the said premises which is prohibited by the law.</span></li>
   <li><span style="font-size:14px;">That the tenant shall not carry out any antisocial activates prohibited under prevailing Act of Law.</span></li>
   <li><span style="font-size:14px;">That the tenant shall not create any nuisance, annoyance or hindrance in the said premises or its surrounding neighbourhood and all other society/Association rules and regulation will be binding to the tenant and its occupant.</span></li>
   <li><span style="font-size:14px;">If the tenant fails to comply on any of the terms mention in this agreement, landlord shall have the right to terminate this agreement instantly and the tenant shall be liable to hand over vacant and peaceful possession back to the landlord and the landlord will have to give tenant back their outstanding deposit after clear all dues caused by the tenant, at the time of taking possession back.</span></li>
   <li><span style="font-size:14px;">That the landlord shall hold original copy of this agreement and photocopy shall remain with tenant.</span></li>
   <li><span style="font-size:14px;">That the tenant has taken the said premises only for use as <strong>Residential</strong> purpose and shall keep interior/exterior demise premises in a tenable condition and shall not use the premises for any immoral or nuisance purposes.</span></li>
   <li><span style="font-size:14px;">That the tenant shall not make any kind of alteration/addition to the existing structure and fixture/fitting in the said property.</span></li>
   <li><span style="font-size:14px;">That the landlord shall have full right to visit and inspect the aforesaid premises at any reasonable time without any objection or disturbance of the tenant.</span></li>
   <li><span style="font-size:14px;">That tenancy shall be renewed as per mutual understanding of both the parties after the expiry of this rent agreement.</span></li>
   <li><span style="font-size:14px;">The tenant will not challenge in any court of law regarding overstay, increment of rent or any other matter all the disputes need to be resolved in the presence of both the witness if there would be any dispute it will be considered  as a one-month advance notice from landlord to the tenant.</span></li>
   <li><span style="font-size:14px;">Maintenance has to be paid by the tenant.</span></li>
</ol>
<p style="text-align:justify;font-size:14px;"><span style="font-size:14px;">&nbsp;</span></p>
<p style="text-align:justify;font-size:14px;"><span style="font-size:14px;">In Witness whereof both the parties have set their respective hands to this agreement on the date, month and year herein written.</span></p>
<p style="text-align:justify;font-size:14px;"><span style="font-size:14px;">&nbsp;</span></p>
<p style="text-align:justify;font-size:14px;"><span style="font-size:14px;">WITNESSES</span></p>
<div style="font-size:14px;">
   <ul style="list-style-type: decimal;">
      <li style="font-size:14px;"><span style="font-size:14px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sign of first Party/ Landlord</span></li>
      <li style="font-size:14px;margin-top:100px;"><span style="font-size:14px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sign. of Second Party/Tenant</span></li>
   </ul>
</div>
</div>
<?php
   echo "</body>";
   echo "</html>";
}

   function getIndianCurrency(float $number)
{
    $decimal = round($number - ($no = floor($number)), 2) * 100;
    $hundred = null;
    $digits_length = strlen($no);
    $i = 0;
    $str = array();
    $words = array(0 => '', 1 => 'one', 2 => 'two',
        3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
        7 => 'seven', 8 => 'eight', 9 => 'nine',
        10 => 'ten', 11 => 'eleven', 12 => 'twelve',
        13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
        16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
        19 => 'nineteen', 20 => 'twenty', 30 => 'thirty',
        40 => 'forty', 50 => 'fifty', 60 => 'sixty',
        70 => 'seventy', 80 => 'eighty', 90 => 'ninety');
    $digits = array('', 'hundred','thousand','lakh', 'crore');
    while( $i < $digits_length ) {
        $divider = ($i == 2) ? 10 : 100;
        $number = floor($no % $divider);
        $no = floor($no / $divider);
        $i += $divider == 10 ? 1 : 2;
        if ($number) {
            $plural = (($counter = count($str)) && $number > 9) ? '' : null;
            $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
            $str [] = ($number < 21) ? $words[$number].' '. $digits[$counter]. $plural.' '.$hundred:$words[floor($number / 10) * 10].' '.$words[$number % 10]. ' '.$digits[$counter].$plural.' '.$hundred;
        } else $str[] = null;
    }
    $Rupees = implode('', array_reverse($str));
    $paise = ($decimal > 0) ? "." . ($words[$decimal / 10] . " " . $words[$decimal % 10]) . ' Paise' : '';
    return ($Rupees ? $Rupees . 'Rupees ' : '') . $paise;
}

?>
<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <title>Create Rent Agreement</title>
   </head>
   <body>
      <form style="width:50%;margin:auto;margin-top:50px;" method="POST" action="#">
         <div class="form-group">
            <label for="exampleInputEmail1">Date</label>
            <input type="date" name="date" value="<?php echo (isset($_SESSION['date']))?$_SESSION['date']:date("Y-m-d");?>" class="form-control" id="vmauhabied1" aria-describedby="emailHelp" placeholder="Enter Date">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1">Owner</label>
            <input type="text" name="owner" class="form-control" id="vmauhabied2" placeholder="Owner" value="<?php echo (isset($_SESSION['owner']))?$_SESSION['owner']:'MR. Name (AADHAR)';?>">
         </div>
         <!-- <div class="form-group">
            <label for="exampleInputPassword1">Aadhar Owner</label>
            <input type="text" name="aadharOwner" class="form-control" id="vmauhabied3" placeholder="Aadhar Owner" value="<?php echo (isset($_SESSION['aadharOwner']))?$_SESSION['aadharOwner']:'';?>">
         </div> -->
         <div class="form-group">
            <label for="exampleInputPassword1">Tenant</label>
            <input type="text" name="tenant" class="form-control" id="vmauhabied4" placeholder="Tenant" value="<?php echo (isset($_SESSION['tenant']))?$_SESSION['tenant']:'MR. Name (AADHAR)';?>">
         </div>
         <!-- <div class="form-group">
            <label for="exampleInputPassword1">Aadhar Tenant</label>
            <input type="text" name="aadharTenant" class="form-control" id="vmauhabied5" placeholder="Aadhar Tenant" value="<?php echo (isset($_SESSION['aadharTenant']))?$_SESSION['aadharTenant']:'';?>">
         </div> -->
         <div class="form-group">
            <label for="exampleInputPassword1">Flat</label>
            <input type="text" name="flat" class="form-control" id="vmauhabied6" placeholder="Address" value="<?php echo (isset($_SESSION['flat']))?$_SESSION['flat']:'A7-907';?>">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1">Flat Address</label>
            <input type="text" name="flatAddress" class="form-control" id="vmauhabied7" placeholder="Address" value="<?php echo (isset($_SESSION['flatAddress']))?$_SESSION['flatAddress']:'FLAT NO: - A7-907, SIGNATURE GLOBAL SOLERA 2, SECTOR 107, GURGAON, HARYANA';?>">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1">Rent</label>
            <input type="text" name="rent" class="form-control" id="vmauhabied8" placeholder="Rent" value="<?php echo (isset($_SESSION['rent']))?$_SESSION['rent']:'10000';?>">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1">Security</label>
            <input type="text" name="security" class="form-control" id="vmauhabied9" placeholder="Security" value="<?php echo (isset($_SESSION['security']))?$_SESSION['security']:'10000';?>">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1">Locking</label>
            <input type="text" name="locking" class="form-control" id="vmauhabied10" placeholder="Locking" value="<?php echo (isset($_SESSION['locking']))?$_SESSION['locking']:'6';?>">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1">Tenancey From</label>
            <input type="date" name="from" class="form-control" id="vmauhabied11" placeholder="From" value="<?php echo (isset($_SESSION['from']))?$_SESSION['from']:date("Y-m-d");?>">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1">Tenancey To</label>
            <input type="date" name="to" class="form-control" id="vmauhabied12" placeholder="Ro" value="<?php echo (isset($_SESSION['to']))?$_SESSION['to']:date('Y-m-d', strtotime('+11 months', strtotime(date("Y-m-d"))));?>">
         </div>
         <div class="form-group">
            <label for="exampleInputPassword1">Auto Generate 11 Months (PHP)</label><br>
            <input type="checkbox" name="autoGenerate" value="1" checked>
         </div>
         <button type="submit" class="btn btn-primary" name="submit">Submit</button>
      </form>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      <script type="text/javascript">
        $(document).on('blur', '#vmauhabied1', function() {
            var val = $(this).val();
            var date =  val.split("-");
            console.log(date[0]);
            console.log(date[1]);
            console.log(date[2]);
            $(".vmauhabied10").val(val);
            $(".vmauhabied11").val(val);
            var d = new Date(date[0], date[1], date[2]); // January 1, 2000
            d.setMonth(d.getMonth() + 10);
            console.log(d.getFullYear(), d.getMonth()+1, d.getDate());
        });
        $(document).on('keyup', '#vmauhabied7', function() {
            var val = $(this).val();
            $("#vmauhabied8").val(val);
        });
      </script>
   </body>
</html>