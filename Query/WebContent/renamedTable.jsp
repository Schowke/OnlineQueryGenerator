<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RENAME TABlE</title>
</head>
<body>

	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="renametable" />
		<table>

			<tr>
				<td><b>Rename Table</b> <br> <input type="Text"
					name="retable" value=" <old table>" /></td>
				<br>
			</tr>
			
			<tr>
				<td><b>To</b> <br> <input type="Text"
					name="renewtable" value ="<new table>" /></td>
				<br>
			</tr>

			<td><input type="submit" value="Generate"></td>
	</form>
	</table>
	<f:catch>
		<br> <br>
		
				<%
					String oldname = request.getAttribute("Reold").toString();
					String rename = request.getAttribute("Renew").toString();

							out.write("ALTER TABLE  " + oldname + "," + rename  +";");
				%>
					</f:catch>
	
	
</body>
</html>