<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Users</title>

<style>

.footcol{
background-color:  rgba(0,0,0,0.7);
}

table, td, th {
	border: 1px solid;
	background-color: white;
}
table {width: 60%;}
th {height: 30px; text-align: center;}

body{
background-image: url("./images/view.jpg");
background-repeat: no-repeat;
background-size: cover;
}



</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="./CSS/magnifier.css" >
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="./Jscripts/magnifier.js"></script>
</head>
<body id="divContent" class="divClass">

<nav class="navbar navbar-expand-lg" style="background-color: rgba(0,0,0,0.4); padding:0px;">
  <img alt="no image" src="./images/logo.jpg" class="navbar-brand" height="90px" width="110px" >
<ul class="navbar-nav">
<li class="nav-item pad">
        <a class="nav-link" href="adminhome" style="color: white;">Home</a>
      </li>
      <li>      <div id="google_translate_element"></div>  
      
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
      </li>
<li  style= "float:right; padding-left: 1050px;"><s:submit type="button" class="btn btn-secondary" ><a href="logout" >LOGOUT</a></s:submit>
    </ul>
</nav>

 <i class="material-icons" id="linkIncrease">&#xe8ff;</i>
    <i class="material-icons" id="linkDecrease" >&#xe900;</i>
    <i class="material-icons" id="linkReset" >&#xe86a;</i>
<div style="margin-top: 40px; padding-left: 200px;">
<table style="width: 1000px;">
<thead>
<tr style="background-color: #E0E0E1;">
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>UserName</th>
<th>Password</th>
<th>Job Title</th>
<th>Company</th>
<th>Action</th>
</tr>
</thead>
<s:iterator value="list">
<tr>
<td><s:property value="fname"/></td>
<td><s:property value="lname"/></td>
<td><s:property value="email"/></td>
<td><s:property value="uname"/></td>
<td><s:property value="password"/></td>
<td><s:property value="job_title"/></td>
<td><s:property value="company"/></td>
<td><a href="adminpub?email=<s:property value="email"/>">Public Profile</a>

<a href="deleterecord?email=<s:property value="email"/>">Delete</a></td>
</tr>
</s:iterator>
</table> 
</div>


<footer class="text-white mt-4 footcol">
    <div class="container-fluid py-3">
        <div class="row">
            <div class="col-md-3">
                <img alt="no image"  src="./images/logo.jpg" height="150px" width="200px" style= " box-shadow: 10px 10px rgba(0,0,0,0.19);"> </div>
            <div class="col-md-3"></div>
            
            <div class="col-md-3" style="font-weight: bolder; font-size: 30px;">ABC JOBS Pte. Ltd.</div>
            
        </div>
        <div class="row">
            <div class="col-md-6"></div>
        </div>
    </div>
</footer>

</body>
</html>