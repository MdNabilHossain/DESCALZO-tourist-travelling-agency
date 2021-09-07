<?php

namespace App\Http\Controllers;
use Exception;
use Illuminate\Support\Facades\Validator;
use App\Models\Vehicle;
use Illuminate\Http\Request;

class VehicleController extends Controller
{
    public function vehicle(){
        return View('vehicle.vehicle');
    
    }

    public function submit(Request $request){
        // $data= $req->all();
        // $add=Vehicle::create($data);
        // //return redirect ('/vehicle');
        // return $add;


        $validator = Validator::make($request->all(), [
            // 'name'=>'required',
            // 'username'=>'required|unique:users',
            'name'=>'required',
            'category'=>'required',
            'company' => 'required',
            'type' => 'required',
            
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                "errors" => $validator->errors()->all()
            ]);
        }

        try {

            $vehicle = Vehicle::create([
                'name'  => $request->name,
                'category'  => $request->category,
                'company'  => $request->company,
                'type'  => $request->type,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Vehicle added Successfully',
                'data' => $vehicle
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something is Wrong...!',
            ], 400);
        }
    }

    public function update(Request $request, $id)
  {

    $validator = Validator::make($request->all(), [
        // 'name'=>'required',
        // 'username'=>'required|unique:users',
        'name'=>'required',
        'category'=>'required',
        'company' => 'required',
        'type' => 'required',
      
    ]);

    if ($validator->fails()) {
        return response()->json([
            'success' => false,
            "errors" => $validator->errors()->all()
        ]);
    }
        try{
        $vehicle=Vehicle::findOrFail($id);
        $vehicle->name = $request->input('name');
        $vehicle->category = $request->input('category');
        $vehicle->company = $request->input('company');
        $vehicle->type = $request->input('type');
        $vehicle->save();
        
        return response()->json([
            'success'=>true,
            'message'=>'Vehicle Updated Successfully',
            'data'=>$vehicle
        ]);
    }
    catch(Exception $e){
    return response()->json([
        'success'=>false,
        'message'=>'Something is Wrong...',
    ],400);
}
      //return $vehicle;
  }

    
    public function show(){
        // $this->data['show']=Vehicle::all();
        // //return view('vehicle.vehicle',$this->data);
        // return $this->data;

        // return response()->json([
        //     'success'=>true,
        //     'message'=>'Display a listing of the resource',
        //     'data'=>Vehicle::all()
        // ]);

        return Vehicle::all();
        }

        public function delete($id){
            // $guide=Guide::find($id)->delete();
            // if ($guide){
            //     return ['guide'=>'guide deleted'];
            // }
            try{
                Vehicle::findOrFail($id)->delete();
                return response()->json([
                    'success'=>true,
                    'message'=>'Vehicle Deleted Successfully',
                ]);
            }
            catch(Exception $e){
                return response()->json([
                    'success'=>false,
                    'message'=>'Error!',
                ]);
            }
        }


        public function singleShow($id)
        {
            // $guide=Guide::find($id);
            // return $guide;
    
            try {
                return response()->json([
                    'success' => true,
                    'message' => 'Display the specified resource',
                    'data' => Vehicle::findOrFail($id)
                ]);
            } catch (Exception $e) {
                return response()->json([
                    'success' => false,
                    'message' => 'Error Showing Specific User!'
                ]);
            }
        }
    

}
