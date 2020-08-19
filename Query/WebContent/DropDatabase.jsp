<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Drop DataBase</title>
</head>
<body>

	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="DROPDB" />
		<table>

			<tr>
				<b>Drop DataBase:</b>
				<br>
			
				<td><input type="Text" name="dropdatabase"
					placeholder="Enter dbname here"></td>
				</b>
				<br>
			</tr>

			<tr>
			<td>
				<button>
					<input type="submit" value="Generate">
				</button>
				</td>
			</tr>
	</form>

	</table>
	</br>
	<br>
	<c:redirect url="/DropDatabase.jsp">
		<f:catch>
			
			
				<%
					String dropdb = request.getAttribute("DDB").toString();

							out.println("DROP  DATABASE   " + dropdb + ";");
				%>
		</f:catch>
	</c:redirect>
</body>
</html>