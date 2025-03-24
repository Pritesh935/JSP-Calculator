<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="icon" href="./calc.png"/>
    <title>Online Calculator</title>
</head>
<body>

<%-- Define the form inputs --%>
<form action="calc.jsp" method="GET">
    Enter FNO: <input type="text" name="fno" value="<%= request.getParameter("fno") != null ? request.getParameter("fno") : "" %>"> <br/>
    Enter SNO: <input type="text" name="sno" value="<%= request.getParameter("sno") != null ? request.getParameter("sno") : "" %>"> <br/>
    <input type="submit" name="button" value="Add"> 
    <input type="submit" name="button" value="Sub"> 
    <input type="submit" name="button" value="Mul"> 
    <input type="submit" name="button" value="Div"> 
    <input type="reset" name="button" value="Reset"> 
</form>

<%-- Logic for handling operations --%>
<%
    String fno = request.getParameter("fno");
    String sno = request.getParameter("sno");
    String button = request.getParameter("button");
    String res = "";

    if (button != null) {
        try {
            int a = Integer.parseInt(fno);
            int b = Integer.parseInt(sno);
            
            switch(button.toUpperCase()) {
                case "ADD":
                    res = "The <strong>addition</strong> result is: <ins>" + (a + b) + "</ins>";
                    break;
                case "SUB":
                    res = "The <strong>subtraction</strong> result is: <ins>" + (a - b) + "</ins>";
                    break;
                case "MUL":
                    res = "The <strong>multiplication</strong> result is: <ins>" + (a * b) + "</ins>";
                    break;
                case "DIV":
                    if (b != 0) {
                        res = "The <strong>division</strong> result is: <ins>" + (a / b) + "</ins>";
                    } else {
                        res = "<span style='color:red'>Division by zero is not allowed.</span>";
                    }
                    break;
                default:
                    res = "<span style='color:red'>Unsupported Operation: </span><strong>" + button + "</strong>";
                    break;
            }
        } catch (NumberFormatException e) {
            res = "<span style='color:red'>Please enter valid numbers.</span>";
        }
    }
%>

<%= res %>

</body>
</html>
