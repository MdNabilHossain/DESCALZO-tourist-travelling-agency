<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Tourist;
use Exception;
use Dotenv\Exception\ValidationException;
use Illuminate\Support\Facades\Session;


class TouristController extends Controller
{
    public function show()
    {
        return Tourist::all();
    }

    public function singleShow($id)
    {

        try {
            return response()->json([
                'success' => true,
                'message' => 'Display the specified resource',
                'data' => Tourist::findOrFail($id)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error Showing Specific User!'
            ]);
        }
    }

    public function delete($id)
    {
        
        try {
            Tourist::findOrFail($id)->delete();
            return response()->json([
                'success' => true,
                'message' => 'Tourist Deleted Successfully',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error!',
            ]);
        }
    }


    public function update(Request $request, $id)
    {

        $validator = Validator::make($request->all(), [
            // 'name'=>'required',
            // 'username'=>'required|unique:users',
            'name' => 'required',
            
            'email' => 'required|email',
            'phone' => 'required',
            'address' => 'required',
            'account' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                "errors" => $validator->errors()->all()
            ]);
        }
        try {
            $tourist = Tourist::findOrFail($id);
            $tourist->name = $request->input('name');
            $tourist->email = $request->input('email');
            $tourist->phone = $request->input('phone');
            $tourist->address = $request->input('address');
            $tourist->account = $request->input('account');
            $tourist->save();

            return response()->json([
                'success' => true,
                'message' => 'tourist Updated Successful',
                'data' => $tourist
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something is Wrong...',
            ], 400);
        }
        //return $tourist;
    }

    public function create(Request $request)
    {
        // $data= $request->all();
        // $add=Guide::create($data);
        // //return redirect ('/guide');
        // return $add;

        // $validator = Validator::make($request->all(), [
        //     // 'name'=>'required',
        //     // 'username'=>'required|unique:users',
        //     'name' => 'required',
            
        //     'email' => 'required|email',
        //     'phone' => 'required',
        //     'address' => 'required',
        //     'account' => 'account'
        // ]);

        // if ($validator->fails()) {
        //     return response()->json([
        //         'success' => false,
        //         "errors" => $validator->errors()->all()
        //     ]);
        // }

        try {

            $tourist = Tourist::create([
                'name'  => $request->name,
                
                'email'  => $request->email,
                'phone'  => $request->phone,
                'address'  => $request->address,
                'account'  => $request->account,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Tourist added Successfully',
                'data' => $tourist
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something is Wrong...',
            ], 400);
        }
    }
}
