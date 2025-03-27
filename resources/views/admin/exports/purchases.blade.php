<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Purchases Export</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <div class="container">
        <h1>Purchases Export</h1>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Purchase Purchase Id</th>
                    <th>Purchase Sno</th>
                    <th>Purchase Heading</th>
                    <th>Purchase Reference</th>
                    <th>Purchase Vendor Id</th>
                    <th>Purchase Date</th>
                    <th>Purchase Bill Type</th>
                    <th>Product Product Id</th>
                    <th>Product Heading</th>
                    <th>Product Model</th>
                    <th>Product Barcode</th>
                    <th>Product Cost</th>
                    <th>Product Price</th>
                    <th>Product Percent</th>
                    <th>Product Manufacturer Id</th>
                    <th>Product Category Id</th>
                    <th>Product Vendor Id</th>
                    <th>Product Unit Id</th>
                    <th>Product Tax Id</th>
                    <th>Product Tax Type</th>
                    <th>Product Quantity</th>
                    <th>Product Subtract</th>
                    <th>Product Image</th>
                    <th>Product Related Image</th>
                    <th>Product Show In Pos</th>
                    <th>Product Soft Delete</th>
                    <th>Product Store Id</th>
                    <th>Product User Id</th>
                    <th>Product Updated By</th>
                    <th>Product Inserted By</th>
                    <th>Product Date Updated</th>
                    <th>Product Status</th>
                    <th>Product Date Added</th>
                    <th>Product Tax Heading</th>
                    <th>Product Tax Percent</th>
                    <th>Product Tax Exclusive Value</th>
                    <th>Product Tax Inclusive Value</th>
                    <th>Product Tax</th>
                    <th>Product Base Price Cost</th>
                    <th>Product Discount</th>
                    <th>Product Discount Value</th>
                    <th>Product Extra Information</th>
                    <th>Product Total</th>
                    <th>Product Reward Points</th>
                    <th>Purchase Comment</th>
                    <th>Purchase Sub Total</th>
                    <th>Purchase Tax</th>
                    <th>Purchase Total</th>
                    <th>Purchase Purchase Status</th>
                    <th>Purchase Store Id</th>
                    <th>Purchase User Id</th>
                    <th>Purchase Soft Delete</th>
                    <th>Purchase Updated By</th>
                    <th>Purchase Date Updated</th>
                    <th>Purchase Status</th>
                    <th>Purchase Inserted By</th>
                    <th>Purchase Date Added</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($purchases as $purchase)
                    <tr>
                        <td>{{ $purchase['purchase_purchaseId'] }}</td>
                        <td>{{ $purchase['purchase_sno'] }}</td>
                        <td>{{ $purchase['purchase_heading'] }}</td>
                        <td>{{ $purchase['purchase_reference'] }}</td>
                        <td>{{ $purchase['purchase_vendorId'] }}</td>
                        <td>{{ $purchase['purchase_date'] }}</td>
                        <td>{{ $purchase['purchase_billType'] }}</td>
                        <td>{{ $purchase['product_productId'] }}</td>
                        <td>{{ $purchase['product_heading'] }}</td>
                        <td>{{ $purchase['product_model'] }}</td>
                        <td>{{ $purchase['product_barcode'] }}</td>
                        <td>{{ $purchase['product_cost'] }}</td>
                        <td>{{ $purchase['product_price'] }}</td>
                        <td>{{ $purchase['product_percent'] }}</td>
                        <td>{{ $purchase['product_manufacturerId'] }}</td>
                        <td>{{ $purchase['product_categoryId'] }}</td>
                        <td>{{ $purchase['product_vendorId'] }}</td>
                        <td>{{ $purchase['product_unitId'] }}</td>
                        <td>{{ $purchase['product_taxId'] }}</td>
                        <td>{{ $purchase['product_taxType'] }}</td>
                        <td>{{ $purchase['product_quantity'] }}</td>
                        <td>{{ $purchase['product_subtract'] }}</td>
                        <td>{{ $purchase['product_image'] }}</td>
                        <td>{{ $purchase['product_relatedImage'] }}</td>
                        <td>{{ $purchase['product_showInPos'] }}</td>
                        <td>{{ $purchase['product_softDelete'] }}</td>
                        <td>{{ $purchase['product_storeId'] }}</td>
                        <td>{{ $purchase['product_userId'] }}</td>
                        <td>{{ $purchase['product_updatedBy'] }}</td>
                        <td>{{ $purchase['product_insertedBy'] }}</td>
                        <td>{{ $purchase['product_dateUpdated'] }}</td>
                        <td>{{ $purchase['product_status'] }}</td>
                        <td>{{ $purchase['product_dateAdded'] }}</td>
                        <td>{{ $purchase['product_taxHeading'] }}</td>
                        <td>{{ $purchase['product_taxPercent'] }}</td>
                        <td>{{ $purchase['product_taxExclusiveValue'] }}</td>
                        <td>{{ $purchase['product_taxInclusiveValue'] }}</td>
                        <td>{{ $purchase['product_tax'] }}</td>
                        <td>{{ $purchase['product_basePriceCost'] }}</td>
                        <td>{{ $purchase['product_discount'] }}</td>
                        <td>{{ $purchase['product_discountValue'] }}</td>
                        <td>{{ $purchase['product_extraInformation'] }}</td>
                        <td>{{ $purchase['product_total'] }}</td>
                        <td>{{ $purchase['product_rewardPoints'] }}</td>
                        <td>{{ $purchase['purchase_comment'] }}</td>
                        <td>{{ $purchase['purchase_subTotal'] }}</td>
                        <td>{{ $purchase['purchase_tax'] }}</td>
                        <td>{{ $purchase['purchase_total'] }}</td>
                        <td>{{ $purchase['purchase_purchaseStatus'] }}</td>
                        <td>{{ $purchase['purchase_storeId'] }}</td>
                        <td>{{ $purchase['purchase_userId'] }}</td>
                        <td>{{ $purchase['purchase_softDelete'] }}</td>
                        <td>{{ $purchase['purchase_updatedBy'] }}</td>
                        <td>{{ $purchase['purchase_dateUpdated'] }}</td>
                        <td>{{ $purchase['purchase_status'] }}</td>
                        <td>{{ $purchase['purchase_insertedBy'] }}</td>
                        <td>{{ $purchase['purchase_dateAdded'] }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
