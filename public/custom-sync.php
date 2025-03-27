<?php
ini_set('max_execution_time', 5000);
$main = mysqli_connect("localhost", "root", "", "ship_shop_pos_sifoz");
$old = mysqli_connect("localhost", "root", "", "ship_shop_pos_sifoz_old");

$tables = array();
$result = mysqli_query($main, "SHOW TABLES");
while ($row = mysqli_fetch_row($result)) {
    $tables[] = $row[0];
}
$fetch = array("products");
foreach ($tables as $table) {
   if(!in_array($table, $fetch)){
      continue;
   }
   mysqli_query($main,"TRUNCATE `".$table."`");

   
   $select = mysqli_query($old,"SELECT * FROM `$table`");
   while($result = mysqli_fetch_assoc($select)){

      $sql = "SHOW COLUMNS FROM `$table`";
      $results = mysqli_query($main, $sql);
      $string = "INSERT INTO `$table` SET ";
      /*while ($row = mysqli_fetch_row($results)) {
         if(isset($result[$row[0]])){
            $string .= $row[0]."='".$result[$row[0]]."',";
         } 
         

      }*/

      /*$string .= "customerId='".$result['customerId']."',";
      $string .= "name='".$result['customerName']."',";
      $string .= "mobile='".$result['customerMobile']."',";
      $string .= "email='".$result['customerEmail']."',";
      $string .= "openingBalance='".$result['openingBalance']."',";
      $string .= "stateId='".$result['stateId']."',";
      $string .= "countryId='1',";
      $string .= "gstNo='".$result['customerGstNumber']."',";
      $string .= "rewardPoints='".$result['customerRewardPoints']."',";*/

      /*$string .= "customerLedgerRewardId='".$result['customerRewardHistoryId']."',";
      $string .= "orderId='".$result['orderId']."',";
      $string .= "customerId='".$result['customerId']."',";
      if($result['type']=='plus'){
         $result['type'] = 'Credit';
      }else{
         $result['type'] = 'Debit';
      }
      $string .= "type='".$result['type']."',";
      $string .= "reward='".$result['newReward']."',";
      $string .= "paymentId='8',";
      $string .= "remark='Credit Added'";*/

      $string .= "productId='".$result['productId']."',";
      $string .= "heading='".$result['productName']."',";
      $string .= "model='".$result['productModel']."',";
      $string .= "barcode='".$result['productBarcode']."',";
      $string .= "price='".$result['productPrice']."',";
      $string .= "quantity='".$result['productQuantity']."'";

      //echo $string;

      //echo $string."<br>";
      mysqli_query($main,rtrim($string, ","));
      //echo rtrim($string, ",")."<br><br><br>";
      //break;

   }     


}
function columnNames($table) {
   $main = mysqli_connect("localhost", "root", "", "ship_shop_pos_jaitaran");
        $sql = "SHOW COLUMNS FROM `$table`";
        $results = mysqli_query($main, $sql);
        $columnArr = array();
        while ($row = mysqli_fetch_row($results)) {
            $columnArr[] = $row;
        }
        return $columnArr;
    }
?>
