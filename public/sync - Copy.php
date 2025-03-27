<?php
ini_set('max_execution_time', 5000);
$main = mysqli_connect("localhost", "root", "", "ship_shop_pos_jaitaran");
$old = mysqli_connect("localhost", "root", "", "ship_shop_pos_jaitaran_old");

$tables = array();
$result = mysqli_query($main, "SHOW TABLES");
while ($row = mysqli_fetch_row($result)) {
    $tables[] = $row[0];
}
$fetch = array(
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
   "vendors");
foreach ($tables as $table) {
   if(!in_array($table, $fetch)){
      continue;
   }
   mysqli_query($main,"TRUNCATE `".$table."`");
   //echo '<table border="1" width="50%">';
   //echo '<tr>';
   //echo '<td width="50%">'.$table.'</td>';
   //echo '<td width="50%">';
   
   
      $select = mysqli_query($old,"SELECT * FROM `$table`");
      while($result = mysqli_fetch_assoc($select)){
      $i = 0;   
      $autoIncKey = "0";
      $autoIncValue = "0";
      foreach(columnNames($table) as $col){
         //echo $result[$col[0]]."<br>";
        // echo $col[0]."<br>";


         if($i==0){
            if(isset($result[$col[0]])){
            mysqli_query($main,"INSERT INTO `$table` SET $col[0]='".$result[$col[0]]."'");
            //echo "INSERT INTO `$table` SET $col[0]='".$result[$col[0]]."'<br>";
            $autoIncKey = $col[0];
            $autoIncValue = $result[$col[0]];
            }
         }else{
            if(isset($result[$col[0]])){
            mysqli_query($main,"UPDATE `$table` SET $col[0]='".$result[$col[0]]."' WHERE $autoIncKey='".$autoIncValue."'");
            //echo "UPDATE `$table` SET $col[0]='".$result[$col[0]]."' WHERE $autoIncKey='".$autoIncValue."'<br>";
            }
         }

         $i++;
      }
      }   

         //if(isset($result[$col[0]])){
            //echo $result[$col[0]]."<br>";
         //}
         //print_r($col[0]);
         //$col[0]."<br>";
        

         /*if($i==0){
         
         if(isset($result[$col[0]])){
            
        
         mysqli_query($main,"INSERT INTO `$table` SET $col[0]='".$result[$col[0]]."'");
         echo "INSERT INTO `$table` SET $col[0]='".$result[$col[0]]."'<br>";
         $autoIncKey = $col[0];
         $autoIncValue = $result[$col[0]];

          }
      }else{
         if(isset($result[$col[0]])){
           
         
         mysqli_query($main,"UPDATE `$table` SET $col[0]='".$result[$col[0]]."' WHERE $autoIncKey='".$autoIncValue."'");
         
         echo "UPDATE `$table` SET $col[0]='".$result[$col[0]]."' WHERE $autoIncKey='".$autoIncValue."'<br>";
         }
      }

      }*/

  
   //echo '</td>';
   //echo '</tr>';
   //echo '</table>';
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
