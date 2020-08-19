<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INSERT</title>
</head>
<body>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="UPDATE" />
		<table>

			<tr>
				<td>UPDATE &nbsp;  <input type="Text" name="update"
					value="<Table_Name>" ></td>
			</tr>	

				<tr>
					<td>SET &nbsp;<input type="Text" name="set"
					value="<coloumn_name>" >
				
					</td>
			</tr>

             <tr>
				<td>WHERE &nbsp; <input type="Text" name="where"
					value="<values>" ></td>  
			</tr>
			<tr> 
				<td><input type="submit" value="Generate"></td><br>	</br>
			</tr>
			</form>

			</br>
			<br>
		</table>
		<f:catch>
			<br>
			<br>

			<%
				String update = request.getAttribute("UPDATE").toString();
			    String set = request.getAttribute("SET").toString();
			    String where = request.getAttribute("WHERE").toString();

					out.write("    UPDATE   " + update + "   SET   " +set+"   WHERE   " + where+";");
			%>
		</f:catch>

</body>
</html>