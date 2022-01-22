<%-- 
    Document   : login
    Created on : 17-Jan-2022, 7:49:49 pm
    Author     : Apu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login | Inventory Managment App</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                background: #dfe7e9;
                font-family: 'Roboto', sans-serif;
            }
            .form-control {
                font-size: 16px;
            }
            .form-control:focus {
                border-color: #5cb85c;
            }
            .form-control, .btn {
                border-radius: 50px;
                outline: none !important;
            }
            .login-form {
                width: 400px;
                margin: 0 auto;
                padding: 30px 0;
            }
            .login-form form {
                border-radius: 5px;
                margin-bottom: 20px;
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 40px 50px;
            }
            .login-form .btn {
                font-size: 18px;
                line-height: 26px;
                font-weight: bold;
                text-align: center;
            }
            .social-btn .btn {
                color: #fff;
                margin: 10px 0;
                font-size: 15px;
                border-radius: 50px;
                text-indent: 10px;
                font-weight: normal;
                border: none;
                text-align: center;
            }
            .social-btn .btn:hover {
                opacity: 0.9;
            }
            .social-btn .btn-primary {
                background: #507cc0;
            }
            .social-btn .btn-info {
                background: #64ccf1;
            }
            .social-btn .btn-danger {
                background: #df4930;
            }
            .social-btn .btn i {
                margin-right: 9px;
                font-size: 20px;
                min-width: 25px;
                position: relative;
                top: 2px;
            }
            .or-seperator {
                margin: 50px 0 15px;
                text-align: center;
                border-top: 1px solid #e0e0e0;
            }
            .or-seperator b {
                padding: 0 10px;
                width: 40px;
                height: 40px;
                font-size: 16px;
                text-align: center;
                line-height: 40px;
                background: #fff;
                display: inline-block;
                border: 1px solid #e0e0e0;
                border-radius: 50%;
                position: relative;
                top: -22px;
                z-index: 1;
            }
            .login-form a {
                color: #5cb85c;
            }
        </style>
    </head>
    <body>
        <div class="login-form">
            <!-- here I want to display my error msg after 
                    extracting from request object. Also I need to format the 
                    text in red color. 
                    In order to use request object ( Java object) we need to use 
                    something call jstl - java server tag lib - why? Because 
                    it helps us reduce number of lines of code. --> 
            <div class="text-center"><span style="color: red;"><s:property value="msg" /></span></div>
            <form action="login" method="post">		
                <div class="text-center social-btn">
                    <a href="#" class="btn btn-primary btn-lg btn-block"><i class="fa fa-facebook"></i> Sign in with <b>Facebook</b></a>
                    <a href="#" class="btn btn-danger btn-lg btn-block"><i class="fa fa-google"></i> Sign in with <b>Google</b></a>
                </div>
                <div class="or-seperator"><b>or</b></div>
                <div class="form-group">
                    <input type="text" class="form-control input-lg" name="userName" placeholder="Username" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control input-lg" name="password" placeholder="Password" required="required">
                </div>        
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg btn-block login-btn">Sign in</button>
                </div>
            </form>
            <div class="text-center"><span class="text-muted">Don't have an account?</span> <a href="registeruser">Sign up here</a></div>
        </div>
    </body>
</html>
