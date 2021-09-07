<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LogoutController extends Controller
{
    public function index(Request $reg)
    {
        $reg->session()->flush();
        return redirect('/');
    }
}
