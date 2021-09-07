@extends('main.index')
@section('content')
    <div class="page-content-wrap">



        <div class="row">
            <div class="col-md-12">

                <!-- START DATATABLE EXPORT -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Hotel</h3>

                    </div>
                    <div class="panel-body">
                        <table id="customers2" class="table datatable">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Address</th>
                                    <th>Account</th>
                                    <th>Status</th>
                                    <th>Action</th>

                                </tr>
                            </thead>
                            <tbody>

                                @foreach ($hotels as $user)
                                    <tr>
                                        <td>{{ $user->id }}</td>
                                        <td>{{ $user->name }}</td>
                                        <td>{{ $user->email }}</td>
                                        <td>{{ $user->phone }}</td>
                                        <td>{{ $user->address }}</td>
                                        <td>{{ $user->account }}</td>
                                        <td>{{ $user->status }}</td>

                                        <td>

                                            <form method="POST"
                                                action="{{ url('hotel/destroy', ['user' => $user->id]) }}">

                                                <a class=" btn btn btn-success"
                                                    href="{{ url('hotel/edit', ['user' => $user->id]) }}"> <i
                                                        class="fa fa-check"></i> </a>


                                                <a class=" btn btn btn-warning"
                                                    href="{{ url('hotel/update', ['user' => $user->id]) }}"> <i
                                                        class="fa fa-times"></i> </a>


                                                @csrf
                                                @method('DELETE')
                                                <button onclick="return confirm('Are You Sure Want to delete?')"
                                                    type="submit" class=" btn btn-danger"><i class="fa fa-trash-o"
                                                        aria-hidden="true"></i></button>
                                            </form>
                                        </td>
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
