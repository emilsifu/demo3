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

/*Route::get('/', function () {
    return view('welcome');
});*/

/*Route::get('/hello', function (){
    return 'Hello World!';
});*/
/*
Route::get('/hello','Hello@index');
Route::get('/hello/{name}','Hello@show');
*/

Route::get('/','Front@index');
Route::get('/products','Front@products');
Route::get('/products/details/{id}','Front@product_details');
Route::get('/products/categories/{name}','Front@product_categories');
Route::get('/products/brands/{name}/{category?}','Front@product_brands');
Route::get('/blog','Front@blog');
Route::get('/blog/post/{id}','Front@blog_post');
Route::get('/contact-us','Front@contact_us');
Route::get('/login','Front@login');
Route::get('/logout','Front@logout');
Route::get('/cart','Front@cart');
Route::get('/checkout','Front@checkout');
Route::get('/search/{query}','Front@search');

/*Route::get('blade', function (){
    //return view('page', array('name' => 'The Raven', 'day' => 'Friday'));
    $value = config('app.timezone');
    return $value;
});*/

Route::get('blade', function(){
    return view ('child');
});

/*Route::get('user', function(){
   return view('user');
});*/

Route::get('user', 'User@index');