<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use App\Models\Employee;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function login(){
        return view('login.index');
    }
    public function verify(LoginRequest $reg)
    {
        $result = Employee::where('email',$reg->email)
                            ->where('password',$reg->password)
                            ->get();
        
        if(count($result)>0)
        {
            $reg->session()->put('email',$reg->email);
            return redirect('/dashboard');
        }
        else{
            $reg->session()->flash('msg','invalid data!');
            return redirect('login.index');
        }
    }
}
