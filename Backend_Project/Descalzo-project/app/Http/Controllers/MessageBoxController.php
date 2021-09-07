<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MessageBoxController extends Controller
{
    public function inbox(){
        return view('mailbox.inbox');
    }
    public function message(){
        return view('mailbox.message');
    }
    public function compose(){
        return view('mailbox.compose');
    }

    public function msg(){
        return view('mailbox.msg');
    }

    public function search(){
        return view('search.search');
    }
    public function calendar(){
        return view('search.calendar');
    }
}
