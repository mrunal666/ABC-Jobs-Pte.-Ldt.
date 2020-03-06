<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="./CSS/magnifier.css" >
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="./Jscripts/magnifier.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Update Profile</title>
<style type="text/css">

.bo {font-family: "Lato", sans-serif;
background-image: url("./images/search.jpg");
background-repeat: no-repeat;
  background-attachment: absolute;
  background-size: 100% 100%;
}
/* Style the tab */
.tab { 
	padding:0px;
  float: left;
  background-color: #f1f1f1;
  width:100%;
}

.buttons{
width: 103px;
height: 40px;
background-color:#13BC75; 
color: white;
font-weight: bold;
border-color: #13BC75; 
}

/* Style the buttons inside the tab */
 .tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border-left-width : 7px;
  border-collapse : collapse;
  border-top: none;
  border-right: none;
  border-bottom: none;
  border-left-color: teal;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
  width:100%;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border-left: none;
  width: 500px;
  height: 100%;
}
.container{
background-color: #F7F9F9;
margin-top: 20px;
}
.row{
padding-top: 5px; 
padding-bottom: 7px;
}
.pad{
padding-top: 7px;
}
label {
	font-size: 20px;
	font-weight: bold;
}
.got{
width:600px;
}
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bo divClass" id="divContent" >
<%@include file="Head.jsp" %>
<div class="container">
 <i class="material-icons" id="linkIncrease">&#xe8ff;</i>
    <i class="material-icons" id="linkDecrease" >&#xe900;</i>
    <i class="material-icons" id="linkReset" >&#xe86a;</i>
	<div class="row">
		<div class="col-sm-4">
		<img alt="no image" src="./images/avatar.jpg" height="300px" width="100%">
			<div class="tab">
			  <button class="tablinks" onclick="openProfile(event, 'basic')" id="defaultOpen">Basic Details</button>
			  <button class="tablinks" onclick="openProfile(event, 'intro')">Introduction</button>
			  <button class="tablinks" onclick="openProfile(event, 'quali')">Qualification</button>
			  <button class="tablinks" onclick="openProfile(event, 'exp')">Experience</button>
			</div>
		</div>
		<form action="updateprofile" method = "post" class="got">
			 	<div class="col-6 ">
			 	
					<div id="basic" class="tabcontent">
					  <div class="row pad">
						    <div class="col got">
						      <label>First name</label>
						      <s:textfield class="form-control" name="user.fname" value="%{#session.fname}" style="width:200px;"></s:textfield>
						    </div>
						    <div class="col">
						      <label >Last name</label>
						      <s:textfield class="form-control" name="user.lname" value="%{#session.lname}" style="width:200px;"></s:textfield>
						    </div>
						      </div>
						       <div class="row pad">
						    <div class="col">
						      <label>Email</label>
						      <s:textfield type="text"  class="form-control" name="user.email" value="%{#session.email}" ></s:textfield>
						    </div>
						      </div>
							      <div class="row pad">
						    <div class="col">
						      <label>Date Of Birth</label>
						      <input type="date"  class="form-control" name="user.dob" value="%{#session.dob}">
						    </div>
						      </div>
						      <div class="row pad">
						    <div class="col">
						      <label>Phone</label>
						      <s:textfield class="form-control" name="user.phone" value="%{#session.phone}"></s:textfield>
						    </div>
						      </div>
						      <div class="row pad">
						    <div class="col">
						      <label>City</label>
						      <s:textfield class="form-control" name="user.city" value="%{#session.city}"></s:textfield>
						    </div>
						
						    <div class="col">
						      <label >Country</label>
						      <s:textfield class="form-control" name="user.country" value="%{#session.country}"></s:textfield>
						    </div>
						      </div>
							</div>
	
			<div id="intro" class="tabcontent">
			<div class="row pad">
						    <div class="col got">
						      <label>Company</label>
						      <s:textfield class="form-control" name="user.company" value="%{#session.company}" style="width:200px;"></s:textfield>
						    </div>
						    <div class="col">
						      <label >Job Title</label>
						      <s:textfield class="form-control" name="user.job_title" value="%{#session.job_title}" style="width:200px;"></s:textfield>
						    </div>
						      </div>
			  <div class="row pad">
							    <div class="col">
							      <label>About Me</label>
							      <s:textarea class="form-control" rows="3" cols="20" name="user.about_me" value="%{#session.about_me}"></s:textarea>
							      </div>
							      </div>
			</div>
			<div id="quali" class="tabcontent">
			   <div class="row pad">
						    <div class="col">
						      <label>Qualification</label>
						     <!--   <input type="text" class="form-control">-->
						     <s:textfield class="form-control" name="user.qualification" value="%{#session.qualification}"></s:textfield>
						    </div>
						    </div>
				  <div class="row pad">
						    <div class="col">
							      <label>Year Of Study</label>
							      <s:textfield class="form-control" name="user.year_of_study" value="%{#session.year_of_study}"></s:textfield>
						  </div>
				   </div>
				   <div class="row pad">
						  <div class="col">
						       <label>University</label>
						       <s:textfield class="form-control" name="user.university" value="%{#session.university}"></s:textfield>
						 </div>
				   </div>
			</div>
			
			<div id="exp" class="tabcontent">
			  <div class="row pad">
						    <div class="col">
						      <label>Job Title</label>
						      <s:textfield class="form-control" name="user.job_des" value="%{#session.job_des}"></s:textfield>
						    </div>
						    </div>
				  <div class="row pad">
						    <div class="col">
							      <label>Years of Experience</label>
							      <s:textfield class="form-control" name="user.years_of_experience" value="%{#session.years_of_experience}"></s:textfield>
						  </div>
				   </div>
				   <div class="row pad">
						  <div class="col">
						       <label>Company</label>
						       <s:textfield class="form-control" name="user.company_name" value="%{#session.company_name}"></s:textfield>
						 </div>
				   </div>
			</div>	
			
					
		</div>

		<div style="padding-left: 600px;">
		<input type="submit" value = "Save" class="buttons" >
			</div>			     
		 </form>
	</div>
</div>



<script>
function openProfile(evt, profileName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace("active", "");
	  }
	  document.getElementById(profileName).style.display = "block";
	  evt.currentTarget.className += " active";
	}

	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
</script>
</body>
<%@include file="footer.jsp" %>
</html>