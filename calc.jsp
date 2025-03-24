<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Calculator</title>
	
	<script>
		
		function clearTextFileds() {
			document.getElementById("fno").value = "";	
			document.getElementById("sno").value = "";	
			document.getElementById("result").textContent = "";	
		}
		
	</script>
	
</head>
<body>
	<%
		String res = "";
	
		String fno = request.getParameter("fno");
		String sno = request.getParameter("sno");
		
		String reqType = request.getParameter("req-type"); //button name
		if(reqType == null){ //request #1: logic
			fno = "";
			sno = "";
			
		}else { //request #2 onwards logic
			
			int a = Integer.parseInt(fno);
			int b = Integer.parseInt(sno);

			switch(reqType.toUpperCase()) {
			
				case "ADD" : {
					int c = a + b;
					res = "The <strong>addition</strong> result is: <ins>"+c+"</ins>";
					
					break;
				}
				
				case "SUB" : {
					int c = a - b;
					res = "The <strong>substraction</strong> result is: <ins>"+c+"</ins>";
					
					break;
				}
				
				case "MUL" : {
					int c = a * b;
					res = "The <strong>multiplication</strong> result is: <ins>"+c+"</ins>";
					
					break;
				}
				
				case "DIV" : {
					int c = a / b;
					res = "The <strong>division</strong> result is: <ins>"+c+"</ins>";
					
					break;
				}
				default :{
					res = "<span style='color:red'>Unsupported Operation</span><strong>"+reqType+"</strong>";
				}
			}//switch close
		}
		
	%>

	<%-- response generation logic for every request --%>
	
	<fieldset style="width:30%; margin: auto">
		<legend >Calculator</legend>
		<form action="calc.jsp" method="post">
			<table>
				<tr>
					<th>Enter FNO</th>
					<td><input type="number" id="fno" name="fno" value="<%=fno%>" required="required"></td>
				</tr>
				
				<tr>
					<th>Enter SNO</th>
					<td><input type="number" id="sno" name="sno" value="<%=sno%>" required="required"></td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" name="req-type" value="Add">
						<input type="submit" name="req-type" value="Sub">
						<input type="submit" name="req-type" value="Mul">
						<input type="submit" name="req-type" value="Div">
						<input type="button" name="req-type" value="Clear" onclick="clearTextFileds()">
					</td>
				</tr>
				
			</table>
		
			<h3 id="result" style="color:Green"><%= res %></h3>
		
		</form>
	
	</fieldset>
</body>
</html>