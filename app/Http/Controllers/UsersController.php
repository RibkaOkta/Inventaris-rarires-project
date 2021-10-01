<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Users;
class UsersController extends Controller
{
    public function index(){
        $users = DB::table('users')->get();
        dump($users);
        return view('superadmin.index');
    }
}
