<!DOCTYPE html>
<html lang="en">

<head>
    <!-- META SECTION -->
    <title>Descalzo Dashboard</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="icon" href="{{ asset('template/favicon.ico') }}" type="image/x-icon" />
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <link rel="stylesheet" type="text/css" id="theme" href="{{ asset('template/css/theme-default.css') }}" />
    <!-- EOF CSS INCLUDE -->
</head>

<body>
    <!-- START PAGE CONTAINER -->
    <div class="page-container">

        <!-- START PAGE SIDEBAR -->
        <div class="page-sidebar">
            <!-- START X-NAVIGATION -->
            <ul class="x-navigation">
                <li class="xn-logo">
                    <a href="{{route('dashboard')}}">Descalzo</a>
                    <a href="#" class="x-navigation-control"></a>
                </li>
                <li class="xn-title">Navigation</li>
                <li class="active">
                    <a href="{{route('dashboard')}}"><span class="fa fa-desktop"></span> <span class="xn-text">Dashboard</span></a>
                </li>
               <li class="xn-openable">
                    {{-- <li><a href="http://127.0.0.1:8000/EmployeeList"><span class="fa fa-user"></span> Profile</a></li> --}}
                    {{-- <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Employees</span></a> --}}
                 
                        <li><a href="{{url('hotel')}}"><span class="fa fa-h-square"></span> Hotel</a></li>
                        
                        <li class="xn-openable"> <a href="#"><span class="fa fa-envelope"></span> Mailbox</a>
                            <ul>
                                <li><a href="{{route('inbox')}}"><span class="fa fa-inbox"></span> Inbox</a></li>
                                <li><a href="{{route('message')}}"><span class="fa fa-file-text"></span>Message</a></li>
                                <li><a href="{{route('compose')}}"><span class="fa fa-pencil"></span> Compose</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="{{route('vehicle')}}"><span class="fa fa-car"></span> vehicle</a></li>
                        <li><a href="{{route('guide')}}"><span class="fa fa-male"></span> Guide</a></li>
                        <li><a href="{{route('msg')}}"><span class="fa fa-comments"></span> Messages</a></li>
                        <li><a href="{{route('calendar')}}"><span class="fa fa-calendar"></span> Calendar</a></li>
                        <li><a href="{{url('report')}}"><span class="fa fa-signal"></span> Reports</a></li>
                        
                        
                        <li><a href="{{route('search')}}"><span class="fa fa-search"></span> Search</a></li>
                        
                       
                   
                 </li> 
             
                <li class="xn-title">Others</li>
              
                <li> <a href="maps.html"><span class="fa fa-money"></span> <span class="xn-text">Withdraw Salary</span></a> </li>
                <li class="xn-openable"> <a href="tables.html"><span class="fa fa-table"></span> <span class="xn-text">Tables</span></a>   <ul>
                        {{-- <li><a href="table-basic.html"><span class="fa fa-align-justify"></span> Basic</a></li> --}}
                        <li><a href="{{route('data')}}"><span class="fa fa-sort-alpha-desc"></span> Data Tables</a> </li>
                        <li><a href="{{route('export')}}"><span class="fa fa-download"></span> Export Tables</a></li>
                    </ul>
                </li>
              
                <li>
                    <a href="maps.html"><span class="fa fa-map-marker"></span> <span class="xn-text">Maps</span></a>
                </li>

             

            </ul>
            <!-- END X-NAVIGATION -->
        </div>
        <!-- END PAGE SIDEBAR -->

        <!-- PAGE CONTENT -->
      <div class="page-content">

            <!-- START X-NAVIGATION VERTICAL -->
            <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                <!-- TOGGLE NAVIGATION -->
                <li class="xn-icon-button">
                    <a href="#" class="x-navigation-minimize"><span class="fa fa-dedent"></span></a>
                </li>
                <!-- END TOGGLE NAVIGATION -->
                <!-- SEARCH -->
                <li class="xn-search">
                    <form role="form">
                        <input type="text" name="search" placeholder="Search..." />
                    </form>
                </li>
                <!-- END SEARCH -->
                <!-- SIGN OUT -->
                <li class="xn-icon-button pull-right">
                    <a href="http://127.0.0.1:8000" class="mb-control" data-box="#mb-signout"><span class="fa fa-sign-out"></span></a>
                </li>
                <!-- END SIGN OUT -->
                <!-- MESSAGES -->
                <li class="xn-icon-button pull-right">
                    <a href="#"><span class="fa fa-comments"></span></a>
                    <div class="informer informer-danger"></div>
                    <div class="panel panel-primary animated zoomIn xn-drop-left xn-panel-dragging">
                        <div class="panel-heading">
                            <h3 class="panel-title"><span class="fa fa-comments"></span> Messages</h3>
                            <div class="pull-right">
                                <span class="label label-danger"></span>
                            </div>
                        </div>
                        <div class="panel-body list-group list-group-contacts scroll" style="height: 200px;">
                            <a href="#" class="list-group-item">
                                <div class="list-group-status status-online"></div>
                                <img src="{{ asset('template/assets/images/users/user2.jpg')}}" class="pull-left" alt="John Doe" />
                                <span class="contacts-title">John Doe</span>
                                <p>Praesent placerat tellus id augue condimentum</p>
                            </a>
                            <a href="#" class="list-group-item">
                                <div class="list-group-status status-away"></div>
                                <img src="{{ asset('template/assets/images/users/user.jpg')}}" class="pull-left" alt="Dmitry Ivaniuk" />
                                <span class="contacts-title">Dmitry Ivaniuk</span>
                                <p>Donec risus sapien, sagittis et magna quis</p>
                            </a>
                            <a href="#" class="list-group-item">
                                <div class="list-group-status status-away"></div>
                                <img src="{{ asset('template/assets/images/users/user3.jpg')}}" class="pull-left" alt="Nadia Ali" />
                                <span class="contacts-title">Nadia Ali</span>
                                <p>Mauris vel eros ut nunc rhoncus cursus sed</p>
                            </a>
                            <a href="#" class="list-group-item">
                                <div class="list-group-status status-offline"></div>
                                <img src="{{ asset('template/assets/images/users/user6.jpg')}}" class="pull-left" alt="Darth Vader" />
                                <span class="contacts-title">Darth Vader</span>
                                <p>I want my money back!</p>
                            </a>
                        </div>
                        <div class="panel-footer text-center">
                            <a href=" {{route('msg')}}">Show all messages</a>
                        </div>
                    </div>
                </li>
                <!-- END MESSAGES -->
                <!-- TASKS -->
                {{-- <li class="xn-icon-button pull-right">
                    <a href="#"><span class="fa fa-tasks"></span></a>
                    <div class="informer informer-warning">3</div>
                    <div class="panel panel-primary animated zoomIn xn-drop-left xn-panel-dragging">
                        <div class="panel-heading">
                            <h3 class="panel-title"><span class="fa fa-tasks"></span> Tasks</h3>
                            <div class="pull-right">
                                <span class="label label-warning">3 active</span>
                            </div>
                        </div>
                        <div class="panel-body list-group scroll" style="height: 200px;">
                            <a class="list-group-item" href="#">
                                <strong>Phasellus augue arcu, elementum</strong>
                                <div class="progress progress-small progress-striped active">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="50"
                                        aria-valuemin="0" aria-valuemax="100" style="width: 50%;">50%</div>
                                </div>
                                <small class="text-muted">John Doe, 25 Sep 2014 / 50%</small>
                            </a>
                            <a class="list-group-item" href="#">
                                <strong>Aenean ac cursus</strong>
                                <div class="progress progress-small progress-striped active">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80"
                                        aria-valuemin="0" aria-valuemax="100" style="width: 80%;">80%</div>
                                </div>
                                <small class="text-muted">Dmitry Ivaniuk, 24 Sep 2014 / 80%</small>
                            </a>
                            <a class="list-group-item" href="#">
                                <strong>Lorem ipsum dolor</strong>
                                <div class="progress progress-small progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="95"
                                        aria-valuemin="0" aria-valuemax="100" style="width: 95%;">95%</div>
                                </div>
                                <small class="text-muted">John Doe, 23 Sep 2014 / 95%</small>
                            </a>
                            <a class="list-group-item" href="#">
                                <strong>Cras suscipit ac quam at tincidunt.</strong>
                                <div class="progress progress-small">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0"
                                        aria-valuemax="100" style="width: 100%;">100%</div>
                                </div>
                                <small class="text-muted">John Doe, 21 Sep 2014 /</small><small class="text-success">
                                    Done</small>
                            </a>
                        </div>
                        <div class="panel-footer text-center">
                            <a href="pages-tasks.html">Show all tasks</a>
                        </div>
                    </div>
                </li> --}}
                <!-- END TASKS -->
            </ul>
            <!-- END X-NAVIGATION VERTICAL -->

        

            <!-- PAGE CONTENT WRAPPER -->
              @yield('content')
              
            <!-- END PAGE CONTENT WRAPPER -->
        </div>
        <!-- END PAGE CONTENT -->
    </div>
    <!-- END PAGE CONTAINER -->

    <!-- MESSAGE BOX-->
    <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
        <div class="mb-container">
            <div class="mb-middle">
                <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
                <div class="mb-content">
                    <p>Are you sure you want to log out?</p>
                    <p>Press No if youwant to continue work. Press Yes to logout current user.</p>
                </div>
                <div class="mb-footer">
                    <div class="pull-right">
                        <a href="{{route('logout')}}" class="btn btn-success btn-lg">Yes</a>
                        <button class="btn btn-default btn-lg mb-control-close">No</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END MESSAGE BOX-->

    <!-- START PRELOADS -->
    <audio id="audio-alert" src="{{ asset('template/audio/alert.mp3')}}" preload="auto"></audio>
    <audio id="audio-fail" src="{{ asset('template/audio/fail.mp3')}}" preload="auto"></audio>
    <!-- END PRELOADS -->
