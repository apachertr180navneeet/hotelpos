<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\ModuleController;
use App\Http\Controllers\Admin\PosController;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\RazorpayPaymentController;
use App\Http\Controllers\PaytmController;
use App\Http\Controllers\EmailController;
use App\Http\Controllers\Admin\ImportController;
use App\Http\Controllers\Admin\PurchaseController;
use App\Http\Controllers\Admin\PurchaseOrderController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ReportsController;
use App\Http\Controllers\PurchaseExportController;
use App\Exports\PurchasesExport;
//use App\Models\Functions;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/admin',[AdminController::Class,'index']);
Route::get('/admin/login',[AdminController::Class,'login']);
Route::get('/admin/logout',[AdminController::Class,'logout']);
Route::get('/admin/register',[AdminController::Class,'register']);
Route::post('/admin/verify-login',[AdminController::Class,'loginVerify']);
Route::post('/admin/user-register',[AdminController::Class,'registerUser']);
Route::post('/admin/submitDynamicData',[AdminController::Class,'submitDynamicData']);
Route::get('/admin/page/{page}',[AdminController::Class,'page']);
Route::get('/admin/inner/{page}/add',[AdminController::Class,'inner']);
Route::get('/admin/inner/{page}/add/{id}',[AdminController::Class,'inner']);
Route::post('/admin/data',[AdminController::Class,'dataTable']);
Route::post('/admin/unlinkImage',[AdminController::Class,'unlinkImage']);
Route::post('/admin/changeStatus',[AdminController::Class,'changeStatus']);
Route::post('/admin/dynamicAutosuggestive',[AdminController::Class,'dynamicAutosuggestive']);
Route::get('/admin/success',[AdminController::Class,'success']);
Route::get('/admin/alter/{table}',[AdminController::Class,'alterTable']);
Route::post('/admin/softDeleteData',[AdminController::Class,'softDeleteData']);
Route::post('/admin/deleteData',[AdminController::Class,'deleteData']);
Route::post('/deleteData',[AdminController::Class,'deleteData']);
Route::post('/admin/select-store',[AdminController::Class,'selectStore']);
Route::post('/admin/select-user',[AdminController::Class,'selectUser']);
Route::post('/admin/select-language',[AdminController::Class,'selectLanguage']);
Route::get('/admin/language-message',[AdminController::Class,'languageMessage']);
Route::post('/admin/save-language-message',[AdminController::Class,'saveLanguageMessage']);


Route::get('/admin/purchases',[PurchaseController::Class,'purchases']);
Route::get('/admin/purchase/add',[PurchaseController::Class,'purchases']);
Route::get('/admin/purchase/add/{purchaseId}',[PurchaseController::Class,'purchases']);
Route::get('/admin/purchase/view/{purchaseId}',[PurchaseController::Class,'purchases']);
Route::post('/admin/purchase/data-table-purchase',[PurchaseController::Class,'dataTablePurchases']);


Route::get('/admin/export-purchases', [PurchaseExportController::class, 'export']);
Route::post('/admin/purchases/export', [PurchaseExportController::class, 'export'])->name('export.purchases');
Route::get('/export-profit-report', [YourController::class, 'exportProfitReport'])->name('export.profit.report');


Route::get('/admin/purchase/addToPurchase',[PurchaseController::Class,'addToPurchase']);
Route::post('/admin/purchase/get-products',[PurchaseController::Class,'getProducts']);
Route::post('/admin/purchase/add-to-purchase',[PurchaseController::Class,'addToPurchase']);
Route::post('/admin/purchase/delete-product-from-purchase',[PurchaseController::Class,'deleteProductFromPurchase']);
Route::post('/admin/purchase/quick-add-product',[PurchaseController::Class,'quickAddProduct']);
Route::post('/admin/purchase/update-purchase-quantity',[PurchaseController::Class,'updatePurchaseQuantity']);
Route::post('/admin/purchase/update-cost-price',[PurchaseController::Class,'updateCostPrice']);
Route::post('/admin/purchase/update-tax-type',[PurchaseController::Class,'updateTaxType']);
Route::post('/admin/purchase/purchase-total',[PurchaseController::Class,'purchaseTotal']);
Route::post('/admin/purchase/submit-purchase',[PurchaseController::Class,'submitPurchase']);
Route::post('/admin/purchase/change-status',[PurchaseController::Class,'changeStatus']);


Route::get('/admin/purchase-order',[PurchaseOrderController::Class,'purchaseOrders']);
Route::get('/admin/purchase-order/add',[PurchaseOrderController::Class,'purchaseOrders']);
Route::get('/admin/purchase-order/add/{purchaseId}',[PurchaseOrderController::Class,'purchaseOrders']);
Route::get('/admin/purchase-order/view/{purchaseId}',[PurchaseOrderController::Class,'purchaseOrders']);
Route::get('/admin/purchase-order/invoice/{purchaseId}',[PurchaseOrderController::Class,'invoice']);
Route::post('/admin/purchase-order/data-table-purchase-order',[PurchaseOrderController::Class,'dataTablePurchaseOrders']);

