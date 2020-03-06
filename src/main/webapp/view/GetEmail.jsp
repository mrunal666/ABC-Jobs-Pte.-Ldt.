<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Email Confirmation</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./CSS/magnifier.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<style type="text/css">
 .hello {
	background-image: url("./images/login.jpg");
	background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: 100% 100%;
  	height:600px;
}
.logbutton{
float: right;
padding-top: 25px;
}
.butt  {
	background-color:#C2C2C2;
	width: 110px;
	padding:9px;
	border: none;
	font-weight: bold;
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
.container{
padding-left: 400px;
}
.now{
	border-radius:30px;
	border-color: #95F204;
	width: 310px;
	height:40px;
	padding : 25px;
	text-align: center;
	background-color:#e5e5e5;
	color: black;
	font-size: 18px;
	margin-bottom: 30px;
} 
h1{
color: white;
font-size: 50px;
font-family: "Century Gothic";

}
a:hover {
	text-decoration: none;
}
a{
color: white;
}
</style>
</head>
<body class="container-fluid" >
<div class="hello">
<nav class="navbar navbar-expand-lg" style="background-color: rgba(0,0,0,0.4); padding:0px;">
			<img alt="no image" src="./images/logo.jpg" class="navbar-brand" height="90px" width="110px" style="padding-left: 5px;">
			<button class="navbar-toggler"  style="color:black; background-color:white;" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span style="font-size:20px; padding:10px;">&#9776;</span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item" style="padding:5px;">
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
      
				 
				  </ul>
				  <div class="form-inline">
				<span class="nav-text" style="padding:5px;" >
					<form action="Sign_In">
					<input type="submit" class="butt" value="Login">
					</form>
					</span>
			</div>
			</div>
		</nav>
		<div class="row" style="margin-top: 30px;"> <div class="col-sm-4"></div>
		<div class="col-sm-4" >
<h1>Forgot Your Password?</h1>
<form action="emailref"  >
<s:textfield name="user.email" placeholder="Enter Your Registered Email" class="now"></s:textfield>
<s:submit type="submit" class="sub" valu="next"></s:submit>
</form> 
</div>
<div class="col-sm-4"></div>
</div>
</div>
</body>
</html>



