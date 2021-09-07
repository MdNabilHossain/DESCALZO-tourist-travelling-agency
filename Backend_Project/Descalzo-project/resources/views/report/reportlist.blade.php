@extends('main.index')
@section('content')

   <!-- START BREADCRUMB -->
   <ul class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Dashboard</a></li>
    <li><a href="#">Report</a></li>
    <li class="active">Create Report</li>
</ul>
<!-- END BREADCRUMB -->

<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">

    <div class="row">
        <div class="col-md-12">
       
            <form class="form-horizontal" method="POST">

                @csrf
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><strong>Report</strong> for Tourist</h3>
                    <ul class="panel-controls">
                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                    </ul>
                </div>
                {{-- <div class="panel-body">
                    <p>This is non libero bibendum, scelerisque arcu id, placerat nunc. Integer ullamcorper rutrum dui eget porta. Fusce enim dui, pulvinar a augue nec, dapibus hendrerit mauris. Praesent efficitur, elit non convallis faucibus, enim sapien suscipit mi, sit amet fringilla felis arcu id sem. Phasellus semper felis in odio convallis, et venenatis nisl posuere. Morbi non aliquet magna, a consectetur risus. Vivamus quis tellus eros. Nulla sagittis nisi sit amet orci consectetur laoreet. Vivamus volutpat erat ac vulputate laoreet. Phasellus eu ipsum massa.</p>
                </div> --}}
                <div class="panel-body">  
                    
                    
                    <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label" for="type">Type</label>
                        <div class="col-md-6 col-xs-12">                                                                                            
                            <select class="form-control select" name="type" >
                          
                                <option>daily report</option>
                                <option>weekly report</option>
                                <option>monthly report</option>
                                <option>yearly report</option>
                            </select>
                            <span class="help-block">leSect report Category</span>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label"for="description">Description</label>
                        <div class="col-md-6 col-xs-12">                                            
                            <textarea class="form-control" name="description" rows="5"></textarea>
                            <span class="help-block">Default textarea field</span>
                        </div>
                    </div>

                    {{-- <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label" for="description">Description</label>
                        <div class="col-md-6 col-xs-12"> 
                            <textarea class="form-control" name="description" id="" cols="20" rows="10">                                          
                            <div class="input-group" >
                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                <input type="text-area" name="description" class="form-control" rows="5"/>
                            </div> 
                        </textarea>                                            
                            <span class="help-block">This is Address name text field</span>
                        </div>
                    </div> --}}


                    
                  
                 
                    
                    <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label">File</label>
                        <div class="col-md-6 col-xs-12">                                                                                                                                        
                            <input type="file" class="fileinput btn-primary" name="filename" id="filename" title="Browse file"/>
                            <span class="help-block">Input type file</span>
                        </div>
                    </div>
                    
                 

                </div>
                <div class="panel-footer">
                    <button class="btn btn-default">Clear Form</button>                                    
                   <input type="submit" name="submit" class="btn btn-danger pull-right" value="Create">
                </div>
            </div>
            </form>
            
        </div>
    </div>                    
    
</div>
<!-- END PAGE CONTENT WRAPPER --> 

@stop