<?php

namespace App\Http\Controllers;

use App\Models\Guide;
use Illuminate\Http\Request;
use Exception;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class GuideController extends Controller
{
    public function guide()
    {
        return view('guide.guide');
    }
    public function submit(Request $request)
    {
        // $data= $request->all();
        // $add=Guide::create($data);
        // //return redirect ('/guide');
        // return $add;

        $validator = Validator::make($request->all(), [
            // 'name'=>'required',
            // 'username'=>'required|unique:users',
            'name' => 'required',
            'address' => 'required',
            'email' => 'required|email|unique:guides',
            'phone' => 'required',
            'quality' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                "errors" => $validator->errors()->all()
            ]);
        }

        try {

            $tourist = Guide::create([
                'name'  => $request->name,
                'address'  => $request->address,
                'email'  => $request->email,
                'phone'  => $request->phone,
                'quality'  => $request->quantity,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Guide added Successfully',
                'data' => $tourist
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something is Wrong...',
            ], 400);
        }
    }

    public function update(Request $request, $id)
    {

        $validator = Validator::make($request->all(), [
            // 'name'=>'required',
            // 'username'=>'required|unique:users',
            'name' => 'required',
            'address' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'quality' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                "errors" => $validator->errors()->all()
            ]);
        }
        try {
            $guide = Guide::findOrFail($id);
            $guide->name = $request->input('name');
            $guide->address = $request->input('address');
            $guide->email = $request->input('email');
            $guide->phone = $request->input('phone');
            $guide->quality = $request->input('quality');
            $guide->save();

            return response()->json([
                'success' => true,
                'message' => 'User Updated Successful',
                'data' => $guide
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something is Wrong...',
            ], 400);
        }
        //return $guide;
    }

    //     public function show(){
    //         $this->data['show_guide']=Guide::all();
    //         return view('vehicle.vehicle',$this->data);
    //         return $this->data;
    // }
    public function show()
    {
        // $guide=Guide::all();
        // return $guide;

        // return response()->json([
        //     'success'=>true,
        //     'message'=>'Display a listing of the resource',
        //     'data'=>Guide::all()
        // ]);
        return Guide::all();
    }

    public function singleShow($id)
    {
        // $guide=Guide::find($id);
        // return $guide;

        try {
            return response()->json([
                'success' => true,
                'message' => 'Display the specified resource',
                'data' => Guide::findOrFail($id)
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
        // $guide=Guide::find($id)->delete();
        // if ($guide){
        //     return ['guide'=>'guide deleted'];
        // }
        try {
            Guide::findOrFail($id)->delete();
            return response()->json([
                'success' => true,
                'message' => 'Guide Deleted Successfully',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error!',
            ]);
        }
    }
}
