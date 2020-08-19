<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rename DataBase</title>
<style>
form {
	border: 2px solid #072040;
	width: 70%;
	margin-top: 20px;
	margin-left: 150px;
	margin-right: 400px;
	background-color: orange;
}

h2 {
	color: white;
	background-color: blue;
	align: center;
	margin-left: 400px;
	margin-right: 495px;
}

/* Full -width inputs*/
input[type=text], input[type=password] {
	width: 80%;
	padding: 10px 10px;
	margin: 4px 0;
	border-color: #000080;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	align: left;
}

.center {
	margin: auto;
	width: 50;
	border: 3px solid green;
	padding: 10px;
}

input[type=text], input[type=password]:focus {
	background-color: #808080;
	border: 3px solid #004040
}

tr {
	border-stley: none;
	text-align: left;
}

table {
	border-style: none;
	width: 50%;
}

body {
	background-color: #8080ff;
}

button:hover {
	background-color: #8080ff;
	opacity: 0.8;
}

.t {
	background-color: white;
	display: block;
	width: 100% height:5%;
}

span.psw {
	float: right;
	padding-top: 16px;
}

label {
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

input {
	width: 250px;
	border: 1px solid #666;
	border-radius: 5px;
	padding: 4px;
	font-size: 16px;
}
</style>
</head>
<body style="background-color: #d9dba2;">
	<br>
	<br>
	<br>
	<br>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="RENAME" />
		<table>

			<tr>
				<td><label>Rename DataBase:</label></td>
			
				<td><label>Old Database:</label></td>

				<td><input type="Text" name="olddatabase"
					placeholder="Enter olddbname here"></td>
				</b>
				<br>
			</tr>

			<td><h4>TO</h4></td>
			<tr>
				<td><label>New Database:</label></td>
				<br>
				<td><input type="Text" name="newdatabase"
					placeholder="Enter Newdbname here"></td>
				</b>
				<br>
			</tr>
			<tr>
				<td><br> <td><label></label></td>


			</tr>
			</form>

		</table>
	<f:catch>
			</br> <br>
	
	<textarea class="t" rows="4" cols="102" disabled>		
	

				<%
					String oldname = request.getAttribute("ODB").toString();
						String newname = request.getAttribute("NDB").toString();

						out.println("RENAME  DATABASE   " + oldname + " TO  " + newname + ";");
				%>
			</f:catch>
</textarea>

</body>
</html>