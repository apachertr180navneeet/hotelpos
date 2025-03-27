<?php
ini_set('max_execution_time', 5000);
$main = mysqli_connect("localhost", "root", "", "ship_shop_pos_jaitaran");
$old = mysqli_connect("localhost", "root", "", "ship_shop_pos_jaitaran_old");

$tables = array();
$result = mysqli_query($main, "SHOW TABLES");
while ($row = mysqli_fetch_row($result)) {
    $tables[] = $row[0];
}
/*$fetch = array(
   "customers",
   "customer_ledger_reward",
   "customer_ledger_wallet",
   "invoice_template",
   "order","order_history",
   "order_product",
   "order_total",
   "order_status",
   "products",
   "purchases",
   "settings",
   "stores",
   "store_settings",
   "vendors");*/
   $fetch = array(
   "order_history",
   "order_total",
   "order_status",
   "products",
   "purchases",
   "settings",
   "stores",
   "store_settings",
   "vendors");
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
      while ($row = mysqli_fetch_row($results)) {
         if(isset($result[$row[0]])){
            $string .= $row[0]."='".$result[$row[0]]."',";
         } 
         

      }

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
