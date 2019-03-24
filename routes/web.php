<?php

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

Route::get('/', function () {
    return redirect('clear-cache');
});
Route::get('/login', function(){    
    return view('auth.login');
});
Route::get('/clear-cache', function(){
    $exitCode = Cache::flush();
    return redirect('login');   
});
Route::get('/SilosRecarga', function(){    
    return view('silos.silosRecarga');
});
Route::get('/OrdenDistribucion', function(){    
    return view('OrdenDistribucion.OrdenDistribucion');
});

Route::get('/RecepcionMercancia', function(){    
    return view('RecepcionMercancia.RecepcionMercancia');
});

Route::get('/AjusteInventario', function(){    
    return view('AjusteInventario.AjusteInventario');
});

Route::get('/OrdenOperaciones', function(){    
    return view('OrdenOperaciones.Index');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

route::post('_AddProductSilo',    'SiloController@_AddProductSilo');
route::post('_listSilo',          'SiloController@_listSilo');
route::post('_listSiloRecarga' ,  'SiloController@_listSiloRecarga');
route::post('_ShowMerma',         'SiloController@_ShowMerma');
route::post('_updateMerma',       'SiloController@_updateMerma');
route::post('_updateManufactura', 'SiloController@_updateManufactura');
route::post('_ExistenceOfSilo',   'SiloController@_ExistenceOfSilo');
route::post('_DiscountExistenceOfTheSilo',   'SiloController@_DiscountExistenceOfTheSilo');





route::post('_ListResponsibleOrderofOperations',   'OrdenDeOperacionesController@_ListResponsibleOrderofOperations');
route::post('_AddOrderOfOperation',   'OrdenDeOperacionesController@_AddOrderOfOperation');
route::post('_listOrderOfOperation',   'OrdenDeOperacionesController@_listOrderOfOperation');
route::post('_DistributionOrderList',     'OrdenDeOperacionesController@_DistributionOrderList');
route::post('_AsigClientOrderofOperations',     'OrdenDeOperacionesController@_AsigClientOrderofOperations');





route::post('_AddDistributionOrder',        'OrdenDistribucionController@_AddDistributionOrder');
route::post('_ListDistributionOrder',       'OrdenDistribucionController@_ListDistributionOrder');
route::post('_ActivateOrderOfDistribution', 'OrdenDistribucionController@_ActivateOrderOfDistribution');
route::post('_DelWarehouseDistributor',     'OrdenDistribucionController@_DelWarehouseDistributor');







route::post('_ListDistributor',         'DistribuidorController@_ListDistributor');
route::post('_AddWarehouseDistributor', 'DistribuidorController@_AddWarehouseDistributor');
route::post('_DetaleDistributionOrder', 'DistribuidorController@_DetaleDistributionOrder');
route::post('_ListProductsInTransit',   'DistribuidorController@_ListProductsInTransit');
route::post('_ProductReception',        'DistribuidorController@_ProductReception');
route::post('_ListProductsInWarehouse', 'DistribuidorController@_ListProductsInWarehouse');
route::post('_updateMermaWarehouse',    'DistribuidorController@_updateMermaWarehouse');




route::post('_listproducts','ProductoController@_listproducts');


