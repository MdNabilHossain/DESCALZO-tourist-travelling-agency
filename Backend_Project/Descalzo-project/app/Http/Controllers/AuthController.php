<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\User;
use Exception;




class AuthController extends Controller
{
   

    // public function login(Request $request)
    // {
    //     $validator = Validator::make($request->all(),[
    //         'email'=>'required|email',
    //         'password'=>'required',
    //     ]);

    //     if($validator->fails()){
    //         return response()->json([
    //             'success'=>false,
    //             "errors"=>$validator->errors()->all()
    //         ]);
    //     }

    //     $credentials = $request->only('email','password');
    //     if(Auth::attempt($credentials))
    //     {
    //         $user = Auth::user();
    //         $data['name'] = $user->name;
    //         $data['access_token'] = $user->createToken('accessToken')->accessToken;
    //         return response()->json([
    //             'data' => $data
    //         ]);
    //     }
    //     else{
    //         return response()->json([
    //             'success'=>false,
    //             "message"=>'invalid email or password'
    //         ],401);
    //     }
    // }

    // public function logout(Request $request)
    // {
    //     auth()->user()->token()->revoke();
    //     return response()->json([
    //         'message' => 'Successfully logged out.'
    //     ]);
    // }

    // public function login(Request $request)
    // {
    //     $validator = Validator::make($request->all(), [
    //         'email' => 'required|email',
    //         'password' => 'required',
    //     ]);

    //     if ($validator->fails()) {
    //         return response()->json([
    //             'success' => false,
    //             "errors" => $validator->errors()->all()
    //         ]);
    //     }

    //     $credentials = $request->only('email', 'password');
    //     if (Auth::attempt($credentials)) {
    //         $user = Auth::user();
    //         //$data['name'] = $user->name;
    //         //$data['access_token'] = $user->createToken('accessToken')->accessToken;
    //         $token = $user->createToken('accessToken')->accessToken;
    //         return response()->json([
    //             'success' => true,
    //             'token' => $token,
    //             //'data' => $data,
    //             'message' => "Login Successfully"

    //         ]);
    //     } else {
    //         return response()->json([
    //             'success' => false,
    //             "message" => 'invalid email or password'
    //         ], 401);
    //     }
    // }

    // public function logout(Request $request)
    // {
    //     auth()->user()->token()->revoke();
    //     return response()->json([
    //         'message' => 'Successfully logged out.'
    //     ]);
    // }


    public function login(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'email'=>'required|email',
            'password'=>'required',
        ]);
 
        if($validator->fails()){
            return response()->json([
                //'success'=>false,
                "errors"=>$validator->errors()->all()
            ]);
        }
 
        $credentials = $request->only('email','password');
        if(Auth::attempt($credentials))
        {
            $user = Auth::user();
            //$data['name'] = $user->name;
            //$data['access_token'] = $user->createToken('accessToken')->accessToken;
            $token = $user->createToken('accessToken')->accessToken;
            return response()->json([
                'success'=>true,
                //'data' => $data,
                'token'=>$token,
                'user'=>$user,
                'message'=>'Login Sucessfull'
            ]);
        }
        else{
            return response()->json([
                'success'=>false,
                "message"=>'invalid email or password'
            ]);
        }
    }
    
    public function logout(Request $request)
    {
        //auth()->user()->token()->revoke();
        return response()->json([
        'success'=>true,    
            'message' => 'Successfully logged out.'
        ]);
    }
    
}
