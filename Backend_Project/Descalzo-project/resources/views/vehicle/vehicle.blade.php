@extends('main.index')
@section('content')

   <!-- START BREADCRUMB -->
   <ul class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Dashboard</a></li>
    <li><a href="#">Vehicle</a></li>
    <li class="active">Vehicle Form</li>
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
                    <h3 class="panel-title"><strong>Add Vehicle</strong> for Tourist</h3>
                    <ul class="panel-controls">
                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                    </ul>
                </div>
                {{-- <div class="panel-body">
                    <p>This is non libero bibendum, scelerisque arcu id, placerat nunc. Integer ullamcorper rutrum dui eget porta. Fusce enim dui, pulvinar a augue nec, dapibus hendrerit mauris. Praesent efficitur, elit non convallis faucibus, enim sapien suscipit mi, sit amet fringilla felis arcu id sem. Phasellus semper felis in odio convallis, et venenatis nisl posuere. Morbi non aliquet magna, a consectetur risus. Vivamus quis tellus eros. Nulla sagittis nisi sit amet orci consectetur laoreet. Vivamus volutpat erat ac vulputate laoreet. Phasellus eu ipsum massa.</p>
                </div> --}}
                <div class="panel-body">                                                                        
                    
                    <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label">Vehicle Name</label>
                        <div class="col-md-6 col-xs-12">                                            
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                <input type="text" name="name" class="form-control"/>
                            </div>                                            
                            <span class="help-block">This is vehicle text field</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label">Company Name</label>
                        <div class="col-md-6 col-xs-12">                                            
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                <input type="text" name="company" class="form-control"/>
                            </div>                                            
                            <span class="help-block">This is vehicle Company name text field</span>
                        </div>
                    </div>
                    
                    {{-- <div class="form-group">                                        
                        <label class="col-md-3 col-xs-12 control-label">Datepicker</label>
                        <div class="col-md-6 col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                <input type="text" class="form-control datepicker" value="2021-28-06">                                            
                            </div>
                            <span class="help-block">Click on input field to get datepicker</span>
                        </div>
                    </div>
                     --}}
                    {{-- <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label">Textarea</label>
                        <div class="col-md-6 col-xs-12">                                            
                            <textarea class="form-control" rows="5"></textarea>
                            <span class="help-block">textarea field</span>
                        </div>
                    </div> --}}
                    
                    <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label">Travels</label>
                        <div class="col-md-6 col-xs-12">                                                                                            
                            <input type="text" class="tagsinput" value=""/>
                            <span class="help-block">Travels textarea field</span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label">Vehicle Category</label>
                        <div class="col-md-6 col-xs-12">                                                                                            
                            <select class="form-control select" name="category">
                          
                                <option>A/C</option>
                                <option>Non A/C</option>
                            </select>
                            <span class="help-block">Select Vehicle Category</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label">Vehicle Type</label>
                        <div class="col-md-6 col-xs-12">                                                                                            
                            <select class="form-control select" name="type">
                                <option>Select</option>
                                <option>Bus</option>
                                <option>Car</option>
                            </select>
                            <span class="help-block">Select Vehicle Category</span>
                        </div>
                    </div>
                    
                    {{-- <div class="form-group">
                        <label class="col-md-3 col-xs-12 control-label">File</label>
                        <div class="col-md-6 col-xs-12">                                                                                                                                        
                            <input type="file" class="fileinput btn-primary" name="filename" id="filename" title="Browse file"/>
                            <span class="help-block">Input type file</span>
                        </div>
                    </div> --}}
                    
                 

                </div>
                <div class="panel-footer">
                    <button class="btn btn-default">Clear Form</button>                                    
                   <input type="submit" name="submit" class="btn btn-primary pull-right" value="Add Vehicle">
                </div>
            </div>
            </form>
            
        </div>
    </div>                    
    
</div>
<!-- END PAGE CONTENT WRAPPER --> 

@stop