<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    <%@ taglib uri="/struts-tags" prefix="s"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./CSS/magnifier.css" >
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="./Jscripts/magnifier.js"></script>
<style type="text/css">
body{
background-image: url("./images/sea.jpg");
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% ;
}
.headlist{
	background-color: rgba(0,0,0,0.4);
	height:90px;
	width:100%;
	position: relative;
	}
li{
	float: left;
}
.imgs {
	height: 90px;
	float: left;
	width: 110px;
	opacity:10;
	position: relative;
	margin: 0;
}

.row{
padding-top: 20px;
}

button:active {
	aria-pressed="true";
}

}



</style>

</head>

<body class="divClass container-fluid" id="divContent" >
<%@include file="Head.jsp" %>

 <i class="material-icons" id="linkIncrease">&#xe8ff;</i>
    <i class="material-icons" id="linkDecrease" >&#xe900;</i>
    <i class="material-icons" id="linkReset" >&#xe86a;</i>
<div class="row">
<div class="col-8">
 <form action="listusers">
<s:textfield name="search" class="form-control" size="75" style="max-width:100%;" placeholder="Search User - Type company, city, country, first name, last name" ></s:textfield>
      <div style="padding-top: 20px; padding-left: 500px;">
        <button type="submit" class="btn btn-outline-dark" data-toggle="button" aria-pressed="false" autocomplete ="off"><b>Search User</b></button>
      </div>

  </form>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>

<%@include file="footer.jsp" %>
</body>

</html>