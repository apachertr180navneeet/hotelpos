<?php
$symbol = $controller::getCurrencySymbol();
$customCss = $controller::decrypt($template['customCss']);
$str = $controller::decrypt($template['template']);
$str = str_replace('{{URL}}', url('/'), $str);
$str = str_replace('{{WEBSITE_NAME}}', $storeSettings['websiteName'], $str);
$str = str_replace('{{WEBSITE_LOGO}}', $storeSettings['websiteLogo'], $str);
$str = str_replace('{{STORE_TERMS}}', $storeSettings['storeTerms'], $str);
$str = str_replace('{{INVOICE_NUMBER}}', $order['invoicePrefix'] . $order['orderId'], $str);
$str = str_replace('{{INVOICE_DATE}}', date("F j, Y, g:i a", strtotime($order['dateAdded'])), $str);
$str = str_replace('{{CUSTOMER_NAME}}', $order['name'], $str);
$str = str_replace('{{CUSTOMER_MOBILE}}', $order['mobile'], $str);
$str = str_replace('{{CUSTOMER_EMAIL}}', $order['email'], $str);
$str = str_replace('{{PAYMENT_IN_WORDS}}', ucwords(strtolower($controller::getIndianCurrency($order['total']))), $str);
if ($order['hotel'] == 1) {

    $hotelRoom = $controller::getDataWhere("order_hotel_room", "orderId", $order['orderId']);

    if (!empty($hotelRoom) && isset($hotelRoom[0]['hotel'])) {
        $hotelRoomData = json_decode($hotelRoom[0]['hotel'], true);

        if (!empty($hotelRoomData) && isset($hotelRoomData['heading'])) {
            $str = str_replace('{{ROOM_NO}}', "<strong>Room No " . $hotelRoomData['heading'] . "</strong>", $str);
        } else {
            $str = str_replace('{{ROOM_NO}}', "", $str);
        }
    } else {
        $str = str_replace('{{ROOM_NO}}', "", $str);
    }

} else {
    $str = str_replace('{{ROOM_NO}}', "", $str);
}

if ($storeSettings['enableRewardPoints'] == 1) {
     $str = str_replace('{{BALANCE_REWARD_POINT}}', "<strong>Reward Balance ".$customer['rewardPoints']."</strong>", $str);
} else {
     $str = str_replace('{{BALANCE_REWARD_POINT}}', "", $str); 
}


if($order['seatingTableId'] > 0){
    $str = str_replace('{{TABLENO}}', $controller::getDataWhere('seating_tables','seatingTableId',$order['seatingTableId'])[0]['heading'], $str);
}

if ($order['paymentMethod'] == 'Multiple') {
    $multiplePaymentData = '<table width="100%">';
    $multiplePaymentData .= '<tr>';
    $multiplePaymentData .= '<td style="padding:5px;font-weight:bold" align="right" colspan="2">Multiple</td>';
    $multiplePaymentData .= '</tr>';
    foreach (json_decode($order['multiplePaymentData'], true) as $multiple) {
        $multiplePaymentData .= '<tr>';
        $multiplePaymentData .= '<td style="padding:5px;font-weight:bold">' . $multiple['paymentMethod'] . '</td>';
        $multiplePaymentData .= '<td style="padding:5px;font-weight:bold" class="symbol" align="right">' . $multiple['amount'] . '</td>';
        $multiplePaymentData .= '</tr>';
    }
    $multiplePaymentData .= "</table>";
    $str = str_replace('{{ORDER_PAYMENT_METHOD}}', $multiplePaymentData, $str);
}
else {
    $str = str_replace('{{ORDER_PAYMENT_METHOD}}', $order['paymentMethod'], $str);
}
$str = str_replace('{{STORE_NAME}}', $store['name'], $str);
$str = str_replace('{{STORE_ADDRESS}}', $store['address'], $str);
$str = str_replace('{{STORE_MOBILE}}', $store['mobile'], $str);
$str = str_replace('{{STORE_EMAIL}}', $store['email'], $str);
$loopTrCode = $controller::decrypt($template['loopTrCode']);

$loopTrCodeHtmlCombined = "";

