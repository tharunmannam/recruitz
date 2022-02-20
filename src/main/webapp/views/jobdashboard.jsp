<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<title>Apply Job</title>
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
   
    background:#f8f8f8
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
                <li><a class="active" href="/studdashboard">Dashboard</a></li>
<li><a href="/jobprofile">Job Profile</a></li>
<li><a href="views/StudMaterials.html">Materials</a></li>
<li><a href="/studentschedules">Schedules</a></li>
<li><a href="/studprofile">My Profile</a></li>
<li> <a href="/logout">Log out</a> </li>
            </ul>
            </nav>
            <br><br>
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
<div class="row flex-lg-nowrap">
  <div class="col-12 col-lg-auto mb-3" style="width: 200px;">
    <div class="card p-3">
      <div class="e-navlist e-navlist--active-bg">
        <ul class="nav">
          <li class="nav-item"><a class="nav-link px-2 active" href="#"><i class="fa fa-fw fa-bar-chart mr-1"></i><span>Overview</span></a></li>
          <li class="nav-item"><a class="nav-link px-2" href="#" target="__blank"><i class="fa fa-fw fa-th mr-1"></i><span>CRUD</span></a></li>
          <li class="nav-item"><a class="nav-link px-2" href="#" target="__blank"><i class="fa fa-fw fa-cog mr-1"></i><span>Settings</span></a></li>
        </ul>
      </div>
    </div>
  </div>
<c:forEach var="j" items="${job}">
  <div class="col">
    <div class="row">
      <div class="col mb-3">
        <div class="card">
          <div class="card-body">
            <div class="e-profile">
              <div class="row">
                <div class="col-12 col-sm-auto mb-3">
                  <div class="mx-auto" style="width: 140px;">
                    <div class="d-flex justify-content-center align-items-center rounded" style="height: 140px; background-color: rgb(233, 236, 239);">
                      <img src="data:image/jpg;base64,${j.comLogo}" width="140px" height="140px"/>
                    </div>
                  </div>
                </div>
                <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                  <div class="text-center text-sm-left mb-2 mb-sm-0">
                    <h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">${j.companyName}</h4>
                    <div class="mt-2">
                        <h6 style="margin-right: 100;">${j.loc}</h6>
                    </div>
                  </div>
                  
                </div>
              </div>
             
              <div class="tab-content pt-3">
                <div class="tab-pane active">
                  <form class="form" novalidate="">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <h4>Job Role : <a>${j.jobRole}</a> </h4>
                                
                            </div>
                          </div>
                          
                        </div>
                        <div class="row">
                          <div class="col">
                           
                          </div>
                        </div>
                        <div class="row">
                          <div class="col mb-3">
                            <div class="form-group">
                                <br>
                                <h4>Job Description : </h4>
                                <div style=" width: 1000px;
                                border: 1px solid black;
                                padding: 15px;
                                margin: 2px;">

								${j.jobDesc}


                                </div>
                                <br>
                                <!-- <textarea class="form-control" disabled="" rows="5" placeholder=""></textarea> -->
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 col-sm-6 mb-3">
                        <div class="mb-2">
                            <h4>Location : <a> ${j.loc} </a></h4></div>
                        <div class="row">
                          <div class="col">
                           
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                              <br>
                            <!-- <div class="form-group"> -->
                                <div class="mb-2">
                                    <h4>CTC : <a> ${j.ctc} </a></h4></div>
                            <!-- </div> -->
                          </div>
                        </div>
                        
                      </div>
                      <div class="row">
                        <div class="col">
                          <div class="form-group">
                              <h4>Skills required : ${j.skills}  </h4>
                        </div>
                      </div>
                    </div>
                    <br><br>
                    <div class="flow" style=" width: 300px;
                    border: 2px solid black;
                    padding: 10px;
                    margin-left: 260px;text-align: center;">
                    <h4>  Registration End date : </h4> 
                    <h5> ${j.regDeadline}  </h5>
                    </div>
                    <i class="fa fa-arrow-down fa-3x" style="margin-left: 370px;"  aria-hidden="true"></i>

                  <div class="flow" style=" width: 300px;
                  border: 2px solid black;
                  padding: 15px;
                  margin-left: 260px;text-align: center;">
                  <h4>  Drive Start date : </h4> 
                  <h5> ${j.driveStart} </h5>
                  </div>
                    <div class="row">
                        <div class="col">
                          <div class="form-group">
                            <i class="fa fa-arrow-down fa-3x" style="margin-left: 370px;"  aria-hidden="true"></i>
                            <div class="flow" style=" width: 300px;
                  border: 2px solid black;
                  padding: 15px;
                  margin-left: 260px;text-align: center;">
                  <h4>  Drive End date : </h4> 
                  <h5> ${j.driveEnd} </h5>
                  </div>
                  <i class="fa fa-arrow-down fa-3x" style="margin-left: 370px;"  aria-hidden="true"></i>
                  <div class="flow" style=" width: 300px;
                  border: 2px solid black;
                  padding: 15px;
                  margin-left: 260px;text-align: center;">
                  <h4>  Get Placed ! </h4> 
                  </div>

                            <br><br><br>
                            <button class="btn btn-primary" style="margin-left:340px;" type="submit"> <a href="/applystudjob/${j.jobId}/${email}" style="color:white;">Apply Now</a></button>

                        </div>
                      </div>
                    </div>
                    

                    
                    
                    </div>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      

  </div>
</div>
</c:forEach>
</div>
 
    </body>
</html>