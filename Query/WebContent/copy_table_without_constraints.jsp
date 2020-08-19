<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>copy_table_without_constraints</title>
</head>
<body>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="COPYWOC" />
		<table>

			<tr>
				<td>CREATE TABLE   <input type="Text" name="createtable"
					value="<Enter tablename here>" ></td>
			</tr>	

				<tr>
					<td>(SELECT * FROM<input type="Text" name="table"
					value="<Enter tablename here>" >
					WHERE 0);
					</td>
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
				String name = request.getAttribute("CPY").toString();
			    String Fname = request.getAttribute("FPY").toString();

					out.write("CREATE TABLE  " + name + "(SELECT * FROM"+Fname+");");
			%>
		</f:catch>
</body>
</html>