$i = 1;
if(!empty($invoiceProducts)){
foreach ($invoiceProducts as $product) {
    if($order['checkoutType'] == 'sendToKot'){
        if(isset($product['sentToKot']) AND $product['sentToKot'] == 0){
            continue;
        }
    }
    $loopTrCodeHtml = $loopTrCode; 
    $loopTrCodeHtml = str_replace('{{SNO}}', $i, $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_NAME}}', $product['heading'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{IVALUE}}', $i, $loopTrCodeHtml);
    if ($product['model'] != '') {
        $loopTrCodeHtml = str_replace('{{PRODUCT_MODEL}}', $product['model'], $loopTrCodeHtml);
    }
    else {
        $customCss .= '.dxqzkzaefz'.$i.'{display:none} ';
    }
    if ($product['barcode'] != '') {
        $loopTrCodeHtml = str_replace('{{PRODUCT_BARCODE}}', $product['barcode'], $loopTrCodeHtml);
    }
    else {
        $customCss .= '.mfopfyhkfb'.$i.'{display:none} ';
    }
    if ($product['hsnCode'] != '') {
        $loopTrCodeHtml = str_replace('{{HSN_CODE}}', $product['hsnCode'], $loopTrCodeHtml);
    }
    else {
        $customCss .= '.pitlfbdnri'.$i.'{display:none} ';
    }
    $loopTrCodeHtml = str_replace('{{PRODUCT_PRICE}}', $symbol." ".$product['price'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_QUANTITY}}', $product['quantity'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_DISCOUNT}}', $product['discount'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_DISCOUNT_VALUE}}', $symbol." ".$product['discountValue'], $loopTrCodeHtml);
    //$loopTrCodeHtml = str_replace('{{PRODUCT_EXTRA_INFORMATION}}', $product['extraInformation'], $loopTrCodeHtml);
    if (trim($product['extraInformation']) != '') {
        $loopTrCodeHtml = str_replace('{{PRODUCT_EXTRA_INFORMATION}}', $product['extraInformation'], $loopTrCodeHtml);
    }
    else {
        $customCss .= '.jdiocygler'.$i.'{display:none !important} ';
    }
    if ($product['taxInclusiveValue'] > 0) {
        $loopTrCodeHtml = str_replace('{{PRODUCT_TAX}}', $symbol." ".$product['taxInclusiveValue'], $loopTrCodeHtml);
    }
    else {
        $loopTrCodeHtml = str_replace('{{PRODUCT_TAX}}', $symbol." ".$product['taxExclusiveValue'], $loopTrCodeHtml);
    }
    if($product['taxHeading']==""){
        $loopTrCodeHtml = str_replace('{{PRODUCT_TAX_HEADING}}', 0, $loopTrCodeHtml);
    }else{
        $loopTrCodeHtml = str_replace('{{PRODUCT_TAX_HEADING}}', $product['taxHeading'], $loopTrCodeHtml);
    }
    
    $loopTrCodeHtml = str_replace('{{PRODUCT_TAX_TYPE}}', $product['taxType'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_TOTAL}}', $symbol." ".$product['total'], $loopTrCodeHtml);
    $loopTrCodeHtmlCombined .= $loopTrCodeHtml;
    $i++;
}
}
$subTotalTrLoop = $controller::decrypt($template['subTotalTrLoop']);
$subTotalTrLoopHtml = $subTotalTrLoop;
$subTotalTrLoopHtmlCombined = "";
$i = 1;
$keys = array("totalItemsInCart", "totalQuantityInCart");
$addSymbolArray = array("subTotal", "tax", "total", "productDiscount");
foreach (json_decode($orderTotal['orderTotal'], true) as $key => $value) {
    if (in_array($key, $keys)) {
        continue;
    }
    if (empty(json_decode($value, true))) {
        continue;
    }
    $subTotalTrLoopHtml = str_replace('{{KEY}}', ucwords(preg_replace('/(?<!\ )[A-Z]/', ' $0', $key)), $subTotalTrLoop);
    $subTotalTrLoopHtml = str_replace('{{KEYCLASS}}', $key, $subTotalTrLoopHtml);
    if ($key == 'additionalCharges' AND !empty(json_decode($value, true))) {
        $addCharges = "";
        foreach (json_decode($value, true) as $k1 => $extra) {
            $extra = $symbol." " . $extra;
            $addCharges .= $k1 . " : " . $extra . "<br>";
        }
        $subTotalTrLoopHtml = str_replace('{{VALUE}}', $addCharges, $subTotalTrLoopHtml);
    } else if ($key == 'globalDiscount' AND !empty(json_decode($value, true))) {
        $globalDiscount = "";
        foreach (json_decode($value, true) as $k1 => $extra) {
            if ($k1 == 'discountValue') {
                $extra = $symbol." " . $extra;
            }
            $globalDiscount .= ucwords(preg_replace('/(?<!\ )[A-Z]/', ' $0', $k1)) . " : " . $extra . "<br>";
        }
        $subTotalTrLoopHtml = str_replace('{{VALUE}}', $globalDiscount, $subTotalTrLoopHtml);
    } else if ($key == 'tax') {
        if (in_array($key, $addSymbolArray)) {
            $value1 = $value;
            $value = $symbol." " . $value."<br>";
            $v1 = $value1/2;
            $v1 = number_format((float)$v1, 2, '.', '');
            $value .= "CGST : " . $v1."<br>";
            $value .= "SGST : " . $v1;
        }
        $subTotalTrLoopHtml = str_replace('{{VALUE}}', $value, $subTotalTrLoopHtml);
    } else {
        if (in_array($key, $addSymbolArray)) {
            $value = $symbol." " . $value;
        }
        $subTotalTrLoopHtml = str_replace('{{VALUE}}', $value, $subTotalTrLoopHtml);
    }
    if ($value == "" AND $value == 0) {
        $customCss .= '.ccgjdrqzrb_' . $key . '{display:none}';
    }
    $subTotalTrLoopHtmlCombined .= $subTotalTrLoopHtml;
}
$str = str_replace('{{TABLE_CODE}}', $controller::decrypt($template['tableCode']), $str);
$str = str_replace('{{LOOP_TR_CODE}}', $loopTrCodeHtmlCombined, $str);
$str = str_replace('{{SUB_TOTAL_TR_LOOP}}', $subTotalTrLoopHtmlCombined, $str);

if($order['posComment']!=''){
    $str = str_replace('{{COMMENT}}', $order['posComment'], $str);
}else{
    $customCss .= '.ewhyhjvzhb{display:none}';
}

if($order['employeeId'] > 0){
    $employee = $controller::getDataWhere("employees","employeeId",$order['employeeId']);
    $str = str_replace('{{EMPLOYEENAME}}', $employee[0]['name'], $str);
}else{
    $customCss .= '.llypvjpvlo{display:none}';
}

echo '<style>';
echo $customCss;
echo '</style>';
eval("?>$str");
?>