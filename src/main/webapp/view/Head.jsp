<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<style type="text/css">
a{
color: white;
text-decoration: none;
}
a :hover{
text-decoration: underline;
}
.pad{
padding: 20px;
}
.butt  {
	background-color:#C2C2C2;
	width: 110px;
	padding:9px;
	border: none;
}
#google_translate_element{
	padding: 5px;
}

</style>
</head>
<body>
<nav class="navbar navbar-expand-lg" style="background-color: rgba(0,0,0,0.4); padding:0px;">
  <img alt="no image" src="./images/logo.jpg" class="navbar-brand" height="90px" width="110px" >      
  <button class="navbar-toggler"  style="color:black; background-color:white;" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span style="font-size:20px; padding:10px;">&#9776;</span>
  </button>
           
  
  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
 	<li class="nav-item pad">
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
      <li class="nav-item pad">
        <a class="nav-link" href="viewall" style="color: white;">Profile</a>
      </li>
      <li class="nav-item pad">
        <a class="nav-link" href="seaact" style="color: white;">Search</a>
      </li>
       </ul>
       <div class="form-inline">
       <span class="nav-text">
       <form action="logout" style="padding-right: 10px;">
       <s:submit type="button" class="butt" value="LOG OUT">
       </s:submit>
      </form> 
   </span>
   </div>
  </div>
</nav>
</body>
</html>