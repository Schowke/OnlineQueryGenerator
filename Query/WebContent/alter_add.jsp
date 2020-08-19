<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALTER ADD</title>
</head>
<body>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="alter_add" />
		<table>

			<tr>
				<td>ALTER TABLE   <input type="Text" name="altertable"
					value="<Table_Name>" ></td>
			</tr>	

				<tr>
					<td>ADD<input type="Text" name="add"
					value="<coloumn_name>" >
				
					</td>
			</tr>

             <tr>
				<td>  <input type="Text" name="coloumn_type"
					value="<coloumn_type>" ></td>  
			</tr>
			
			<tr>
				<td>  <input type="Text" name="coloumn_nullable"
					value="<coloumn_nullable>" ></td>  
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
				String altertable = request.getAttribute("altertable").toString();
			    String add = request.getAttribute("add").toString();
			    String coloumn_type = request.getAttribute("coloumn_type").toString();
			    String coloumn_nullable = request.getAttribute("coloumn_nullable").toString();

					out.println("ALTER TABLE  " + altertable );
					out.println("\n  ADD  " + add + "    "+coloumn_type + "    "+ coloumn_nullable + ";" );

			%>
		</f:catch>

</body>
</html>