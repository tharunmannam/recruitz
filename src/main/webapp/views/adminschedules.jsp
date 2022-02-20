<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>


@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: 'Poppins', sans-serif;
}
body{
	background: #f9f9f9;
}
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

/*table css*/

/*@import url("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap");*/


.main-content {
	padding-top: 30px;
	padding-bottom: 100px;
}

.table {
	border-spacing: 0 15px;
	border-collapse: separate;
}
.table thead tr th,
.table thead tr td,
.table tbody tr th,
.table tbody tr td {
	vertical-align: middle;
	border: none;
}
.table thead tr th:nth-last-child(1),
.table thead tr td:nth-last-child(1),
.table tbody tr th:nth-last-child(1),
.table tbody tr td:nth-last-child(1) {
	text-align: center;
}
.table tbody tr {
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
}
.table tbody tr td {
	background: #fff;
}
.table tbody tr td:nth-child(1) {
	border-radius: 10px 0 0 5px;
}
.table tbody tr td:nth-last-child(1) {
	border-radius: 0 5px 5px 0;
}

.user-info {
	display: flex;
	align-items: center;
}
.user-info__img img {
	margin-right: 15px;
	height: 55px;
	width: 55px;
	border-radius: 45px;
	border: 3px solid #fff;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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
<li><a href="/adminhome">Home</a></li>
<li><a href="/addstudent">Add Student</a></li>
<li><a href="/addrecruiter">Add Recruiter</a></li>
<li><a href="/getstudents">Student List</a></li>
<li><a href="/getrecruiters">Recruiter list</a></li>
<li><a class="active" href="/adminschedules">Schedules</a></li>
<li><a href="views/Materials.html">Materials</a></li>
<li> <a href="/logout">Log out</a> </li>
</ul>
</nav>
<br><br>
<section class="main-content">
		<div class="container">
			<center><h1>Job Schedules</h1></center>
			<br>
			
			<table class="table">
				<thead>
					<tr>
						<th>Company</th>
						<th>Job ID</th>
						<th>Registration Deadline</th>
						<th>Drive Start</th>
						<th>Drive End</th>
						<th>Delete</th>
					</tr>
				</thead>
				<c:forEach var="job" items="${jobs}">
					<tbody>
						<tr >
							<td><h7 class="mb-0">${job.companyName}</h7></td>
							<td><h7 class="mb-0">${job.jobId}</h7></td>
							<td><h7 class="mb-0">${job.regDeadline}</h7></td>
							<td><h7 class="mb-0">${job.driveStart}</h7></td>
							<td><h7 class="mb-0">${job.driveEnd}</h7></td>
							<td><span class="btn btn-danger"><a href="/deletejob/${job.jobId}" style="color:white;">Delete Job</a></span></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
	</section>


</body>
</html>