Route::get('/admin/purchase-order/addToPurchase',[PurchaseOrderController::Class,'addToPurchase']);
Route::post('/admin/purchase-order/get-products',[PurchaseOrderController::Class,'getProducts']);
Route::post('/admin/purchase-order/add-to-purchase',[PurchaseOrderController::Class,'addToPurchase']);
Route::post('/admin/purchase-order/delete-product-from-purchase',[PurchaseOrderController::Class,'deleteProductFromPurchase']);
Route::post('/admin/purchase-order/quick-add-product',[PurchaseOrderController::Class,'quickAddProduct']);
Route::post('/admin/purchase-order/update-purchase-quantity',[PurchaseOrderController::Class,'updatePurchaseQuantity']);
Route::post('/admin/purchase-order/update-cost-price',[PurchaseOrderController::Class,'updateCostPrice']);
Route::post('/admin/purchase-order/update-tax-type',[PurchaseOrderController::Class,'updateTaxType']);
Route::post('/admin/purchase-order/purchase-total',[PurchaseOrderController::Class,'purchaseTotal']);
Route::post('/admin/purchase-order/submit-purchase',[PurchaseOrderController::Class,'submitPurchase']);
Route::post('/admin/purchase-order/change-status',[PurchaseOrderController::Class,'changeStatus']);
Route::post('/admin/purchase-order/get-vendor-data',[PurchaseOrderController::Class,'getVendorData']);
Route::post('/admin/purchase-order/send-po-mail',[PurchaseOrderController::Class,'sendPoMail']);
Route::get('/admin/purchase-order/pdf',[PurchaseOrderController::Class,'fun_pdf']);

Route::post('/admin/clearPosData',[PosController::Class,'clearPosData']);
Route::post('/admin/quick-add-customer',[PosController::Class,'quickAddCustomer']);
Route::post('/admin/set-category-pos',[PosController::Class,'setCategoryPos']);
Route::post('/admin/set-manufacturer-pos',[PosController::Class,'setManufacturerPos']);
Route::post('/admin/set-cart-pos',[PosController::Class,'setCartPos']);
Route::post('/admin/set-additional-information',[PosController::Class,'setAdditionalInformation']);
Route::post('/admin/get-products',[PosController::Class,'getProducts']);
Route::post('/admin/get-customer',[PosController::Class,'getCustomer']);
Route::post('/admin/set-customer-pos',[PosController::Class,'setCustomerPos']);
Route::post('/admin/set-order-type',[PosController::Class,'setOrderType']);
Route::post('/admin/set-table-for-order',[PosController::Class,'setTableForOrder']);
Route::post('/admin/set-additional-costs',[PosController::Class,'additionalCharges']);
Route::post('/admin/set-multiple-payment-methods',[PosController::Class,'setMultiplePaymentMethods']);
Route::post('/admin/remove-additional-cost-by-key',[PosController::Class,'removeAdditionalCostByKey']);
Route::post('/admin/set-global-discount',[PosController::Class,'setGlobalDiscount']);
Route::post('/admin/delete-item-from-cart',[PosController::Class,'deleteItemFromCart']);
Route::post('/admin/update-quantity-discount-in-pos-cart',[PosController::Class,'updateQuantityDiscountInPosCart']);
Route::post('/admin/redeem-reward-points',[PosController::Class,'redeemRewardPoints']);
Route::post('/admin/pos-total-cart',[PosController::Class,'posTotalCart']);
Route::post('/admin/set-payment-method',[PosController::Class,'setPaymentMethod']);
Route::get('/admin/invoice/{type}/{orderId}',[PosController::Class,'invoice']);
Route::get('/admin/invoice/{type}/view/{orderId}',[PosController::Class,'invoiceView']);
Route::post('/admin/checkout',[PosController::Class,'checkout']);
Route::post('/admin/set-order-id-edit',[PosController::Class,'setOrderIdEdit']);
Route::get('/admin/truncate',[PosController::Class,'truncate']);
Route::get('/admin/kot',[PosController::Class,'kot']);
Route::post('/admin/dataTableKot',[PosController::Class,'dataTableKot']);
Route::post('/admin/check-quick-add-customer-mobile',[PosController::Class,'checkQuickAddCustomerMobile']);
Route::post('/admin/change-runtime-price',[PosController::Class,'changeRuntimePrice']);
Route::post('/admin/skip-otp-for-reward-validation',[PosController::Class,'skipOtpForRewardValidation']);
Route::post('/admin/send-otp-for-reward',[PosController::Class,'sendOtpForReward']);
Route::post('/admin/validate-otp-for-reward',[PosController::Class,'validateOtpForReward']);
Route::post('/admin/send-reminder-to-customer',[PosController::Class,'sendReminderToCustomer']);
Route::post('/admin/edit-customer',[PosController::Class,'editCustomer']);
Route::post('/admin/get-product-information',[PosController::Class,'getProductInformation']);
Route::post('/admin/get-gst-information',[PosController::Class,'getGstInformation']);
Route::post('/admin/attach-hotel-room-data',[PosController::Class,'attachHotelRoomData']);
Route::post('/admin/remove-room',[PosController::Class,'removeRoom']);
Route::post('/admin/change-hotel-room',[PosController::Class,'changeHotelRoom']);
Route::get('/admin/get-hotel-stay-in-hours',[PosController::Class,'getHotelStayInHours']);
Route::post('/admin/get-order-product-by-order-id',[PosController::Class,'getOrderProductByOrderId']);
Route::post('/admin/save-product-return-details',[PosController::Class,'saveProductReturnDetails']);
Route::post('/admin/update-hotel-price-in-cart',[PosController::Class,'updateHotelPriceInCart']);
Route::post('/admin/quick-add-product',[PosController::Class,'quickAddProduct']);
Route::get('/admin/pos-simple',[PosController::Class,'posSimple']);

