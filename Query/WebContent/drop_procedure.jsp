<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="DP" />
		<table>

			<tr>
				<td>DROP PROCEDURE  <input type="Text" name="dpp1"
					value="<procedure_Name>" ></td>
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
				String dpp1 = request.getAttribute("dpp1").toString();

					out.write("DROP PROCEDURE  " + dpp1  +";");
			%>
		</f:catch>
</body>
</html>