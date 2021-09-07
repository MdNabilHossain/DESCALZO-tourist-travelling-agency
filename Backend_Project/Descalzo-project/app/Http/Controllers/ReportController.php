<?php

namespace App\Http\Controllers;
use Exception;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\ReportRequest;
use App\Models\report;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class ReportController extends Controller
{
    public function report(){
      try {
        $report=Report::all();
        return response()->json([

          'success'=> true,
          'report' =>$report,
        ]);
      } catch (Exception $ex) {
        return response()->json([
          'success'=> false,
          'error'=> $ex->getMessage(),
        ]);
      }
       // $this->data['reports']=report::all();
        //return view('report.report',$this->data);
       // return $this->data;
    
   

}


public function singleShow($id)
{
    // $guide=Guide::find($id);
    // return $guide;

    try {
        return response()->json([
            'success' => true,
            'message' => 'Display the specified resource',
            'data' => Report::findOrFail($id)
        ]);
    } catch (Exception $e) {
        return response()->json([
            'success' => false,
            'message' => 'Error Showing Specific report!'
        ]);
    }
}

public function create(){
    return view ('report.reportlist');
}
  public function store(Request $request){
    //    return $req->all();
    $validator = Validator::make($request->all(), [
      // 'name'=>'required',
      // 'username'=>'required|unique:users',
      'type'=>'required',
      'description'=>'required',
      'status' => 'required',
     
  ]);

  if ($validator->fails()) {
      return response()->json([
          'success' => false,
          "errors" => $validator->errors()->all()
      ]);
  }else{
    try{
      $data=$request->all();
      report::create($data);
      return response()->json([
        'success'=>true,
        'message'=>'successfully report generated',
        'report'=>$data,
      ]);
    }catch (Exception $ex) {
      return response()->json([
        'success'=> false,
        'error'=> $ex->getMessage(),
      ]);
    }
  }
       $report=[
           'employee_id'=>1,
                    'type'=>$request->type,
                    'description'=> $request->description,
                    'status'=> 0
                ];

                report::create($report);
                return redirect()->to('report');

  }

  public function show()
  {
      return Report::all();
  }

  public function update(Request $request, $id)
  {
      $validator = Validator::make($request->all(),[
          'employee_id'=>'required',
          'type'=>'required',
          'description'=>'required',
          'status'=>'required',
      ]);

      if($validator->fails()){
          return response()->json([
              'success'=>false,
              "errors"=>$validator->errors()
          ]);
      }

      try{

          $report=Report::findOrFail($id);

          $report->employee_id  = $request->employee_id;
          $report->type  = $request->type;
          $report->description  = $request->description;
          $report->status  = $request->status;
        
          
          $report->save();

          return response()->json([
              'success'=>true,
              'message'=>'User Updated Successful',
              'data'=>$report
          ]);
      }
      catch(Exception $e){
          return response()->json([
              'success'=>false,
              'message'=>'Something is Wrong...',
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
          Report::findOrFail($id)->delete();
          return response()->json([
              'success' => true,
              'message' => 'Report Deleted Successfully',
          ]);
      } catch (Exception $e) {
          return response()->json([
              'success' => false,
              'message' => 'Error!',
          ]);
      }
  }
    
}
