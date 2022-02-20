<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Success</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<style>
body {
	font-family: 'Varela Round', sans-serif;
}
.modal-confirm {		
	color: #636363;
	width: 325px;
	font-size: 14px;
}
.modal-confirm .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
	float:center;s
}
.modal-confirm .modal-header {
	border-bottom: none;   
	position: relative;
}
.modal-confirm h4 {
	text-align: center;
	font-size: 26px;
	margin: 30px 0 -15px;
}
.modal-confirm .form-control, .modal-confirm .btn {
	min-height: 40px;
	border-radius: 3px; 
}
.modal-confirm .close {
	position: absolute;
	top: -5px;
	right: -5px;
}	
.modal-confirm .modal-footer {
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 13px;
}	
.modal-confirm .icon-box {
	color: #fff;		
	position: absolute;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: -70px;
	width: 95px;
	height: 95px;
	border-radius: 50%;
	z-index: 9;
	background: #82ce34;
	padding: 15px;
	text-align: center;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
}
.modal-confirm .icon-box i {
	font-size: 58px;
	position: relative;
	top: 3px;
}
.modal-confirm.modal-dialog {
	margin-top: 80px;
}
.modal-confirm .btn {
	color: #fff;
	border-radius: 4px;
	background: #82ce34;
	text-decoration: none;
	transition: all 0.4s;
	line-height: normal;
	border: none;
}
.modal-confirm .btn:hover, .modal-confirm .btn:focus {
	background: #6fb32b;
	outline: none;
}




@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: 'Poppins', sans-serif;
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</style>
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
<li><a class="active" href="#">Add Job</a></li>
    <li><a href="#">View Jobs</a></li>
    <li><a href="#">Applications</a></li>
    <li><a href="#">Schedules</a></li>
    <li><a href="#">My Profile</a></li>
    <li> <a href="/logout">Log out</a> </li>
</ul>
</nav>
<br>
<br>
<br>
<div class="modal-dialog modal-content modal-confirm">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE876;</i>
				</div>				
				<h4 class="modal-title w-100">Success!</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center">Job Added Successfully!!</p>
			</div>
			<div class="modal-footer">
			<form action="/addjob">
			
				<button class="btn btn-success btn-block" style="margin-left: 10px;">OK</button>
			</form>
			</div>
		</div>

</body>
</html>