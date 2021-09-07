<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TableController extends Controller
{
    public function data(){
        return View('table.data');
    }
    public function export(){
        return View('table.export');
    }
   
}
