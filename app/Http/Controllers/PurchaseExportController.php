<?php

namespace App\Http\Controllers;

use App\Exports\PurchasesExport;

use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class PurchaseExportController extends Controller
{
    public function export(Request $request)
    {

        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        return Excel::download(new PurchasesExport($startDate, $endDate), 'purchases.xlsx');
    }
}
