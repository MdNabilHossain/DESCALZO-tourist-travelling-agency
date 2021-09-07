@extends('main.index')
@section('content')

   <!-- START BREADCRUMB -->
   <ul class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Dashboard</a></li>
    <li><a href="#">Report</a></li>
    <li class="active">Report List</li>
</ul>
<!-- END BREADCRUMB -->
    <div class="page-content-wrap">


        <div class="panel-heading">
           
            <div class="btn-group pull-right">
            <a href="{{ url('report/create') }}" class="btn btn-info "><i class="fa fa-plus"></i>  New Report</a> 
            </div>
            </div>
        <div class="row">
            <div class="col-md-12">



                <!-- START DATATABLE EXPORT -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">Report List</h2>

                    </div>
                    <div class="panel-body">
                        <table id="customers2" class="table datatable">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>type</th>
                                    <th>description</th>
                                    <th>Status</th>
                                 

                                </tr>
                            </thead>
                            <tbody>

                                @foreach ($reports as $user)
                                    <tr>
                                        <td>{{ $user->id }}</td>
                                        <td>{{ $user->type }}</td>
                                        <td>{{ $user->description }}</td>
                                        <td>{{ $user->status }}</td>

                                        
                                    </tr>
                                @endforeach


                            </tbody>
                        </table>

                    </div>
                </div>
                <!-- END DATATABLE EXPORT -->



            </div>
        </div>

    </div>

@stop
