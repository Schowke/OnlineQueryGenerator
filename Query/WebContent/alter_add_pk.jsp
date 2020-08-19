<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALTER_ADD_PRIMARYKEY</title>
<style >

form{

 border: 2px solid #ffff80;

 width: 80%;

 margin-top: 20px;

 margin-left: 150px;

 margin-right: 400px;

 background-color: red;

 

}
input[type=text]{

 

 background-color: #808080;

 border: 3px solid #004040

 

}

</style>   
</head>
<body>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="ADDPK" />
		<table>

			<tr>
				<td>ALTER TABLE  <input type="Text" name="aluk"
					value="<Table_Name>" ></td>
			</tr>	

				<tr>
					<td>ADD CONSTRAINT<input type="Text" name="addconstraint"
					value="<constraint_name>" >
				
					</td>
			</tr>
			
			<tr>
					<td>PRIMARY KEY<input type="Text" name="pk"
					value="<column_name>" >
				
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
			    String addconstraint = request.getAttribute("ADC").toString();
			    String pk = request.getAttribute("PK").toString();

					out.write("ALTER TABLE  " + aluk  + " ADD CONSTRAINT " +addconstraint+" PRIMARY KEY ( "+pk+"  );");
			%>
		</f:catch>

</body>
</html>