<!DOCTYPE html>
<html lang="en" class="body-full-height">
    <head>        
        <!-- META SECTION -->
        <title>Login Template</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href=" {{ asset ('template/favicon.ico')}} " type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="{{asset('template/css/theme-default.css')}} "/>
        <!-- EOF CSS INCLUDE -->                                     
    </head>
    <body>
        
        <div class="login-container lightmode">
        
            <div class="login-box animated fadeInDown">
                <div class="text-center text-uppercase" ><h2>D E S C A L Z O</h2></div>
                <div class="login-body">
                    <div class="login-title"><strong>Log In</strong> to your account</div>

                    <form class="form-horizontal" method="post">
                        @csrf
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="email"></label>
                                <input type="text" name="email" class="form-control" placeholder="E-mail" />
                            </div>
                            
                        </div>
                        @error('email')
                            <div class="alert alert-danger">{{$message}}</div>
                        @enderror
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="password"></label>
                                <input type="password" name="password" class="form-control" placeholder="Password" />
                            </div>
                        </div>
                        @error('password')
                            <div class="alert alert-danger">{{$message}}</div>
                        @enderror
                        <div class="form-group">
                            <div class="col-md-6">
                                <input type="submit" name="submit" class="btn btn-info btn-block" value="Log In" />
                            </div>
                          
                            <div class="col-md-6">
                                <a href="#" class="btn btn-link btn-block">Forgot your password?</a>
                            </div>
                        </div>
     
                    </form>
                </div>
                <div class="login-footer">
                    <div class="pull-left">
                        &copy; 2021 Descalzo
                    </div>
                    {{-- <div class="pull-right">
                        <a href="#">About</a> |
                        <a href="#">Privacy</a> |
                        <a href="#">Contact Us</a>
                    </div> --}}
                </div>
            </div>
        </div>

    </body>
</html>






