<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="./CSS/magnifier.css" >
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="./Jscripts/magnifier.js"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
body {
	background-image: url("./images/list.png");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<title>List of Users</title>
</head>
<body class="divClass" id="divContent" >
<%@ include file="Head.jsp" %>
 <i class="material-icons" id="linkIncrease">&#xe8ff;</i>
    <i class="material-icons" id="linkDecrease" >&#xe900;</i>
    <i class="material-icons" id="linkReset" >&#xe86a;</i>
<s:iterator value="list">
<fieldset style="padding: 40px;" >
<table>  
<tr><th>FIRST NAME</th>
<td>
<s:property value="fname"/>
</td></tr>  
<tr>
<th>LAST NAME</th>
<td><s:property value="lname"/></td></tr>
<tr>
<th>EMAIL</th>
<td><s:property value="email"/></td></tr>
<tr>
<th>CITY</th>
<td><s:property value="city"/></td></tr>
<tr>
<th>COUNTRY</th>
<td><s:property value="country"/></td></tr>
<tr>
<th>JOB TITLE</th>
<td><s:property value="job_title"/></td></tr> 
<tr>
<th>COMPANY</th>
<td><s:property value="company"/></td></tr>
<tr>
<td><a href="public?email=<s:property value="email"/>" style="background-color: #F5FAFA;">View Public Profile</a></td></tr>

</table>  <br><br>

</fieldset>
</s:iterator>
<%@ include file="footer.jsp" %>
</body>
</html>