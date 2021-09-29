<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});
Route::get('/dashboard', function () {
    return view('dash');
});
Route::get('/users', function () {
    return view('users');
});
Route::get('/databarang', "DatabarangnController@index")->name("databarang");
Route::get('/databarang/cari',"DatabarangnController@cari");
Route::get('/dataruangan/cari',"RuangController@cari");
Route::get('/dataruangan', "RuangController@ruang")->name("dataruangan");


Route::get('/aturan', function () {
    return view('aturan');
});

Route::get('/tambahdata', function () {
    return view('/form/tambahdata');
});
Route::get('/pinjambarang', function () {
    return view('/pinjambarang');
});
Route::get('/dashboards', function () {
    return view('/dashboard');
});

 Route::get('/tambahdata', 'DataBarangnController@tambah');
 Route::post('/tambahdata/tambah', 'DataBarangnController@store');
 Route::get('/databarang/{no}/edit','DataBarangnController@edit');
 Route::post('/barang/update', 'DataBarangnController@update')->name('update');
 Route::post('/databarang/{no}','DataBarangnController@hapus')->name('delete');

// ruangan
Route::get('/dataruangan/{kode_lokasi}/edit','RuangController@edit');
Route::post('/lokasi/update', 'RuangController@updateruang')->name('updateruang');

//multiuser
Auth::routes();
Route::get('/superadmin', 'SuperadminController@index')->name('superadmin')->middleware('superadmin');
Route::get('/user', 'UserController@index')->name('user')->middleware('user');
Route::get('/admin', 'AdminController@index')->name('admin')->middleware('admin');Route::get('/home', 'HomeController@index')->name('home');
