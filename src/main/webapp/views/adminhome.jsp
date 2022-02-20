<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Admin Dashboard</title>
<style>
	.footer-dark {
  padding:50px 0;
  color:#f0f9ff;
  background-color:#282d32;
}

.footer-dark h3 {
  margin-top:0;
  margin-bottom:12px;
  font-weight:bold;
  font-size:16px;
}

.footer-dark ul {
  padding:0;
  list-style:none;
  line-height:1.6;
  font-size:14px;
  margin-bottom:0;
}

.footer-dark ul a {
  color:inherit;
  text-decoration:none;
  opacity:0.6;
}

.footer-dark ul a:hover {
  opacity:0.8;
}

@media (max-width:767px) {
  .footer-dark .item:not(.social) {
    text-align:center;
    padding-bottom:20px;
  }
}

.footer-dark .item.text {
  margin-bottom:36px;
}

@media (max-width:767px) {
  .footer-dark .item.text {
    margin-bottom:0;
  }
}

.footer-dark .item.text p {
  opacity:0.6;
  margin-bottom:0;
}

.footer-dark .item.social {
  text-align:center;
}

@media (max-width:991px) {
  .footer-dark .item.social {
    text-align:center;
    margin-top:20px;
  }
}

.footer-dark .item.social > a {
  font-size:20px;
  width:36px;
  height:36px;
  line-height:36px;
  display:inline-block;
  text-align:center;
  border-radius:50%;
  box-shadow:0 0 0 1px rgba(255,255,255,0.4);
  margin:0 8px;
  color:#fff;
  opacity:0.75;
}

.footer-dark .item.social > a:hover {
  opacity:0.9;
}

.footer-dark .copyright {
  text-align:center;
  padding-top:24px;
  opacity:0.3;
  font-size:13px;
  margin-bottom:0;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
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
<li><a class="active" href="/adminhome">Home</a></li>
      <li><a href="/addstudent">Add Student</a></li>
      <li><a href="/addrecruiter">Add Recruiter</a></li>
      <li><a href="/getstudents">Student List</a></li>
      <li><a href="/getrecruiters">Recruiter list</a></li>
      <li><a href="/adminschedules">Schedules</a></li>
      <li><a href="views/Materials.html">Materials</a></li>
      <li> <a href="/logout">Log out</a> </li>
</ul>
</nav>
<br><br><br>
<div class="row">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;




<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
  <h5>Total Number of Students</h5>
  <div class="card-body">
    <div class="d-inline-block">
      <h2 class="text-white">${regcount}</h2>
      <p class="text-white mb-0">2023 Batch</p>
  </div>
    <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
  </div>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="card text-white bg-success mb-3" style="max-width: 18rem;">
  <h5>Number of Jobs Applied</h5>
  <div class="card-body">
    <div class="d-inline-block">
      <h2 class="text-white">${studjobcount}</h2>
      <p class="text-white mb-0">2023 batch</p>
  </div>
    <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
    
  </div>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
  
  <h5>Total Number of Recruiters</h5>
  <div class="card-body">
    <div class="d-inline-block">
      <h2 class="text-white">${reccount}</h2>
      <p class="text-white mb-0">2023 batch</p>
  </div>
    <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
   
  </div>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="card text-white bg-warning mb-3" style="max-width: 18rem;">
  <h5>Recruiters Feedback</h5>
  <div class="card-body">
    <div class="d-inline-block">
      <h2 class="text-white">${overall}%</h2>
      <p class="text-white mb-0">2023 batch</p>
  </div>
    <span class="float-right display-5 opacity-5"><i class="fa fa-heart"></i></span>
   
  </div>
</div>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

<br>
<br>
<br>
<div class="row">
  &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
  <div class="col-lg-3 col-md-6">
  <div class="card card-widget">
      <div class="card-body">
          <h5 class="text-muted">Recruiter Feedback Overview </h5>
          <h2 class="mt-4">${size}</h2>
          <span>feedbacks till now</span>
          <div class="mt-4">
              <h4>${skval}</h4>
              <h6>Student Knowledge <span class="pull-right">${skval}%</span></h6>
              <div class="progress mb-3" style="height: 7px">
                  <div class="progress-bar bg-primary" style="width: 60%;" role="progressbar"><span class="sr-only">${skval}% Order</span>
                  </div>
              </div>
          </div>
          <div class="mt-4">
              <h4>${cpval}</h4>
              <h6 class="m-t-10 text-muted">Coding capacity<span class="pull-right">${cpval}%</span></h6>
              <div class="progress mb-3" style="height: 7px">
                  <div class="progress-bar bg-success" style="width: 50%;" role="progressbar"><span class="sr-only">${cpval}% Order</span>
                  </div>
              </div>
          </div>
          <div class="mt-4">
              <h4>${apval}</h4>
              <h6 class="m-t-10 text-muted">Aptitude<span class="pull-right">${apval}%</span></h6>
              <div class="progress mb-3" style="height: 7px">
                  <div class="progress-bar bg-warning" style="width: 20%;" role="progressbar"><span class="sr-only">${apval}% Order</span>
                  </div>
              </div>
          </div>
      </div>
  </div>
  
</div>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;


<div id="chartContainer" style="height: 400px; width: 500px;">
      
</div>
</div>
<script type="text/javascript">
    window.onload = function () {
      var chart = new CanvasJS.Chart("chartContainer",
      {
        title:{
          text: "Total Students vs placed students"
        },
        data: [
        {
         type: "doughnut",
         dataPoints: [
         {  y: 53.37, indexLabel: "Total Students" },
         {  y: 35.0, indexLabel: "Placed Students" },
       
         ]
       }
       ]
     });
      chart.render();
    }
    </script>
    <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script></head>


</body>

</html>