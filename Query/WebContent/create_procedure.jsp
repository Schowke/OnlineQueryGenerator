<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALTER_ADD_PRIMARYKEY</title>
</head>
<body>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="CP" />
		<table>

			<tr>
				<td>DROP PROCEDURE  <input type="Text" name="dpp"
					value="<procedure_Name>" ></td>
			</tr>	

				<tr>
					<td>CREATE PROCEDURE<input type="Text" name="procedure_Constraints"
					value="<procedure_Constraint>" >
				
					</td>
			</tr>
			
			<tr>
					<td>(&ensp;&ensp;<input type="Text" name="pk"
					value="<column_name>" ) >
			&ensp;&ensp;	)
					</td>
			</tr>
			<td>AS</td><br><br>
			
			<td>BEGIN</td><br><br>
			
			<td>END</td><br><br>

             
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
				String dpp = request.getAttribute("ALUK").toString();
			    String procedure_Constraints = request.getAttribute("ADC").toString();
			    String pk = request.getAttribute("PK").toString();

					out.write("DROP PROCEDURE  " + dpp  + " DROP PROCEDURE " +procedure_Constraints+" ( "+pk + ")" +" <br/> AS    " +" <br/> BEGIN   "+ "<br/> END");
			%>
		</f:catch>

</body>
</html>