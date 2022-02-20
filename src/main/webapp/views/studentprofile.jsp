<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
	<title>My Profile</title>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
    background: #f7f7ff;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: .25rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
}
.me-2 {
    margin-right: .5rem!important;
}
</style>
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
    <li><a  href="/studdashboard">Dashboard</a></li>
    <li><a href="/jobprofile">Job Profile</a></li>
    <li><a href="views/StudMaterials.html">Materials</a></li>
    <li><a href="/studentschedules">Schedules</a></li>
    <li><a class="active" href="/studprofile">My Profile</a></li>
    <li> <a href="/logout">Log out</a> </li>
</ul>
</nav>
    </head>
    <body>
        
        
        
        <br><br>
        
        <div class="container">
            <div class="main-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                            <c:forEach var="studper" items="${studpersonal1}">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="data:image/jpg;base64,${studper.image}" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
                                    <div class="mt-3">
                                        <h4>${studper.studFName} &nbsp;${studper.studLName}</h4>
                                        <p class="text-secondary mb-1">${studper.studId}</p>
                                        <p class="text-muted font-size-sm">KL UNIVERSITY</p>
                                        
                                    </div>
                                </div>
                              </c:forEach>
                                <hr class="my-4">
                               
                                <center>
                                <h4>Skills</h4>
                        
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>Java</h6>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>Python</h6>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>C++</h6>
                                    </li>
                                </ul>
                                </center>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                    <c:forEach var="studper" items="${studpersonal1}">
                    <form:form method="post" enctype="multipart/form-data" action="/submitstudpersonal" modelAttribute="studpersonal">
                        <div class="card">
                            <br>
                            <center><h3><i class="fa fa-address-card" aria-hidden="true"></i>&nbsp;Personal Details</h3></center>
                            <br>
                            <div class="card-body">
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Student ID</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <form:input type="number" disabled="" path="studId" class="form-control" value="${studper.studId}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">First Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <form:input type="text" path="studFName" class="form-control" value="${studper.studFName}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Last Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <form:input type="text" path="studLName" class="form-control" value="${studper.studLName}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <form:input type="text" path="studEmail" class="form-control" value="${email}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Password</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <form:input type="password" path="studPassword" class="form-control" value="${studper.studPassword}"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <form:input type="number" path="studPhone" class="form-control" value="${studper.studPhone}"/>
                                    </div>
                                </div>
                                
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <form:input type="text" path="studLocation" class="form-control" value="${studper.studLocation}"/>
                                    </div>
                                </div>
                                <!-- 
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Image</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">

                                 <form:input type="file" path="image" name="image" class="filestyle" data-classbutton="btn btn-default btn-lg" data-input="false" id="filestyle-0" tabindex="-1" style="position: fixed; left: -500px;"/>
                                <div class="bootstrap-filestyle input-group">
                                    <input type="text" class="form-control" placeholder="Choose file"/> <span class="input-group-btn" tabindex="0"> 
                                         <label for="filestyle-0" class="btn btn-default btn-lg"> 
                                            <i class="fa fa-upload" aria-hidden="true"></i>
  
                                            </label></span></div>
                                            </div></div> 
                                      -->
                                      <div class="custom-file mb-4">
                                      <label class="custom-file-label"
					for="customFile">Student Image</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="file" name="file" class="custom-file-input"
					id="customFile"/> 
	</div>
                                      
                                   
                                            <br>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="submit" class="btn btn-primary px-4" value="Save Changes">
                                    </div>
                                </div>
                                <br>
                            </div>
                        </div>
                        </form:form>
                        </c:forEach>
                        <br>
                        
                        <!-- <div class="col-lg-8"> -->
                        <c:forEach var="studedu" items="${studeducation1}">
                        <form:form method="post" enctype="multipart/form-data" action="/submitstudeducational" modelAttribute="studeducation">
                            <div class="card">
                                <br>
                                <center><h3><i class="fa fa-address-card" aria-hidden="true"></i>&nbsp;Educational Details</h3></center>
                                <br>
                                <hr>
                                <h5 style="margin: 30px;"><b>Under Graduate Details</b></h5>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">College Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="text" class="form-control" path="ugcollegename" value="${studedu.ugcollegename}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Branch</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="text" class="form-control" path="ugbranch" value="${studedu.ugbranch}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">CGPA</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="number" class="form-control" path="ugcgpa" value="${studedu.ugcgpa}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Year Passed</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="number" class="form-control" path="ugyear" value="${studedu.ugyear}"/>
                                        </div>
                                    </div>
                                    <br>
                                    <hr>

                                    <h5 style="margin: 30px;"><b>Secondary School Details</b></h5>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">College Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="text" class="form-control" path="sscollegename" value="${studedu.sscollegename}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Branch</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="text" class="form-control" path="ssbranch" value="${studedu.ssbranch}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">CGPA</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="number" class="form-control" path="sscgpa" value="${studedu.sscgpa}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Year Passed</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="number" class="form-control" path="ssyear" value="${studedu.ssyear}"/>
                                        </div>
                                    </div>
                                    <br>
                                    <hr>


                                    <h5 style="margin: 30px;"><b>Primary School Details</b></h5>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">School Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="text" class="form-control" path="psschoolname" value="${studedu.psschoolname}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Branch</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="text" class="form-control" placeholder="If not there type Other" path="psbranch" value="${studedu.psbranch}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">CGPA</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="number" class="form-control" path="pscgpa" value="${studedu.pscgpa}"/>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Year Passed</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="number" class="form-control" path="psyear" value="${studedu.psyear}"/>
                                        </div>
                                    </div>
                                    <br>
                                    <hr>
                                    <h5 style="margin: 30px;"><b>Skills And Resume</b></h5>
                                    <div class="row mb-3">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Add Skill</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <form:input type="text" class="form-control" placeholder="Add skills by placing comma(,) between" path="skills" value="${studedu.skills}"/>
                                        </div>
                                    </div>
                                
                                    <div class="custom-file mb-4">
                                      <label class="custom-file-label"
					for="customFile">Resume Upload</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="file" name="files" class="custom-file-input"
					id="customFile"/> 
	</div>
                                    
                                                <br>
                                    <div class="row">
                                        <div class="col-sm-3"></div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="submit" class="btn btn-primary px-4" value="Save Changes">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                    </div>
                    </form:form>
                     </c:forEach>
                </div>
            </div>
        </div>
    </body>
    
</html>