Route::post('/admin/filters',[AdminController::Class,'filters']);
Route::post('/admin/filter-form',[AdminController::Class,'filterForm']);
Route::post('/admin/get-filter-form',[AdminController::Class,'getFilterForm']);
Route::get('/admin/send-email', [EmailController::class, 'index']);
Route::post('/admin/restoreDatabase',[AdminController::Class,'restoreDatabase']);
Route::post('/admin/takeBackupButton',[AdminController::Class,'takeBackupButton']);
Route::get('/admin/page-not-found',[AdminController::Class,'pageNotFound']);

Route::get('/admin/pos-users/add',[AdminController::Class,'users']);
Route::get('/admin/pos-users/add/{Id}',[AdminController::Class,'users']);
Route::get('/admin/pos-users',[AdminController::Class,'users']);
Route::post('/admin/data-table-pos-users',[AdminController::Class,'dataTablePosUsers']);

Route::get('/admin/popup-message/add',[AdminController::Class,'popupMessage']);
Route::get('/admin/popup-message/add/{Id}',[AdminController::Class,'popupMessage']);
Route::get('/admin/popup-message',[AdminController::Class,'popupMessage']);
Route::post('/admin/data-table-popup-message',[AdminController::Class,'dataTablePopupMessage']);
Route::post('/admin/save-popup-message',[AdminController::Class,'savePopupMessage']);

Route::post('/admin/save-login-users',[AdminController::Class,'saveLoginUsers']);
Route::post('/admin/dataTableUserRoles',[AdminController::Class,'dataTableUserRoles']);
Route::get('/admin/userroles',[AdminController::Class,'userRoles']);
Route::get('/admin/userroles/add',[AdminController::Class,'userRoles']);
Route::get('/admin/userroles/add/{roleId}',[AdminController::Class,'userRoles']);

Route::get('/admin/profit-report',[ReportsController::Class,'profitReport']);
Route::post('/admin/report/add-product',[ReportsController::Class,'addProduct']);
Route::post('/admin/report/get-products',[ReportsController::Class,'getProducts']);
Route::post('/admin/report/set-dates',[ReportsController::Class,'setDates']);
Route::post('/admin/report/clear-filters',[ReportsController::Class,'clearFilters']);
Route::get('/admin/report/daily-sale-report',[ReportsController::Class,'dailySaleReport']);
Route::get('/admin/report/daily-payment-report',[ReportsController::Class,'dailyPaymentReport']);
Route::get('/admin/report/daily-expense-report  ',[ReportsController::Class,'dailyExpenseReport']);
Route::get('/admin/report/daily-order-report  ',[ReportsController::Class,'dailyOrderReport']);
Route::get('/admin/report/product-category-wise  ',[ReportsController::Class,'productCategoryWise']);
Route::get('/admin/report/product-manufacturer-wise  ',[ReportsController::Class,'productManufacturerWise']);
Route::post('/admin/report/get-product-by-categoryId  ',[ReportsController::Class,'getProductByCategoryId']);
Route::post('/admin/report/get-product-by-manufacturerId  ',[ReportsController::Class,'getProductByManufacturerId']);

