<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DROP FUNCTION</title>
</head>
<body>
<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="DF 	" />
		<table>

			<tr>
				<td>DROP FUNCTION  <input type="Text" name="dff"
					value="<Function_Name>" ></td>
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
				String dff = request.getAttribute("dpp1").toString();

					out.write("DROP FUNCTION  " + dff  +";");
			%>
		</f:catch>
</body>
</html>