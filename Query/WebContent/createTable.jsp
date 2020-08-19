<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CREATE TABLE</title>
</head>
<body style="background-color: grey;">
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="createtb" />
		<table>
			<tr>

				<td><b> Table Name:</b> <br> <input type="Text"
					name="tbuser" placeholder="Enter Tablename here"></td>
				</b>
				<br>
			</tr>
			<tr>

				<td><b>Coloumn name:</b> <br> <input type="Text"
					name="fieldnameuser" placeholder="Enter Tablename here"></td>
				</b>
				<br>
			</tr>
			<tr>

				<td><b>Datatype:</b> <br> <input type="Text"
					name="Datatypeuser" placeholder="Enter Datatype here"></td>
				</b>
				<br>
			</tr>
			<tr>

				<td><b> is Null:</b> <br> <input type="checkbox"
					name="tbuser" placeholder="Enter Tablename here"></td>
				</b>
				<br>
			</tr>

			<tr>
				<td>
				
						<input type="submit" value="Generate">
				
					<input type="submit" value="add_field">
				</td>
			<tr>
			
			<tr>
				<td>
					
						
					
				</td>
			<tr>



				</form>
		</table>
</body>
</html>