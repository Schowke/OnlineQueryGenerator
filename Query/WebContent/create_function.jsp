<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CREATE_FUNCTION</title>
</head>
<body>
	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="CP1" />
		<table>

			<tr>
				<td>CREATE FUNCTION  <input type="Text" name="CPP"
					value="<function_Name>" ></td>
			</tr>	

				<tr>
					<td>(&ensp;&ensp;<input type="Text" name="blank"
					value="<parameters>" >&ensp;&ensp;)
				
					</td>
			</tr>
			
			<tr>
					<td>RETURNS<input type="Text" name="return1"
					value="<column_name>"  >
			
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
				String CPP = request.getAttribute("ALUK").toString();
			    String blank = request.getAttribute("ADC").toString();
			    String return1 = request.getAttribute("PK").toString();

					out.write("CREATE FUNCTION  " + CPP  + blank  +"RETURNS " +" ( "+return1 + ")" +" <br/> AS    " +" <br/> BEGIN   "+ "<br/> END");
			%>
		</f:catch>

</body>
</html>