<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<title>Thank You</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./CSS/magnifier.css" >
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="./Jscripts/magnifier.js"></script>
<style type="text/css">
 body {
background-image: url("./images/register.jpg");
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.container{
width:700px;
height: 200px;
background-color: orange;
margin-top: 100px;
box-shadow: 10px;
opacity: 0.4;
text-align: center;
}

h1{
color: white;
font-size: 60px ;
padding-top: 60px;
font-family: Lucida, sans-serif;

}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="divClass" id="divContent" >
<nav class="navbar navbar-expand-lg" style="background-color: rgba(0,0,0,0.4); padding:0px;">
  <img alt="no image" src="./images/logo.jpg" class="navbar-brand" height="90px" width="110px" >
</nav>
<div class="container">
 <i class="material-icons" id="linkIncrease">&#xe8ff;</i>
    <i class="material-icons" id="linkDecrease" >&#xe900;</i>
    <i class="material-icons" id="linkReset" >&#xe86a;</i>
<h1>Dear <s:property value="user.fname"/> <s:property value="user.lname"/> </h1>
</div>
<div style="text-align: center;">
<h1 style="font-size: 60px;">THANK YOU FOR REGISTERTING!!</h1>
<s:a href="Sign_In"><button class="btn btn-primary">Get Started</button></s:a>
</div>
</body>
</html>