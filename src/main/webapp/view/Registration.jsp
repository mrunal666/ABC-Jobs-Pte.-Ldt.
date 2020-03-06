<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<title>Registration</title>
<style type="text/css">
 .back {
background-image: url("./images/register.jpg");
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

.now{
	border-bottom-color: #348E8E;
	border-top-color: transparent;
	border-left-color: transparent;
	border-right-color: transparent;
	max-width: 400px;
	height:40px;
	padding : 25px;
	text-align: center;
	background: transparent;
	color: black;
	font-size: 18px;
	margin-bottom: 30px;
}
.sub {
	padding:7px;
	margin: 8px 8px 8px 68px;
	background-color: #10A0CF;
	border: 0cm;
	font-size: 20px;
	border-radius: 5px;
	color: white;  
	width: 110px;
}  

.headlist{
	background-color: rgba(0,0,0,0.4);
	height:90px;
	width:100%;
	position: relative;
	}
.imgs {
	height: 90px;
	float: left;
	width: 110px;
	opacity:10;
	position: relative;
	margin: 0;
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
	font-size: 18px;
	font-weight: bold; 
}
.container{
	padding: 50px;
margin-top: 30px;
background-color:#e5e5e5;
max-width: 350px;
}
</style>
</head>
<body class="container-fluid" >
<div class="back">
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
					<s:submit class="butt" value="LOGIN"></s:submit>
					</form>
					</span>
			</div>
			</div>
		</nav>


<div class="container border border-secondary">
<h1 style=" font-family:Century Gothic; font-size: 48px; padding-bottom:25px; font-weight: bold; text-align: center;">REGISTER HERE! </h1>
<table><s:form action="register" >
<tr><s:textfield name="user.fname" placeholder="First Name"   class="now"></s:textfield></tr>

<tr> <s:textfield name="user.lname" placeholder="Last Name"  class="now"></s:textfield>

<s:textfield name="user.email" placeholder="Email"  class="now"></s:textfield>
<s:textfield name="user.uname" placeholder="Username"  class="now"></s:textfield>
<s:password name="pass" placeholder="Password" class="now"></s:password>
<s:password name="user.password" placeholder="Re-Enter Password"  class="now"></s:password>
<s:submit value="REGISTER" class="sub"></s:submit>
</s:form></table></div>
</div>
</body>
</html>