Route::get('/admin/import-export',[ImportController::Class,'importExport']);
Route::get('/admin/export-orders',[ImportController::Class,'exportOrdersView']);
Route::post('/admin/show-columns-from-table',[ImportController::Class,'columnNames']);
Route::post('/admin/import-excel-file-in-database',[ImportController::Class,'importExcelFileInDatabase']);
Route::get('/admin/import',[ImportController::Class,'import']);
Route::post('/admin/upload-images-zip-folder',[ImportController::Class,'submitUploadZipFolder']);
Route::get('/admin/upload-images',[ImportController::Class,'uploadImages']);
Route::post('/admin/import-excel-file',[ImportController::Class,'uploadExcel']);
Route::post('/admin/showExcelSheetData',[ImportController::Class,'showExcelSheetData']);
Route::post('/admin/upload-images-zip-folder',[ImportController::Class,'submitUploadZipFolder']);
Route::get('/admin/import-export',[ImportController::Class,'importExport']);
Route::post('/admin/show-columns-from-table',[ImportController::Class,'columnNames']);
Route::post('/admin/export-excel',[ImportController::Class,'export']);
Route::post('/admin/export-excel-orders',[ImportController::Class,'exportExcelOrders']);
Route::post('/admin/import-excel',[ImportController::Class,'import']);
Route::get('/admin/export-all-column/{table}',[ImportController::Class,'exportAllColumns']);

Route::get('/admin/modules',[ModuleController::Class,'modules']);
Route::get('/admin/modules/add',[ModuleController::Class,'modules']);
Route::get('/admin/modules/add/{id}',[ModuleController::Class,'modules']);
Route::get('/admin/modules/manage/{id}',[ModuleController::Class,'manage']);
Route::post('/admin/getcolumns',[ModuleController::Class,'getColumnByTableName']);
Route::post('/admin/dataTableModule',[ModuleController::Class,'dataTableModule']);
Route::post('/admin/setPagesFields',[ModuleController::Class,'setPagesFields']);
Route::post('/admin/change-sort-order',[ModuleController::Class,'changeSortOrder']);
Route::post('/admin/change-featured',[ModuleController::Class,'changeFeatured']);
Route::post('/admin/truncating-table',[ModuleController::Class,'truncatingTable']);
Route::post('/admin/copy-table-data',[ModuleController::Class,'copyTableData']);

Route::get('/admin/order',[OrderController::Class,'order']);
Route::get('/admin/order/invoice/{id}',[OrderController::Class,'invoice']);
Route::get('/admin/order/history/{orderId}',[OrderController::Class,'history']);
Route::get('/admin/order/history/add/{orderId}',[OrderController::Class,'history']);
Route::get('/admin/order/history/add/{orderId}/{editId}',[OrderController::Class,'history']);
Route::get('/admin/order/history/view/{orderId}/{editId}',[OrderController::Class,'history']);
Route::post('/admin/dataTableOrder',[OrderController::Class,'dataTableOrder']);
Route::post('/admin/dataTableOrderHistory',[OrderController::Class,'dataTableOrderHistory']);
Route::post('/admin/saveOrderHistory',[OrderController::Class,'saveOrderHistory']);
Route::post('/admin/dataTableOrderHistory',[OrderController::Class,'dataTableOrderHistory']);
Route::post('/admin/saveOrderHistory',[OrderController::Class,'saveOrderHistory']);

Route::get('/admin/pos',[PosController::Class,'index']);

Route::get('/',[FrontendController::Class,'index']);
Route::get('/home',[FrontendController::Class,'index']);
Route::get('/page/{seo}',[FrontendController::Class,'page']);
Route::post('/frontend/submit-dynamic-data',[FrontendController::Class,'submitDynamicData']);

Route::get('/payment/{token}/{plan}',[FrontendController::Class,'payment']);
Route::get('/verify',[FrontendController::Class,'verify']);
Route::post('/verify',[FrontendController::Class,'verify']);
Route::get('/status',[FrontendController::Class,'status']);
Route::post('/status',[FrontendController::Class,'status']);
Route::get('/plans/{token}',[FrontendController::Class,'plans']);

Route::post('paytm-payment',[PaytmController::Class, 'paytmPayment'])->name('paytm.payment');
Route::post('paytm-callback',[PaytmController::Class, 'paytmCallback'])->name('paytm.callback');
Route::get('paytm-purchase',[PaytmController::Class, 'paytmPurchase'])->name('paytm.purchase');

Route::get('razorpay-payment', [RazorpayPaymentController::class, 'index']);
Route::post('razorpay-payment', [RazorpayPaymentController::class, 'store'])->name('razorpay.payment.store');

Route::get('/auth/google', 'App\Http\Controllers\SocialController@googleRedirect');
Route::get('/auth/google/callback', 'App\Http\Controllers\SocialController@loginWithGoogle');

Route::get('/auth/facebook', 'App\Http\Controllers\SocialController@facebookRedirect');
Route::get('/auth/facebook/callback', 'App\Http\Controllers\SocialController@loginWithFacebook');

/*Route::fallback(function (){
    return Redirect::to('home');
});*/