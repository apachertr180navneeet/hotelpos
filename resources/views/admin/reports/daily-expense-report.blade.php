@extends('admin.common.main')
@section('main-container')
<style>
   .nojuthjetd{
   padding: 10px;
   width: 100%;
   }
   .ebvwtrgfyg{
   margin: 30px 0px;
   }
   .vxurqawhsz{
   position: relative;
   }
   .bcmnykfmio{
   background: #fafafa;
   width:100%;
   position: absolute;
   z-index: 9999;
   display: none;
   }
   .jpcljhzbiw{
   padding: 10px;
   border-bottom: 1px solid #e5e5e5;
   cursor: pointer;
   }
   .jpcljhzbiw:hover{
   background:#d4d4d4;
   }
   .edit-profile .table>:not(:last-child)>:last-child>* {
   border: none; 
   }
   .yjcpesjsgl>:not(caption)>*>* {
   padding: 0rem !important; 
   }
</style>
<div class="page-body">
   <div class="container-fluid">
      <div class="edit-profile">
         <div class="row">
            <div class="col-xl-12">
               <form class="card" method="POST" id="profirReportForm">
                  <input type="hidden" value="{{csrf_token()}}" name="_token">
                  <div class="card-header pb-0">
                     <div class="row">
                        <div class="col-6 col-sm-6">
                           <h4 class="card-title mb-0">{{$controller::message("Daily Expense Report")}}</h4>
                        </div>
                        <div class="col-6 col-sm-6">
                           <a href="{{url("/")}}/admin/profit-report" class="btn btn-danger jicrlyhywf pull-right">{{$controller::message("Back")}}</a>
                        </div>
                     </div>
                  </div>
                  <div class="card-body">
                     <div class="row">
                        <div class="col-md-4">
                           <input type="date" class="form-control gcgwipsabu" placeholder="{{$controller::message("Date Start")}}" value="{{  (!empty(Session::get("profitReportDateStart")))?Session::get("profitReportDateStart"):''  }}">
                        </div>
                        <div class="col-md-4">
                           <input type="date" class="form-control kzjpacwecl" placeholder="{{$controller::message("Date End")}}" value="{{  (!empty(Session::get("profitReportDateEnd")))?Session::get("profitReportDateEnd"):''  }}">
                        </div>
                        <div class="col-md-4">
                           <div class="row">
                              <div class="col-md-6">
                                 <div class="btn btn-danger unrogfozao" style="width:100%;padding:10px;">{{$controller::message("Clear")}}</div>
                              </div>
                              <div class="col-md-6">
                                 <div class="btn btn-primary nojuthjetd">{{$controller::message("Filter")}}</div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="row" style="margin-top: 20px;">
                        <div class="col-md-12">
                           <!-- <div id="chart_div"></div> -->
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="urahyuwwmn">
                              <table class="table table-bordered">
                                 <tr>
                                    <th width="25%">{{$controller::message("Sno")}}</th>
                                    <th width="25%">{{$controller::message("Category")}}</th>
                                    <th width="25%" align="right"><div style="text-align:right">{{$controller::message("Amount")}}</div></th>
                                 </tr>
                                 <tbody>
                                    @if(!empty($categories))
                                    @php($totalSaleAmountAll = array())
                                    @php($i=1)
                                    @php($a=1)
                                    @foreach($categories as $category)
                                    
                                    @if(Session::get("profitReportDateStart")!="" AND Session::get("profitReportDateEnd")!="")
                                    @php($sql = "SELECT * FROM `expenses` WHERE storeId = '".Session::get('storeId')."' AND expenseCategoryId='".$category['expenseCategoryId']."'")
                                    @php($sql .= " AND DATE(dateAdded) BETWEEN '".Session::get("profitReportDateStart")."' AND '".Session::get("profitReportDateEnd")."'")
                                    @php($expenses = DB::select($sql))
                                    @else
                                    @php($sql = "SELECT * FROM `expenses` WHERE storeId = '".Session::get('storeId')."' AND expenseCategoryId='".$category['expenseCategoryId']."' AND DATE(dateAdded) BETWEEN '".date('Y-m-d')."' AND '".date('Y-m-d')."'")
                                    @php($expenses = DB::select($sql))
                                    @endif

                                    @php($expenses = $controller::arrayConvert($expenses))
                                    @if(empty($expenses))
                                    @continue
                                    @endif
                                    <tr style="background: #ae69f5;font-weight:bold">
                                       <td width="10%" style="color:white">{{$i}}</td>
                                       <td colspan="3" style="color:white" align="right">Category : {{$category['heading']}}</td>
                                    </tr>
                                    @if(!empty($expenses))
                                    @php($a=1)
                                    @php($totalSaleAmount = array())
                                    @foreach($expenses as $expense)
                                    <tr>
                                       <td width="10%">{{$i}}.{{$a}}</td>
                                       <td width="10%">{{$category['heading']}}</td>
                                       <td width="10%" align="right"><strong>{{$totalSaleAmount[] = $expense['amount']}}</strong></td>
                                    </tr>
                                    @php($a++)
                                    @endforeach
                                    <tr>
                                       <td class="hvyqqldbgk"></td>
                                       <td class="hvyqqldbgk"></td>
                                       <td class="gedwuspqxa" align="right"><strong>{{$totalSaleAmountAll[] = array_sum($totalSaleAmount)}}</strong></td>
                                    </tr>
                                    @endif
                                    @php($i++)
                                    @endforeach
                                    <tr>
                                       <td class="hvyqqldbgk"></td>
                                       <td class="hvyqqldbgk"><strong>Total Expense Amount</strong></td>
                                       <td class="gedwuspqxa" align="right"><strong>{{array_sum($totalSaleAmountAll)}}</strong></td>
                                    </tr>
                                    @endif

                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript">
   var dataTableStatus = "0";
</script>
@php($profitReport = "dailyPaymentReport")
@endsection