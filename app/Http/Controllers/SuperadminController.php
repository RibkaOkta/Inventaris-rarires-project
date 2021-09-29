<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SuperadminController extends Controller
{
    public function index()
    {
        $users = DB::table('users')->get();
        return view('superadmin.index', ['users' => $users]);
    }
    public function dashboard()
    {
      Route::get('/dssuper', function () {
        return view('superadmin.dashboard');
    });
    }
}
