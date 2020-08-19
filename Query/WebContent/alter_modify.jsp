<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALTER MODIFY</title>
</head>
<body>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="alter_modify" />
		<table>

			<tr>
				<td>ALTER TABLE   <input type="Text" name="altermodify"
					value="<Table_Name>" ></td>
			</tr>	

				<tr>
					<td>ALTER COLUMN<input type="Text" name="add"
					value="<modify_coloumn_name>" >
				
					</td>
			</tr>

             <tr>
				<td>  <input type="Text" name="coloumn_type"
					value="<new_coloumn_type>" ></td>  
			</tr>
			
			<tr>
				<td>  <input type="Text" name="coloumn_nullable"
					value="<new_coloumn_nullable>" ></td>  
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
				String altermodify = request.getAttribute("altermodify").toString();
			    String add1 = request.getAttribute("add1").toString();
			    String coloumn_type1 = request.getAttribute("coloumn_type1").toString();
			    String coloumn_nullable1 = request.getAttribute(" coloumn_nullable1").toString();

					out.println("ALTER TABLE  " + altermodify );
					out.println("ALTER COLUMN  " + add1 + "    "+coloumn_type1 + "    "+ coloumn_nullable1 + ";" );

			%>
		</f:catch>

</body>
</html>