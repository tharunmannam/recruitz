<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
    <title>Recruiter Login</title>
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
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
      <li><a href="/home">Home</a></li>
<li><a href="/adminlogin">Admin</a></li>
<li><a href="/studentlogin">Student</a></li>
<li><a class="active" href="/recruiterlogin">Recruiter</a></li>
<li><a href="#">Contact Us</a></li>
<li><a href="#">About</a></li>
     
      </ul>
      </nav>
        <br><br><br>
        
            <div class="container">
              <div class="row">
                <div class="col-md-6">
                  <img src="views/Studentlogin.svg" alt="Image" class="img-fluid">
                </div>
                <div class="col-md-6 contents">
                  <div class="row justify-content-center">
                    <div class="col-md-8">
                      <div class="mb-4">
                      <h3 style="font-family:Verdana, Geneva, Tahoma, sans-serif ;">Recruiter login</h3>
                      <p class="mb-4"></p>
                    </div>
                    
                    <form:form method="post" action="/submitreclogindata" modelAttribute="rec">
                      <div class="form-group first">
                        <label for="username">Email</label>
                        <form:input type="text" path="recEmail" class="form-control" id="email"/>
        
                      </div><br>
                      <div class="form-group last mb-4">
                        <label for="password">Password</label>
                        <form:input type="password" path="password" class="form-control" id="password"/>
                      </div>
                      <input type="submit" value="Log In" class="btn btn-block btn-dark"/>
                    </form:form>
                    </div>
                  </div>
            </div>
            
        
    </body>
</html>