<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CREATE DATABASE</title>
</head>
<body  style="background-color:grey;">
<tr>
	<form action="Gen" name ="mumbai" method="post">
		<b>Create DataBase:</b><br> 
		<td><input type="Text" name="user" placeholder="Enter dbname here"></td>
		</b><br>
</tr>
<tr>    
        <td> <button>
			<input type="submit" value="Generate">
		</button></td>
</tr>
	</form>

</table>

<br> <br>
<textarea id="sql_query_output" style="width:100%;height:200px">

<f:catch>
<%String name = request.getAttribute("CP").toString();
	out.println("CREATE DATABASE  "+name +";" );
%> 
</f:catch>
</textarea>
</body>
</html>