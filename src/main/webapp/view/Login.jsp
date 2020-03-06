<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script type="text/javascript" src="./Jscripts/translator-login.js" ></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
.vertical{
height: 680px;
background-color: rgb(58,58,58);
padding-left: 35px;
}
.bgimg{
background-image: url("./images/login.jpg");
background-repeat: no-repeat;
  background-attachment: absolute;
  background-size: 100% 100%;
}
ul li{
list-style: none;
padding: 10px;
}
ul li a{
text-decoration: none;
}
.imgs{
box-shadow: 10px 10px rgba(0,0,0,0.19);
}


.centered {
font-size:60px;
  color:white;
  text-align:center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.now{
	border-radius:30px;
	border-color: #95F204;
	width: 300px;
	height:40px;
	padding : 25px;
	text-align: center;
	background-color:#e5e5e5;
	color: black;
	font-size: 18px;
	margin-bottom: 30px;
}
a{
color: white;
}
.sub {
    padding:7px;
	margin: 8px 90px;
	background-color: #10A0CF;
	border: 0cm;
	font-size: 20px;
	border-radius: 5px;
	color: white;  
	width: 110px; 
}
a:hover {
	text-decoration: none;
}
.dropdown-item{
	cursor: pointer;
}

</style>
<link rel="stylesheet" href="./CSS/magnifier.css" >
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="./Jscripts/magnifier.js"></script>
</head>
<body id="divContent" class="divClass" >
<div class="container-fluid"> 

  <div class="row">
    <div class="col-sm-4 vertical cols">
    <table style="align-content: center;">
   <tr><td> <form action="login">
    <img alt="No Image" src="./images/logo.jpg" height="200px" width="250px" class="imgs"></td></tr>
    <tr><td>
    <label style="color: white; font-family: Verdana, Geneva, sans-serif;">User Name</label></td></tr>
    <tr> <td> <input type="text" name="user.uname" placeholder="username" class="now"> </td></tr>
    <tr> <td>
    <label style="color: white; font-family: Verdana, Geneva, sans-serif;" >Password</label></td></tr>
    
    <tr><td><input type="password" name="user.password" placeholder="password" class="now"></td></tr>
    <tr> <td>
    <input type="submit" class="sub" value="Login">
    </form></td></tr>
   <tr> <td>	<a href="forgot">Forgot Password?</a></td></tr>
	<tr> <td><a href="Sign_Up">Not a user? Sign Up</a></td></tr>
     </table>
    </div>
    <div class="col-sm-8 bgimg" >
    <div class="centered" > <p id="wl" class="lang" >Welcome</p> To ABC Jobs Pte. Ltd. 
    </div>
          <div id="google_translate_element"></div>  
      
    <script type="text/javascript">  
        function googleTranslateElementInit() {  
            new google.translate.TranslateElement( 
                {pageLanguage: 'en'},  
                'google_translate_element' 
            );  
        }  
    </script>  
      
    <script type="text/javascript" src= "https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"> 
    </script>  
      
    </div>
  </div>
  </div>
</body>
</html>