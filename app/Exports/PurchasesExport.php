<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Http\Request; // Import Request
use DB;

class PurchasesExport implements FromView
{
    protected $startDate;
    protected $endDate;

    public function __construct($startDate, $endDate)
    {
        $this->startDate = $startDate;
        $this->endDate = $endDate;
    }

    public function view(): View
    {
        // Get store ID from session
        $storeId = session('storeId');

        // Fetch purchases with status=1, storeId from session, and within the date range
        if($this->startDate!=''  AND $this->startDate!=''){
            $purchases = DB::select("SELECT * FROM purchases WHERE status = 1 AND storeId = ? AND dateAdded BETWEEN ? AND ?", [
            $storeId,
            $this->startDate,
            $this->endDate
            ]);
        }else{
            $purchases = DB::select("SELECT * FROM purchases WHERE status = 1 AND storeId = ?", [
            $storeId
            ]);
        }
        

        $formattedPurchases = [];

        foreach ($purchases as $purchase) {
            $products = json_decode($purchase->products, true);

            // Check if products exist
            if (is_array($products) && count($products) > 0) {
                foreach ($products as $product) {
                    $formattedPurchases[] = [
                        'purchase_purchaseId' => $purchase->purchaseId,
                        'purchase_sno' => $purchase->sno,
                        'purchase_heading' => $purchase->heading,
                        'purchase_reference' => $purchase->refrence,
                        'purchase_vendorId' => $purchase->vendorId,
                        'purchase_date' => $purchase->date,
                        'purchase_billType' => $purchase->billType,
                        'product_productId' => $product['productId'],
                        'product_heading' => $product['heading'],
                        'product_model' => $product['model'],
                        'product_barcode' => $product['barcode'],
                        'product_cost' => $product['cost'],
                        'product_price' => $product['price'],
                        'product_percent' => $product['percent'],
                        'product_manufacturerId' => $product['manufacturerId'],
                        'product_categoryId' => $product['categoryId'],
                        'product_vendorId' => $product['vendorId'],
                        'product_unitId' => $product['unitId'],
                        'product_taxId' => $product['taxId'],
                        'product_taxType' => $product['taxType'],
                        'product_quantity' => $product['quantity'],
                        'product_subtract' => $product['subtract'],
                        'product_image' => $product['image'],
                        'product_relatedImage' => $product['relatedImage'],
                        'product_showInPos' => $product['showInPos'],
                        'product_softDelete' => $product['softDelete'],
                        'product_storeId' => $product['storeId'],
                        'product_userId' => $product['userId'],
                        'product_updatedBy' => $product['updatedBy'],
                        'product_insertedBy' => $product['insertedBy'],
                        'product_dateUpdated' => $product['dateUpdated'],
                        'product_status' => $product['status'],
                        'product_dateAdded' => $product['dateAdded'],
                        'product_taxHeading' => $product['taxHeading'],
                        'product_taxPercent' => $product['taxPercent'],
                        'product_taxExclusiveValue' => $product['taxExclusiveValue'],
                        'product_taxInclusiveValue' => $product['taxInclusiveValue'],
                        'product_tax' => $product['tax'],
                        'product_basePriceCost' => $product['basePriceCost'],
                        'product_discount' => $product['discount'],
                        'product_discountValue' => $product['discountValue'],
                        'product_extraInformation' => $product['extraInformation'],
                        'product_total' => $product['total'],
                        'product_rewardPoints' => $product['rewardPoints'],
                        'purchase_comment' => $purchase->comment,
                        'purchase_subTotal' => $purchase->subTotal,
                        'purchase_tax' => $purchase->tax,
                        'purchase_total' => $purchase->total,
                        'purchase_purchaseStatus' => $purchase->purchaseStatus,
                        'purchase_storeId' => $purchase->storeId,
                        'purchase_userId' => $purchase->userId,
                        'purchase_softDelete' => $purchase->softDelete,
                        'purchase_updatedBy' => $purchase->updatedBy,
                        'purchase_dateUpdated' => $purchase->dateUpdated,
                        'purchase_status' => $purchase->status,
                        'purchase_insertedBy' => $purchase->insertedBy,
                        'purchase_dateAdded' => $purchase->dateAdded,
                    ];
                }
            }
        }

        return view('admin.exports.purchases', [
            'purchases' => $formattedPurchases
        ]);
    }
}