<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generate Db</title>
<style>

form{

 border: 2px solid #072040;

 width: 70%;

 margin-top: 20px;

 margin-left: 150px;

 margin-right: 400px;

 background-color: orange;

 

}


 

h2{

 color: white;

 background-color: blue;

 align: center;

 margin-left: 400px;

 margin-right: 495px;

}


 

/* Full -width inputs*/


 

input[type=text], input[type=password]{

 

 width: 80%;

 padding: 10px 10px;

 margin: 4px 0;

 border-color: #000080;

 display: inline-block;

 border: 1px solid #ccc;

 box-sizing: border-box;

 align: left;

}


 

.center{

 margin: auto;

 width: 50;

 border: 3px solid green;

 padding: 10px;

}


 

input[type=text], input[type=submit]:focus{

 

 background-color: #808080;

 border: 3px solid #004040

 

}


tr{

 border-stley: none;

 text-align: left;

}


 

table{

 border-style:none;

 width: 50%;

}





 


button:hover{
 background-color: #8080ff;

 opacity: 0.8;

}

 

.t{
background-color:  #CDCDCD;
 display: block;
 width: 100% height:5%;
 text-color:black;
}
span.psw{

 float: right;

 padding-top: 16px;

}


 



 



 

label{

 font-size: 20px;

 font-weight: bold;

 width: 70px;

 display: block;

 color: #004000;

 text-align: right;

 margin-right: 10px;

 margin-top: 15px;

 margin-bottom: 15px;

}


 

input{

 width: 250px;

 border: 1px solid #666;

 border-radius: 5px;

 padding: 4px;

 font-size: 16px;

}
.w3-button {width:150px;
background-color:  #336699;
a:white;
}

</style>
</head>
<body style=" background-color:  #A9A9A9;" >
<br><br>
<br><br>
 <button  class="w3-button w3-red" ><a href="index.html">HOME</a></button>
 <p>BACK TO PREVIOUS PAGE</p>

	 
	
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="LOGIN" />
		<table>
				
			<tr>
				<td><label>Create DataBase:</label></td>
				<br>
				<td><input type="Text" name="user" value="<field names>"
					class="s" placeholder="Enter dbname here"></td>
				</b>
				<br>

			</tr>

			<tr><td><label></label></td>
				<td><input type="submit" value="Generate"></td>
			</tr>
			</form>

			</br>
			<br>





		</table>
		
				
		<f:catch>
			<br>
			<br>
	<textarea class = "t" rows="4" cols="102" disabled>
			<%
				String name = request.getAttribute("CP").toString();
					out.write("CREATE DATABASE  " + name + ";");
			%>
		</f:catch>
</textarea>		
</body>
</html>