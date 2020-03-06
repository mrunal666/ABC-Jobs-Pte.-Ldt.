<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./CSS/magnifier.css" >
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="./Jscripts/magnifier.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
body{
background-image: url("./images/admin2.jpg");
background-repeat: no-repeat;
background-size: cover;
}
h1{
background-color: white;
}

.sub{
background-color:#C2C2C2;
	width: 110px;
	padding:9px;
	border: none;
	border: 2px;
	border-color: black;
}

</style>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body id="divContent" class="divClass">
 <i class="material-icons" id="linkIncrease">&#xe8ff;</i>
    <i class="material-icons" id="linkDecrease" >&#xe900;</i>
    <i class="material-icons" id="linkReset" >&#xe86a;</i>
<h1 class="alert alert-secondary" style="text-align: center; font-size: 50px;"> Welcome Admin
</h1>
<s:form action="adminview" style="padding-left:600px; width:80px; ">
  <s:submit value="User's Data" cssClass="sub btn btn-primary"></s:submit>
</s:form>

</body>
</html>