<!-- START SCRIPTS -->
    <!-- START PLUGINS -->
    <script type="text/javascript" src="{{ asset('template/js/plugins/jquery/jquery.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/jquery/jquery-ui.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/bootstrap/bootstrap.min.js') }}"></script>
    <!-- END PLUGINS -->

    <!-- START THIS PAGE PLUGINS-->
    <script type='text/javascript' src="{{ asset('template/js/plugins/icheck/icheck.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/scrolltotop/scrolltopcontrol.js') }}"></script>

    <script type="text/javascript" src="{{ asset('template/js/plugins/morris/raphael-min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/morris/morris.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/rickshaw/d3.v3.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/rickshaw/rickshaw.min.js') }}"></script>
    <script type='text/javascript' src="{{ asset('template/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') }}"></script>
    <script type='text/javascript' src="{{ asset('template/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js') }}"></script>
    <script type='text/javascript' src="{{ asset('template/js/plugins/bootstrap/bootstrap-datepicker.js') }}"> </script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/owl/owl.carousel.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('template/js/plugins/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/daterangepicker/daterangepicker.js') }}"></script>
    <script type ="text/javascript"src="{{ asset('template/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') }}" > </script>

    <script type="text/javascript" src="{{ asset('template/js/plugins/summernote/summernote.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/tagsinput/jquery.tagsinput.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/bootstrap/bootstrap-select.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/bootstrap/bootstrap-file-input.js') }}"> </script>

    <script type="text/javascript" src="{{ asset('template/js/plugins/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/fullcalendar/fullcalendar.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('template/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/plugins/tableexport/tableExport.js') }}"></script>

    <script type="text/javascript" src="{{ asset('template/js/plugins/tableexport/jquery.base64.js') }}"></script>
	<script type="text/javascript" src="{{ asset('template/js/plugins/tableexport/html2canvas.js') }}"></script>
	<script type="text/javascript" src="{{ asset('template/js/plugins/tableexport/jspdf/libs/sprintf.js') }}"></script>
	<script type="text/javascript" src="{{ asset('template/js/plugins/tableexport/jspdf/jspdf.js') }}"></script>
	<script type="text/javascript" src="{{ asset('template/js/plugins/tableexport/jspdf/libs/base64.js') }}"></script>  

    <script type="text/javascript" src="{{ asset('template/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>  
    <!-- END THIS PAGE PLUGINS-->

    <!-- START TEMPLATE -->
    <script type="text/javascript" src="{{ asset('template/js/settings.js') }}"></script>

    <script type="text/javascript" src="{{ asset('template/js/plugins.js') }}"></script>
    <script type="text/javascript" src="{{ asset('template/js/actions.js') }}"></script>

    <script type="text/javascript" src="{{ asset('template/js/demo_dashboard.js') }}"></script>
    <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->
</body>

</html>
