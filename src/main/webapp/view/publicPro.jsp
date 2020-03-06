<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Public Profile</title>
    <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">

.footcol{
background-color:  rgba(0,0,0,0.7);
}

.bod {
	background-color: #F5FAFA;
}
.row{
padding: 8px;
}
.form-control{
max-width: 300px;
border-color: white;
}
.imgcol {
	border-radius: 50%;
	border:   medium;
	border-color: green;
}
.container{
margin-top: 40px;
}
label {
	font-size: 20px;
	font-weight: bold;
}
#google_translate_element{
	padding: 5px;
}
</style>
<meta charset="ISO-8859-1">
<title>Public Profile</title>
</head>
<body class="bod divClass" id="divContent"  >
 <i class="material-icons" id="linkIncrease">&#xe8ff;</i>
    <i class="material-icons" id="linkDecrease" >&#xe900;</i>
    <i class="material-icons" id="linkReset" >&#xe86a;</i>
<nav class="navbar navbar-expand-lg" style="background-color: rgba(0,0,0,0.4); padding:0px;">
  <img alt="no image" src="./images/logo.jpg" class="navbar-brand" height="90px" width="110px" >
<ul class="navbar-nav">
<li class="nav-item pad">
        <a class="nav-link" href="adminhome" style="color: white;">Home</a>
      </li>
      <li>
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
      </li>
<li  style= "float:right; padding-left: 1050px;"><s:submit type="button" class="btn btn-secondary" ><a href="logout" >LOGOUT</a></s:submit>
    </ul>
</nav>
<div class="container border border-success" style=" background-color: #F7F9F9; width: 600px;">
<div class="row">
		  <img alt="no image" src="./images/avatar.jpg" width="200px" height="200px" class="imgcol border border-secondary">
<div class="col" style="margin-left: 50px;">
    <table>
    <tr>
      <label>First name</label>
      <label class="form-control">
      <s:property value="user.fname"/>
      </label>
</tr>
<tr>
      <label>Last name</label>
      
      <label class="form-control"> <s:property value="user.lname"/> </label>
</tr>
<tr>
      <label>Job Title</label>
      <label class="form-control"><s:property value="user.job_title"/></label>
      </tr>
      </table>
    </div>
</div>
	<div class="row">
    <div class="col">
      <label>Company</label>
      <label class="form-control"><s:property value="user.company"/></label>
    </div>

    <div class="col">
      <label >Phone</label>
      <label class="form-control"><s:property value="user.phone"/></label>
    </div>
      </div>
<div class="row">
    <div class="col">
      <label >Date Of Birth </label>
      <label class="form-control"><s:property value="user.dob"/></label>
    </div>
    <div class="col">
      <label>Email</label>
      <label class="form-control"><s:property value="user.email"/></label>
      </div>
      </div>
      <div class="row">
    <div class="col">
      <label>City</label>
      <label class="form-control"><s:property value="user.city"/></label>
    </div>

    <div class="col">
      <label >Country</label>
      <label class="form-control"><s:property value="user.country"/></label>
    </div>
    </div>
    <div class="row">
    <div class="col">
      <label>About Me</label>
      <label class="form-control" style="max-width: 500px; height:100px;"><s:property value="user.about_me"/></label>
      </div>
      </div>

<div class="row">
<h3 class="border-bottom">Education</h3>
</div>
<div class="row">
    <div class="col">
      <label >Degree</label>
      <label class="form-control"><s:property value="user.qualification"/></label>
    </div>
    <div class="col">
      <label>Year Of Study</label>
      <label class="form-control"><s:property value="user.year_of_study"/></label>
      </div>
      </div>
      <div class="row">
          <div class="col">
      <label>University</label>
      <label class="form-control" style="height:60px;"><s:property value="user.university"/></label>
      </div>
      </div>
      <div class="row">
<h3 class="border-bottom">Experience</h3>
</div>
<div class="row">
    <div class="col">
      <label >Job Title</label>
      <label class="form-control"><s:property value="user.job_des"/></label>
    </div>
    <div class="col">
      <label>Years Of Experience</label>
      <label class="form-control"><s:property value="user.years_of_experience"/></label>
      </div>
      </div>
      <div class="row">
          <div class="col">
      <label>Company</label>
      <label class="form-control"><s:property value="user.company_name"/></label>
      </div>
      </div>
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