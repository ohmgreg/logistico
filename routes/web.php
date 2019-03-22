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
    return view('silos.SilosRecarga');
});
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');







route::post('_AddProductSilo','SiloController@_AddProductSilo');
route::post('_listSilo','SiloController@_listSilo');





route::post('List_Producto','ProductoController@List_Producto');


