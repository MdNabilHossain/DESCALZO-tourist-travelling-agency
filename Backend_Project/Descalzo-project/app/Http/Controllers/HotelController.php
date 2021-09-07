<?php

namespace App\Http\Controllers;
use App\Models\Hotel;
use App\Models\Hotel_Owner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
class HotelController extends Controller
{
    public function index()
    {
       // $this->data['mode']='edit';
        $this->data['hotels']=Hotel_Owner::all();
        //return view('hotel.hotel',$this->data);
        return $this->data;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        return  Hotel_Owner::all();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    {
       // $this->data['user']=Employee::findOrFail($id);
    //    $this->data['user']= Tourist::findOrFail($id);
        //$user->status=1;
        
        // Hotel_Owner:: where('id',$id)->update(['status'=>1]);
        // return redirect()->to('hotel');
        // $validator = Validator::make($request->all(), [
        //     // 'name'=>'required',
        //     // 'username'=>'required|unique:users',
        //     // 'name' => 'required',
        //     // 'username' => 'required|unique:users',
        //     // 'password' => 'required',
        //     // 'email' => 'required|email',
        //     // 'phone' => 'required',
        //     // 'address' => 'required',
        //     // 'account' => 'required',
        //     'status' => 'required',
        // ]);

        // if ($validator->fails()) {
        //     return response()->json([
        //         'success' => false,
        //         "errors" => $validator->errors()->all()
        //     ]);
        // }
        try {
            $hotel = Hotel_Owner:: where('id',$id)->update(['status'=>1]);//Hotel_Owner::findOrFail($id);
            // $hotel->name = $request->input('name');
            // $hotel->username = $request->input('username');
            // $hotel->password = $request->input('password');
            // $hotel->email = $request->input('email');
            // $hotel->phone = $request->input('phone');
            // $hotel->address = $request->input('address');
            // $hotel->account = $request->input('account');
            //$hotel->status = $request->input('status');
            //$hotel->save();

            return response()->json([
                'success' => true,
                'message' => 'User Updated Successful',
                'data' => $hotel
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something is Wrong...',
            ], 400);
        }
        //return $hotel;


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function update($id)
    // {
    //     Hotel_Owner:: where('id',$id)->update(['status'=>0]);
    //     return redirect()->to('hotel');
    // }
    public function singleShow($id)
    {
        // $hotel=Guide::find($id);
        // return $hotel;

        try {
            return response()->json([
                'success' => true,
                'message' => 'Display the specified resource',
                'data' =>  Hotel_Owner::findOrFail($id)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error Showing Specific User!'
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // $this->data['user']= Hotel_Owner::findOrFail($id);
        // if ( Hotel_Owner::find($id)->delete()) {
        //     Session::flash('message',"Hotel Deleted Successfully..");
        //  }
        //  else {
        //      Session::flash('message',"Hotel not  Delete .");
        //  }
        //  return redirect()->to('hotel');

        try {
            Hotel_Owner::findOrFail($id)->delete();
            return response()->json([
                'success' => true,
                'message' => 'Hotel_Owner Deleted Successfully',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error!',
            ]);
        }
    }
}
