<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Support\Facades\DB; // Adjust according to your database setup

class ProfitReportExport implements FromCollection, WithHeadings
{
    protected $dateStart;
    protected $dateEnd;

    public function __construct($dateStart, $dateEnd)
    {
        $this->dateStart = $dateStart;
        $this->dateEnd = $dateEnd;
    }

    public function collection()
    {
        return DB::table('order_product') // Replace with your actual table name
            ->whereBetween('dateAdded', [$this->dateStart, $this->dateEnd]) // Replace 'date_column' with the actual date column name
            ->select('orderId', 'heading', 'model', 'barcode', 'hsnCode', 'quantity', 'discount', 'tax', 'cost', 'total', 'profit')
            ->get();
    }

    public function headings(): array
    {
        return [
            'Order Id',
            'Heading',
            'Model',
            'Barcode',
            'HSN Code',
            'Quantity',
            'Discount',
            'Tax',
            'Cost',
            'Total',
            'Profit',
        ];
    }
}