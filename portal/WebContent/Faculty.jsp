<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration for Faculty</title>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", Palatino Linotype;}
body, html {
  height: 100%;
  color: #e84c30;
  line-height: 1.8;

}
input[type=submit] {
width: 10%;
background-color: #4CAF50;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
border-radius: 4px;
cursor: pointer;
background-color: #4CAF50;
}

input[type=submit]:hover {
background-color: #45a049;
}
.ex{
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  color:#0f0005;background-color:#d6cccb;
opacity: 0.8;
font-size:20px;
 border: 2px solid red;
  border-radius: 5px;
  font-family:Georgia;
  
 
  
   
}

/* First image (Logo. Full height) */
body {
 
  min-height: 100%;
  background-color:#2d2423;
   background-image: url(https://images.unsplash.com/photo-1462536943532-57a629f6cc60?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80);
   background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
  
}


.w3-win8-lime
{color:#f9f6ef;background-color:#436a6d;
opacity: 0.7;
font-size:20px;
  }

/* Second image (Portfolio) */

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) {
  .ex, body {
    background-attachment: scroll;
    min-height: 400px;
  }



</style>
<script>
	function formval()
	{
		var x = document.getElementById("exp").value;
		var str = document.getElementById("tn").value;
		if(x < 3)
			{
				alert("Faculty rating <3 and not eligible for registration");
				return false;
			}
		return true;
	}
	
	
</script>
</head>

<body>

		<div class="w3-panel w3-win8-lime">
   <center><img src="8da771e8-98c2-482f-925d-8d1c244b0a49.png" alt="HTML5 Icon" style="width:600px;height:200px;"></center> 
    
   <center><h1><p>Dear Faculty,</p>
		<p>Kindly Register Yourself</p></h1> 
   </center> </div>​
		
	<div class="ex">
		<form action="FacultyServlet" method="post" onSubmit="return formval();">
		<center>
			<table style="width: 50%">
				<tr>
					<td>Enter the Teacher Name:</td>
					<td><input type="text" name="teacher_name" placeholder="Enter the Teacher name" id="tn" required /></td>
				</tr>
				<tr>
					<td>Enter the Highest Qualification:</td>
					<td>
					<select name= "qln">
					<option value="BTECH">BTECH</option>
					<option value="MTECH">MTECH</option>
					<option value="BCA">BCA</option>
					<option value="MCA">MCA</option>
					<option value="MSC">MSC</option>
					<option value="PHD">PHD</option>
					</select></td>
				</tr>
				 <tr>
					<td>Enter Email:</td>
				     <td><input type="email" name="email" placeholder="Enter Email" required/></td>
			    </tr>
				
				<tr>
					<td>Enter Contact number:</td>
					<td><input type="text" name="contact_no" placeholder="Enter Contact number" required/></td>
				</tr>
				<tr>
					<td>Enter Adderss:</td>
					<td><input type="text" name="address" placeholder="Enter Adderss" required/></td>
				</tr>
				<tr>
					<td>Enter Experience in years:</td>
					<td><input type="text" name="experience" placeholder="Enter Experience" id = "exp" required/></td>
				</tr>
				
			</table>
			
			<center><input type="submit" value="submit" /></center></center>
			
		</form>
		</div>
			
		</body>
</html>