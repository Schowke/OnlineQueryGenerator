<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALTER_DROP_UNIQUE</title>
</head>
<body>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="DROPUK" />
		<table>

			<tr>
				<td>ALTER TABLE  <input type="Text" name="aluk"
					value="<Table_Name>" ></td>
			</tr>	

				<tr>
					<td>DROP CONSTRAINT<input type="Text" name="dropconstraint"
					value="<constraint_name>" >
				
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
				String aluk = request.getAttribute("ALUK").toString();
			    String dropconstraint = request.getAttribute("DDC").toString();

					out.write("ALTER TABLE  " + aluk  + " DROP CONSTRAINT " +dropconstraint+";");
			%>
		</f:catch>

</body>
</html>