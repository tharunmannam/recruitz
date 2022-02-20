<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <style>

html {
	 box-sizing: border-box;
}
 /**, *:before, *:after {
	 box-sizing: inherit;*/
}
 #modal {
	 position: relative;
	 /*background: linear-gradient(150deg, #e9967a, #e75480);*/
	 background: #f9f9f9;
	 height: 100vh;
	 text-align: center;
}
 svg {
	 max-width: 100%;
	 max-height: 100%;
	 fill: rgba(0, 0, 0, 0.06);
}
 .flex-container {
	 display: flex;
	 flex-direction: row-reverse;
	 flex-wrap: wrap;
	 justify-content: center;
}
 .overlay {
	 position: fixed;
	 width: 100%;
	 height: 100%;
}
 .feedback {
	 position: relative;
	 background-color: lightblue;
	 border-radius: 10px;
	 padding: 20px 20px 40px;
	 margin: 20px auto;
	 max-width: 550px;
}

.feedback h2 {
            margin-top: 1rem;
        }
 .feedback__content {
	 padding: 0 40px 20px;
}
 .feedback__form {
	 padding: 10px 0;
}
 .feedback__submit {
	 background-color: #e75480;
	 padding: 10px 40px;
	 border: 0;
	 color: #fff;
	 letter-spacing: 1px;
	 box-shadow: 0 2px 5px grey;
	 cursor: pointer;
	 transition: all 0.2s;
}
 .feedback__submit:hover {
	 background-color: #e1275f;
}
 .rating {
	 margin-bottom: 20px;
	 border: none;
}
 .rating input {
	 display: none;
}
 .rating input:checked ~ label svg {
	 fill: gold;
}
 .rating input + label:hover svg, .rating input + label:hover ~ label svg {
	 fill: gold;
}
 .rating label {
	 position: relative;
	 width: 2em;
	 height: 2em;
}
 #close {
	 border: none;
	 background: transparent;
	 outline: none;
	 position: absolute;
	 right: 10px;
	 top: 10px;
}
 

            </style>

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
    <li><a href="/addjob">Add Job</a></li>
    <li><a href="/viewjobs">View Jobs</a></li>
    <li><a href="/viewapplications">Applications</a></li>
    <li><a href="/recruiterschedules">Schedules</a></li>
    <li><a href="/recruiterprofile">My Profile</a></li>
    <li><a class="active" href="/recfeedback">Feedback</a></li>
    <li> <a href="/logout">Log out</a> </li>
    </ul>
    </nav>
    <br><br>
    
        <svg style="display: none"><symbol id="star" viewBox="0 0 1024 1024"><polygon points="512 0 627 354 999 354 698 572 813 926 512 708 211 926 326 572 25 354 397 354 512 0"/></symbol></svg>

<div id="modal">
	<div class="overlay">
		<div class="feedback container--small align--center">
			<h1 class="feedback__title"><center>Feedback Form</center></h1><hr>
			<p class="feedback__description">Thank you for reaching out about this opportunity to our college , I hope you return every year for placements.</p>
			<h4>Please rate your service experience for the following parameters</h4>
			<form:form class="feedback__form" method="post" action="/submitrecFeedback" modelAttribute="feedback">
				<fieldset class="rating rating__food">
					<legend>1. Your overall experience with us ?</legend>
					<div class="flex-container">
						<form:radiobutton   id="food-5" path="overallcount" name="rating__food" value="5"/>
						<label for="food-5"><svg><title>Five Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="food-4" path="overallcount" name="rating__food" value="4"/>
						<label for="food-4"><svg><title>Four Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="food-3" path="overallcount" name="rating__food" value="3"/>
						<label for="food-3"><svg><title>Three Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton   id="food-2" path="overallcount" name="rating__food" value="2"/>
						<label for="food-2"><svg><title>Two Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="food-1" path="overallcount" name="rating__food" value="1"/>
						<label for="food-1"><svg><title>One Star</title><use xlink:href="#star"></use></svg></label>
					</div>
				</fieldset>

				<fieldset class="rating rating__driver">
					<legend>2. Students Knowledge range according to your company</legend>
					<div class="flex-container">
						<form:radiobutton id="driver-5" path="skcount" name="rating__driver" value="5"/>
						<label for="driver-5"><svg><title>Five Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="driver-4" path="skcount" name="rating__driver" value="4"/>
						<label for="driver-4"><svg><title>Four Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="driver-3" path="skcount" name="rating__driver" value="3"/>
						<label for="driver-3"><svg><title>Three Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="driver-2" path="skcount" name="rating__driver" value="2"/>
						<label for="driver-2"><svg><title>Two Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton id="driver-1" path="skcount" name="rating__driver" value="1"/>
						<label for="driver-1"><svg><title>One Star</title><use xlink:href="#star"></use></svg></label>
					</div>
				</fieldset>

				<fieldset class="rating rating__experience">
					<legend>3. Students Coding capacity according to your company </legend>
					<div class="flex-container">
						<form:radiobutton id="experience-5" path="cpcount" name="rating__experience" value="5"/>
						<label for="experience-5"><svg><title>Five Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="experience-4" path="cpcount" name="rating__experience" value="4"/>
						<label for="experience-4"><svg><title>Four Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="experience-3" path="cpcount" name="rating__experience" value="3"/>
						<label for="experience-3"><svg><title>Three Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton id="experience-2" path="cpcount" name="rating__experience" value="2"/>
						<label for="experience-2"><svg><title>Two Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="experience-1" path="cpcount" name="rating__experience" value="1"/>
						<label for="experience-1"><svg><title>One Stars</title><use xlink:href="#star"></use></svg></label>
					</div>
				</fieldset>

				<fieldset class="rating rating__experience">
					<legend>4. Students Aptitude range according to your company </legend>
					<div class="flex-container">
						<form:radiobutton id="experience-10" path="aptitudecount" name="rating__experience1" value="5"/>
						<label for="experience-10"><svg><title>Five Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="experience-9" path="aptitudecount" name="rating__experience1" value="4"/>
						<label for="experience-9"><svg><title>Four Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton id="experience-8" path="aptitudecount" name="rating__experience1" value="3"/>
						<label for="experience-8"><svg><title>Three Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton  id="experience-7" path="aptitudecount" name="rating__experience1" value="2"/>
						<label for="experience-7"><svg><title>Two Stars</title><use xlink:href="#star"></use></svg></label>
						<form:radiobutton id="experience-6" path="aptitudecount" name="rating__experience1" value="1"/>
						<label for="experience-6"><svg><title>One Stars</title><use xlink:href="#star"></use></svg></label>
					</div>
				</fieldset>
			<button type="submit" class="feedback__submit">Submit feedback</button>
			</form:form>
			
		</div>
	</div>
</div>

    </body>
</html>