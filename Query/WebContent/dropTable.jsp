<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DROP TABLE</title>
</head>
<body>

<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="DROPTABLE" />
		<table>

			<tr>
				<td><b>Drop Table</b> <br> <input type="Text"
					name="droptable" value= "< Enter table_name >" /></td>
				<br>
			</tr>
					<td><input type="submit" value="Generate"></td>
			</form>
	</table>			
	<f:catch>
		<br> <br>
		
				<%
					String droptb = request.getAttribute("DROPTAB").toString();

							out.write("DROP TABLE  " + droptb  +";");
				%>
					</f:catch>
					
			
			
</body>
</html>