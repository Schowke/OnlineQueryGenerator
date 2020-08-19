<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALTER DROP FOREIGN_KEY</title>
<link type="text/css" rel="stylesheet" href="css/login.css" />

</head>
<body>

	<jsp:include page="header.html" />

	<form action="Gen" name="mumbai" method="post">
		<input type="hidden" name="mumbai" value="FK" />
		<table>
		<tbody>
			<tr>
				<td><label>ALTER TABLE </label> </td> 
				<td><input type="Text" name="altertable"
					value="<Table_Name>" ></td>
			</tr>	

				<tr>
					<td><label> ADD CONSTRAINT</label></td>
					<td><input type="Text" name="add_constraint"
					value="<constraint_variable>" >
				
					</td>
			</tr>
			
			<tr>
					<td><label>FOREIGN KEY</label></td>
					<td><input type="Text" name="fk"
					value="<constraint_variable>" >
				
					</td>
			</tr>
			
			<tr>
					<td><label>REFERENCES</label></td>
					<td><input type="Text" name="reference"
					value="<constraint_variable>" >
				
					</td>
			</tr>
			
			<tr>
					<td><label></label></td>
					<td><input type="Text" name="reference1"
					value="<constraint_variable>" >
				
					</td>
			</tr>

           
			<tr> 
				<td><input type="submit" value="Generate"></td>
			</tr>
		

			</br>
			<br>
			</tbody>
		</table>
		<f:catch>
			<br>
			<br>

			<%
				String altertable = request.getAttribute("AT").toString();
			    String add_constraint = request.getAttribute("CL").toString();
			    String fk = request.getAttribute("FK").toString();
			    String REFERENCES = request.getAttribute("REF").toString();
			    String REFERENCES1  = request.getAttribute("REF1").toString();


					out.println("ALTER TABLE  " + altertable);
					out.println("ADD CONSTRAINT  " + add_constraint  );
					out.println(" FOREIGN KEY  " + " ( "+fk + " ) " );
					out.println("REFERENCES  " + REFERENCES  );
					out.println("  " + "(" + REFERENCES1 + ")"  );



			%>
		</f:catch>
</form>
</body>
</html>