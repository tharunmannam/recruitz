<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
    <title>Update Recruiter</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <style>


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
        
        
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}

fieldset, img {border:0}

ol, ul, li {list-style:none}

:focus {outline:none}

body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
}

p {
  font-size: 12px;
  width: 150px;
  display: inline-block;
  margin-left: 18px;
}
h1 {
  font-size: 32px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 20px;
  margin-bottom: 5px;
}

html{
  background-color: #ffffff;
}

.testbox {
  margin: 10px auto;
  width: 380px; 
  height: 464px; 
  -webkit-border-radius: 12px/8px; 
  -moz-border-radius: 12px/8px; 
  border-radius: 12px/8px; 
  background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 3px #cbc9c9;
}

input[type=radio] {
  visibility: hidden;
}

form{
  margin: 0 30px;
}

label.radio {
	cursor: pointer;
  text-indent: 35px;
  overflow: visible;
  display: inline-block;
  position: relative;
  margin-bottom: 15px;
}

label.radio:before {
  background: #3a57af;
  content:'';
  position: absolute;
  top:2px;
  left: 0;
  width: 20px;
  height: 20px;
  border-radius: 100%;
}

label.radio:after {
	opacity: 0;
	content: '';
	position: absolute;
	width: 0.1em;
	height: 0.50em;
	background: transparent;
	top: 7.5px;
	left: 4.5px;
	border: 5px solid #ffffff;
	border-top: none;
	border-right: none;

	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

input[type=radio]:checked + label:after {
	opacity: 1;
}

hr{
  color: #a9a9a9;
  opacity: 0.3;
}

input[type=number],input[type=email],input[type=text],input[type=password]{
  width: 250px; 
  height: 39px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: -5px;
  margin-top: 5px; 
  padding-left: 10px;
}

input[type=password]{
  margin-bottom: 25px;
}

#icon {
  display: inline-block;
  width: 40px;
  background-color: black;
  padding: 8px 0px 8px 15px;
  margin-left: 15px;
  -webkit-border-radius: 4px 0px 0px 4px; 
  -moz-border-radius: 4px 0px 0px 4px; 
  border-radius: 4px 0px 0px 4px;
  color: white;
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 0px #cbc9c9;
}

.gender {
  margin-left: 30px;
  margin-bottom: 30px;
}

.accounttype{
  margin-left: 8px;
  margin-top: 20px;
}
button{
  color: black;
}

a.button {
  font-size: 14px;
  font-weight: 600;
  color: white;
  padding: 6px 25px 0px 20px;
  margin: 10px 8px 20px 0px;
  display: inline-block;
  float: center;
  text-decoration: none;
  width: 100px; height: 27px; 
  -webkit-border-radius: 5px; 
  -moz-border-radius: 5px; 
  border-radius: 5px; 
  background-color: #4164ca; 
  -webkit-box-shadow: 0 3px rgba(58,87,175,.75); 
  -moz-box-shadow: 0 3px rgba(58,87,175,.75); 
  box-shadow: 0 3px rgba(58,87,175,.75);
  transition: all 0.1s linear 0s; 
  top: 0px;
  position: center;
}

a.button:hover {
  top: 3px;
  background-color:#2e458b;
  -webkit-box-shadow: none; 
  -moz-box-shadow: none; 
  box-shadow: none;
  
}
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
      <li><a href="#">Home</a></li>
      <li><a class="active" href="/addstudent">Add Student</a></li>
      <li><a href="/addrecruiter">Add Recruiter</a></li>
      <li><a href="/getstudents">Student List</a></li>
      <li><a href="#">Recruiter list</a></li>
      <li><a href="#">Schedules</a></li>
      <li><a href="#">Materials</a></li>
      <li> <a href="/logout">Log out</a> </li>
      </ul>
      </nav>
        <br><br>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<br>
<br>
<div class="testbox">
  <h1>Update Recruiter</h1>
 <br>
 <br>
 <c:forEach var="r" items="${recruiter}">
  <form:form method="post" action="/updaterecdata" modelAttribute="rec">
	  <label id="icon" for="name"><i class="icon-user"></i></label>
	  <form:input type="text" path="comName" name="text" id="text" placeholder="Company Name" value="${r.comName}" required="required"/>
	  <br><br>
	  <label id="icon" for="name"><i class="icon-envelope"></i></label>
	  <form:input type="text" path="recName" name="text" id="text" placeholder="Recruiter Name" value="${r.recName}" required="required"/>
	  <br><br>
	  <label id="icon" for="name"><i class="icon-envelope"></i></label>
	  <form:input type="email" path="recEmail" name="email" id="email" placeholder="Recruiter Email" value="${r.recEmail}" required="required"/>
	  <br><br>
	  <label id="icon" for="name"><i class="icon-shield"></i></label>
	  <form:input type="password" path="password" name="name" id="name" placeholder="Password" value="${r.password}" required="required"/>
	   <br>
	   <br>
	   <center><button type="submit" class="btn btn-primary">Update</button></center>
  </form:form>
   </c:forEach>
</div>
    </body>
</html>