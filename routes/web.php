<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Superadmin;
use App\Http\Controllers\PinjamController;
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

//multiuser
Auth::routes();
Route::get('/superadmin', 'SuperadminController@index')->name('superadmin')->middleware('superadmin');
Route::get('/user', 'UserController@index')->name('user')->middleware('user');
Route::get('/admin','AdminController@index')->name('admin')->middleware('admin');
Route::get('/home', 'HomeController@index')->name('home');

//superadmin

            //dash
            Route::get('/dash', function () {
                return view('superadmin/dash'); });
            Route::get('/dash','DataBarangnController@new')->name('new');
         

            Route::get('/users', function () {
                return view('superadmin/users');
                        });
            Route::get('/aturan', function () {
                return view('superadmin/aturan');
            });
            Route::get('/users/edit/{id}','UsersController@edit');
            //users
            Route::get('/sa', function () {
                return view('superadmin/sa');
            });
            Route::get('/sa','UsersController@index');
            Route::get('/sa/edit/{id}','UsersController@edit')->name('wuedit');
            Route::post('/users/update', 'UsersController@update')->name('editusers');
            //barang and ruang
            Route::get('/databarang', "DatabarangnController@index")->name("databarang");
            Route::get('/databarang/cari',"DatabarangnController@cari");
            Route::get('/dataruangan/cari',"RuangController@cari");
            Route::get('/dataruangan', "RuangController@ruang")->name("dataruangan");



            //rusak
            Route::get('/brgrusakberat', function () {
                return view('/brgrusakberat');
            });
            Route::delete('/brgrusakberat/deletebrg/{id}','DataBarangnController@deletebrg')->name('deletebrg');
            Route::get('/brgrusakberat', 'DataBarangnController@brgrusakberat');


            //pinjam
            Route::get('/pinjambarang', function () {
                return view('/pinjambarang');
            });
            Route::get('/pinjambarang', 'PinjamController@tambah')->name('pinjambarang');
            Route::post('/pinjambarang','PinjamController@store')->name('pinjambrg');
            Route::delete('/pinjambarang/{id}', 'PinjamController@destroy')->name('pinjambarang.destroy');


            Route::get('/laporanpeminjaman','PinjamController@index');
             Route::get('/tambahdata', 'DataBarangnController@tambah');
             Route::post('/tambahdata/tambah', 'DataBarangnController@store');
             Route::get('/databarang/{no}/edit','DataBarangnController@edit');
             Route::post('/barang/update', 'DataBarangnController@update')->name('update');
             Route::post('/databarang/{no}','DataBarangnController@hapus')->name('delete');

            // ruangan
            Route::get('/dataruangan/{kode_lokasi}/edit','RuangController@edit');
            Route::post('/lokasi/update', 'RuangController@updateruang')->name('updateruang');
            Route::post('/lokasi/update', 'RuangController@updateruang')->name('updateruang');
            Route::get('/dataruangan/{kode_lokasi}/buka','RuangController@buka')->name('ruang.buka');


