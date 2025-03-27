<?php
$symbol = $controller::getCurrencySymbol();
$customCss = $controller::decrypt($template['customCss']);
$str = $controller::decrypt($template['template']);
$str = str_replace('{{URL}}', url('/'), $str);
$str = str_replace('{{WEBSITE_NAME}}', $storeSettings['websiteName'], $str);
$str = str_replace('{{WEBSITE_LOGO}}', $storeSettings['websiteLogo'], $str);
$str = str_replace('{{STORE_TERMS}}', $storeSettings['storeTerms'], $str);
$str = str_replace('{{PO_NUMBER}}', $order['purchaseOrderId'], $str);
$str = str_replace('{{PO_DATE}}', date("F j, Y, g:i a", strtotime($order['dateAdded'])), $str);
$str = str_replace('{{VENDOR_NAME}}', $vendor['heading'], $str);
$str = str_replace('{{VENDOR_MOBILE}}', $vendor['mobile'], $str);
$str = str_replace('{{VENDOR_EMAIL}}', $vendor['email'], $str);
$str = str_replace('{{PAYMENT_IN_WORDS}}', ucwords(strtolower($controller::getIndianCurrency($order['total']))), $str);
$str = str_replace('{{STORE_NAME}}', $store['name'], $str);
$str = str_replace('{{STORE_ADDRESS}}', $store['address'], $str);
$str = str_replace('{{STORE_MOBILE}}', $store['mobile'], $str);
$str = str_replace('{{STORE_EMAIL}}', $store['email'], $str);
$loopTrCode = $controller::decrypt($template['loopTrCode']);
$loopTrCodeHtml = $loopTrCode;
$loopTrCodeHtmlCombined = "";
$i = 1;
if(!empty($invoiceProducts)){
foreach ($invoiceProducts as $product) {
    $loopTrCodeHtml = str_replace('{{SNO}}', $i, $loopTrCode);
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
    $loopTrCodeHtml = str_replace('{{PRODUCT_PRICE}}', $product['price'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_QUANTITY}}', $product['quantity'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_DISCOUNT}}', $product['discount'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_DISCOUNT_VALUE}}', $product['discountValue'], $loopTrCodeHtml);
    //$loopTrCodeHtml = str_replace('{{PRODUCT_EXTRA_INFORMATION}}', $product['extraInformation'], $loopTrCodeHtml);
    if (trim($product['extraInformation']) != '') {
        $loopTrCodeHtml = str_replace('{{PRODUCT_EXTRA_INFORMATION}}', $product['extraInformation'], $loopTrCodeHtml);
    }
    else {
        $customCss .= '.jdiocygler'.$i.'{display:none !important} ';
    }
    if ($product['taxInclusiveValue'] > 0) {
        $loopTrCodeHtml = str_replace('{{PRODUCT_TAX}}', $product['taxInclusiveValue'], $loopTrCodeHtml);
    }
    else {
        $loopTrCodeHtml = str_replace('{{PRODUCT_TAX}}', $product['taxExclusiveValue'], $loopTrCodeHtml);
    }
    if($product['taxHeading']==""){
        $loopTrCodeHtml = str_replace('{{PRODUCT_TAX_HEADING}}', 0, $loopTrCodeHtml);
    }else{
        $loopTrCodeHtml = str_replace('{{PRODUCT_TAX_HEADING}}', $product['taxHeading'], $loopTrCodeHtml);
    }
    
    $loopTrCodeHtml = str_replace('{{PRODUCT_TAX_TYPE}}', $product['taxType'], $loopTrCodeHtml);
    $loopTrCodeHtml = str_replace('{{PRODUCT_TOTAL}}', $product['total'], $loopTrCodeHtml);
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
$orderTotal['orderTotal'] = json_encode(array("subTotal"=>$order['subTotal'],"tax"=>$order['tax'],"total"=>$order['total']));
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
            $extra = $symbol." ". $extra;
            $addCharges .= $k1 . " : " . $extra . "<br>";
        }
        $subTotalTrLoopHtml = str_replace('{{VALUE}}', $addCharges, $subTotalTrLoopHtml);
    } else if ($key == 'globalDiscount' AND !empty(json_decode($value, true))) {
        $globalDiscount = "";
        foreach (json_decode($value, true) as $k1 => $extra) {
            if ($k1 == 'discountValue') {
                $extra = $symbol." ". $extra;
            }
            $globalDiscount .= ucwords(preg_replace('/(?<!\ )[A-Z]/', ' $0', $k1)) . " : " . $extra . "<br>";
        }
        $subTotalTrLoopHtml = str_replace('{{VALUE}}', $globalDiscount, $subTotalTrLoopHtml);
    } else if ($key == 'tax') {
        if (in_array($key, $addSymbolArray)) {
            $value1 = $value;
            $value = $symbol." ". $value."<br>";
            $v1 = $value1/2;
            $v1 = number_format((float)$v1, 2, '.', '');
            $value .= "CGST : " . $v1."<br>";
            $value .= "SGST : " . $v1;
        }
        $subTotalTrLoopHtml = str_replace('{{VALUE}}', $value, $subTotalTrLoopHtml);
    } else {
        if (in_array($key, $addSymbolArray)) {
            $value = $symbol." ". $value;
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
echo '<style>';
echo $customCss;
echo '</style>';
eval("?>$str");
?>