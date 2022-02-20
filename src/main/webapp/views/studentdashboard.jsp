<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en" dir="ltr">
<title>Student Dashboard</title>
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>


@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

nav{
display: flex;
height: 80px;
width: 100%;
background: #1b1b1b;
align-items: center;
justify-content: space-between;
padding: 0 50px 0 100px;
flex-wrap: wrap;
}
nav .logo{
color: #fff;
font-size: 30px;
font-weight: 500;
top:0;
}
nav ul{
display: flex;
flex-wrap: wrap;
list-style: none;
}
nav ul li{
margin: 10 3px;
}
nav ul li a{
color: #f2f2f2;
text-decoration: none;
font-size: 15px;
font-weight: 300;
padding: 8px 15px;
border-radius: 5px;
letter-spacing: 1px;
transition: all 0.3s ease;
}
nav ul li a.active,
nav ul li a:hover{
color: #111;
background: #fff;
}
nav .menu-btn i{
color: #fff;
font-size: 22px;
cursor: pointer;
display: none;
}
input[type="checkbox"]{
display: none;
}
@media (max-width: 1000px){
nav{
padding: 0 40px 0 50px;
}
}
@media (max-width: 920px) {
nav .menu-btn i{
display: block;
}
#click:checked ~ .menu-btn i:before{
content: "\f00d";
}
nav ul{
position: fixed;
top: 80px;
left: -100%;
background: #111;
height: 100vh;
width: 100%;
text-align: left;
display: block;
transition: all 0.3s ease;
}
#click:checked ~ ul{
left: 0;
}
nav ul li{
width: 100%;
margin: 40px 0;
}
nav ul li a{
width: 100%;
margin-left: -100%;
display: block;
font-size: 20px;
transition: 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
#click:checked ~ ul li a{
margin-left: 0px;
}
nav ul li a.active,
nav ul li a:hover{
background: none;
color: cyan;
}
}
.content{
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%, -50%);
text-align: center;
z-index: -1;
width: 100%;
padding: 0 30px;
color: #1b1b1b;
}
.content div{
font-size: 40px;
font-weight: 700;
}




        
            
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Arvo&display=swap');
            
            body {
  background: #e2e1e0;
  text-align: center;

}
.card {
  background: #fff;
  border-radius: 2px;
  display: inline-block;
  height: 240px;
  width: 600px;
  margin: 5rem;
  position: relative;
}

.card-1 {
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
  text-align: top;
  float:center;
  border-radius:15px;
}

.card-1 h2{
    text-align: left;
    margin:20;
    font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}
.card-1 img{
    float:right;
    padding:-50px;
    margin-right: 30px;
    margin-top:20px;
}
.card-1 i{
    margin-bottom: -20px;
    margin-right: -15px;
}
.card-1 .row1 i{
    float:left;
    margin:20px;
}
.card-1 .row2 i{
    float:left;
    margin-right:400px;
    margin-left:20px;
}

.card-1 .but{
    float:right;
    margin-right: 20px;
}
.card-1:hover {
  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
}

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<nav>
	<div class="logo">
		Recruitz
</div>
<br>

<input type="checkbox" id="click">
<label for="click" class="menu-btn">
<i class="fas fa-bars"></i>
</label>
<ul>
<li><a class="active" href="/studdashboard">Dashboard</a></li>
<li><a href="/jobprofile">Job Profile</a></li>
<li><a href="views/StudMaterials.html">Materials</a></li>
<li><a href="/studentschedules">Schedules</a></li>
<li><a href="/studprofile">My Profile</a></li>
<li> <a href="/logout">Log out</a> </li>
</ul>
</nav>
<br><br>
<centre><h1>JOBS</h1></centre>
<c:set var="email" value="${email}"/>
	<c:forEach var="job" items="${jobs}">
		<c:set var="jobid" value="${job.jobId}"/>
		<c:set var="applied" value="0"/>
		<c:forEach var="ss" items="${studstatus}">	
				<c:set var="studemail" value="${ss.studEmail}"/>
    			<c:set var="ssjobid" value="${ss.jid}"/>
    			 <c:if test="${(jobid == ssjobid) && (studemail == email) }">
			    	<c:set var="applied" value="1"/>
				</c:if>
				
		    </c:forEach>
		<div class="card card-1">
                <img src="data:image/jpg;base64,${job.comLogo}" width="100" height="60">
               <h2 style="font-family: 'Arvo', serif;">${job.companyName}</h2>
               <hr>
               <div class="row1">
               <i class="fa fa-map-marker" aria-hidden="true" >&nbsp;<a style="color:red;">Location :</a> ${job.loc}</i>
               <i class="fa fa-address-card-o" aria-hidden="true">&nbsp;<a style="color:red;"> Role :</a> ${job.jobRole}</i>
            </div><br><br><br>
             <div class="row2">
                <i class="fa fa-calendar" aria-hidden="true">&nbsp;<a style="color:red;"> Deadline :</a> ${job.regDeadline}</i>
    
            </div>
            <i class="fa fa-money" aria-hidden="true">&nbsp;<a style="color:red;"> CTC : </a> ${job.ctc}</i>
            <div class="but">
            	<c:choose> 
			  <c:when test="${applied == 1}">
			  		<p>Applied</p>
			  </c:when>
			   <c:otherwise>
			    	<button type="button" class="btn btn-primary"> <a href="/applyjob/${job.jobId}/${email}" style="color:white;">Apply</a> </button>
			  </c:otherwise>
			</c:choose>
            	
                </div>
       </div>
     
        </c:forEach>

</body>
</html>