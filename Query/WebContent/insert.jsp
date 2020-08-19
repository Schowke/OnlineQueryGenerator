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
		<input type="hidden" name="mumbai" value="INSERT" />
		<table>

			<tr>
				<td>INSERT INTO   <input type="Text" name="insert"
					value="<Table_Name>" ></td>
			</tr>	

				<tr>
					<td>(&nbsp;&nbsp;<input type="Text" name="coloumname"
					value="<coloumn_name>" >&nbsp;&nbsp;)
				
					</td>
			</tr>

             <tr>
				<td>VALUES &nbsp;&nbsp;(  <input type="Text" name="values"
					value="<values>" >&nbsp;&nbsp; );</td>  
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
				String insert = request.getAttribute("insert").toString();
			    String coloumname = request.getAttribute("column").toString();
			    String values = request.getAttribute("values").toString();

					out.write("INSERT INTO  " + insert + " ( " +coloumname+" ) "+"VALUES ("+values+");");
			%>
		</f:catch>

</body>
</html>