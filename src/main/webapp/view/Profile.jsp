<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>User Profile</title>
<link rel="stylesheet" href="./CSS/magnifier.css" >
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

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
  width:100%;}

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
  width: 100%;
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
</style>
<script type="text/javascript">
$(document).ready(function () {
    $('#linkIncrease').click(function () {
        modifyFontSize('increase');
    });

    $('#linkDecrease').click(function () {
        modifyFontSize('decrease');
    });

    $('#linkReset').click(function () {
        modifyFontSize('reset');
    })

    function modifyFontSize(flag) {
        var divElement = $('#divContent');
        var currentFontSize = parseInt(divElement.css('font-size'));

        if (flag == 'increase')
            currentFontSize += 3;
        else if (flag == 'decrease')
            currentFontSize -= 3;
        else
            currentFontSize = 16;

        divElement.css('font-size', currentFontSize);
    }
});

</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bo divClass" id="divContent"  >
<%@include file="Head.jsp" %>
<div class="container"> <i class="material-icons" id="linkIncrease">&#xe8ff;</i>
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
			 	<div class="col-6 ">
					<div id="basic" class="tabcontent">
					  <div class="row pad">
						    <div class="col">
						      <label>First name</label>
						      <label class="form-control"><s:property value="#session.fname"/></label>
						    </div>
						
						    <div class="col">
						      <label >Last name</label>
						      <label class="form-control"><s:property value="#session.lname"/></label>
						    </div>
						      </div>
						      <div class="row pad">
							    <div class="col">
							      <label>Email</label>
							      <label class="form-control" style="max-width: 500px;"><s:property value="#session.email"/></label>
							      </div>
							      </div>
							      <div class="row pad">
						    <div class="col">
						      <label>Date Of Birth</label>
						      <label class="form-control"><s:property value="#session.dob"/></label>
						    </div>
						      </div>
						      <div class="row pad">
						    <div class="col">
						      <label>Phone</label>
						      <label class="form-control"><s:property value="#session.phone"/></label>
						    </div>
						      </div>
						      <div class="row pad">
						    <div class="col">
						      <label>City</label>
						      <label class="form-control"><s:property value="#session.city"/></label>
						    </div>
						
						    <div class="col">
						      <label >Country</label>
						      <label class="form-control"><s:property value="#session.country"/></label>
						    </div>
						      </div>
							</div>
	
			<div id="intro" class="tabcontent">
			<div class="row pad">
							    <div class="col">
							      <label>Company</label>
							      <label class="form-control" ><s:property value="#session.company"/></label>
							      </div>
							      <div class="col">
							      <label>Job Title</label>
							      <label class="form-control" ><s:property value="#session.job_title"/></label>
							      </div>
							      </div>
		
			  <div class="row pad">
							    <div class="col">
							      <label>About Me</label>
							      <label class="form-control" style="height: 100px;"><s:property value="#session.about_me"/></label>
							      </div>
							      </div>
			</div>
			<div id="quali" class="tabcontent">
			   <div class="row pad">
						    <div class="col">
							      <label>Qualification</label>
							      <label class="form-control"><s:property value="#session.qualification"/></label>
						  </div>
						    </div>
				  <div class="row pad">
						    <div class="col">
							      <label>Year Of Study</label>
							      <label class="form-control"><s:property value="#session.year_of_study"/></label>
						  </div>
				   </div>
				   <div class="row pad">
						  <div class="col">
						       <label>University</label>
						       <label class="form-control"><s:property value="#session.university"/></label>
						 </div>
				   </div>
			</div>
			
			<div id="exp" class="tabcontent">
			  <div class="row pad">
						    <div class="col">
						      <label>Job Title</label>
						      <label class="form-control"><s:property value="#session.job_des"/></label>
						    </div>
						    </div>
				  <div class="row pad">
						    <div class="col">
							      <label>Years of Experience</label>
							      <label class="form-control"><s:property value="#session.years_of_experience"/></label>
						  </div>
				   </div>
				   <div class="row pad">
						  <div class="col">
						       <label>Company</label>
						       <label class="form-control"><s:property value="#session.company_name"/></label>
						 </div>
				   </div>
			</div>			
		</div>
		<div class="col">
			<a href="update"><button class="buttons" >Update</button></a>
		
		</div>
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