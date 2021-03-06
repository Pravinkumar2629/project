<%-- 
    Document   : Home
    Created on : 2 Dec, 2017, 11:03:13 PM
    Author     : Pravinkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Youth political forum</title>
        <link href="resources/Css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bulma-0.6.2/css/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bulma-0.6.2/bulma-carousel/dist/bulma-carousel.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bulma-0.6.2/css/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="resources/w3/w3css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/Css/MyCSS.css" rel="stylesheet" type="text/css"/>
        <link href="resources/Css/style.css" rel="stylesheet" type="text/css"/>

        <script src="resources/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/Jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="resources/Angular/angular.min.js" type="text/javascript"></script>
        <script src="resources/Js/JqSFLoginRegister.js" type="text/javascript"></script>
        <script src="resources/Js/ASFRegister.js" type="text/javascript"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            a{color:#fff;}
            #formData{
                color: #fff;
                font-style: oblique;
            }
            #temp{
                top:70%;
                left:70%;
                position: fixed;
            }
            #Register{
                display:none;
            }
            #RegistrationContent{
                color: white;
                top: 5%;
                right: 10%;
                left: auto;
            }
            .contentOnBackground{
                overflow-x: : auto;
            }
            .backgroundImage{
                position: fixed;
                background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.75) ), url('/resources/Images/YPF/ypf.jpg');
                background-size:cover ;
                left:0;
                right:0;
                filter:blur(5px);
                min-height: 100%;
                z-index: -1;
                opacity: 0.8;
            }
            .MyBlurBackground{
                z-index: 9999;  
                filter:blur(6px);
                position: fixed;
                display: flex;
                top:0px;
                left:0px;
                width: 100%;
                height:100%;
                background-color: #009c95;

            }
            .form-control{
                width: auto;
                font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                font-size:25px;
                background-color:transparent;
                padding-left:10px;
                padding-right:10px;
                border-radius:5px;
                margin:2px 0px 2px 0px;;
            }
            .form-control:hover {
                border-bottom: 3px solid #c8f122e3;
                border-left: 1px solid #c8f122e3;
            }
            .myExit{
                color:#00ffff;
                cursor: pointer;
            }
            .myExit:hover{
                color: #EEd70B; 
            }
            .button{
                background: linear-gradient(rgba(0,0,0,1),rgba(1,1,1,1));
                background: linear-gradient(rgba(88, 202, 195, 0.71),rgba(60, 84, 13, 0.84));   
                font-size: 1em;
                padding: 0px 20px 0px 20px;
                height: auto;
                font-weight: 400;
                font-style: normal;
                margin-top: 5px;
                font-style: oblique;
                color: cornsilk;
            }
            .button.is-primary,.button:hover{
                background-color: transparent;
                border:1px solid #00d1b2;
            }
            .button:hover{
                background :transparent;
                border:1px solid #00d1b2;
            }
            .fixImageCarousesl{
                width: 700px;
                height: 250px;
                min-width: 700px;
                min-height: 250px
            }
            .paddingLeft{
                padding-left: 50px;
            }
            .myFooter{
                position: fixed;
                font-size: 12px;
                color: white;
            }
            .myColumn{
                position: fixed;
                overflow: auto;
            }
            .logo-ypf{
                color:white;
                font-family: cursive;
            }          
            .row{
                overflow: auto;
            }
        </style>

    </head>
    <body class="container-fluid" ng-app="loginReg"> 
        <div class="row">
            <div class="backgroundImage"></div>
            <div class="row">
                <div class=" col-md-12 col-xs-10 col-sm-8 myColumn">
                    <h2 class="w3-center logo-ypf">Youth Political Forum</h2>    
                    <h4 class="w3-animate-opacity w3-animate-fading" > <strong><u> <a id="triggerLogin">Login</a></u> </strong></h4>
                    <form id="formData" name="loginform">
                        <p>User ID</p><input id="uId" name="userId" required type="text" class="form-control input-lg w3-animate-right" placeholder="User ID"><br>
                        <p>Password</p><input id="pass" name="password" required type="password" class="text-danger form-control input-lg w3-animate-opacity w3-animate-left" placeholder="Password"><br>
                        <input type="submit" id="login" class="button" value="Login">
                        <h3>New to us> <a id="signUp" class="link">Sign up</a> here</h3>
                    </form>
                </div>
            </div>

        </div>


        <footer>
            <div class="row">
                <div class="w3-bottom w3-padding-24 w3-center myFooter">
                    <p>copyright Youth Political Forum@2018 </p>
                    <p>Design and Developed by Pravinkumar Department of computer applications, Sastra.</p>
                </div>
            </div>
        </footer>


        <div id="Register" ng-controller="registration">
            <div class="MyBlurBackground"> <img src="/resources/Images/blackbg.jpg" alt="banner" /> </div>
            <div id="RegistrationContent" class=" col-md-offset-6 col-md-6 contentOnBackground">
                <span class="w3-display-topright myExit" onclick="this.parentElement.parentElement.style.display = 'none'"><i class="glyphicon glyphicon-remove"></i></span>
                <form id="RegistrationForm">
                    <h1>Just a step ahead</h1>
                    <input type="text" ng-model="name" name="name" required="required" placeholder="Enter name" class="form-control MyText"/>
                    <div>
                        <input type="radio" name="gender" value="male" required />Male
                        <input type="radio" name="gender" value="female" required/>Female
                        <input type="radio" name="gender" value="transgender" required />Others
                    </div>
                    <input type="text" ng-model="aadhaar" name="aadhaar" required="required" placeholder="Enter aadhar" class="form-control MyText"/>
                    <input type="text" ng-model="mobile" name="mobile" required="required" placeholder="Enter mob" class="form-control MyText"/>
                    <input type="email" ng-model="email" class="form-control MyText" name="emailId" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" required="required"/>
                    <input type="button" ng-click="submit()" id="ButtonRegister" value="Register" class="button is-primary"/>
                </form>
            </div>
        </div>

    </body>

</html>
