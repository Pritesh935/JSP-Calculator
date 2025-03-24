<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	/*
		==================================================================================	
		Life Cycle States			Executing member					Tags
		==================================================================================	
			1. Verify					no member
			2. Translating			 	no member
			3. Compiling			 	no member
			4. Configuring		 		no member
			
			5. Loading PIC 				SVs, SIBs						declaration tag
			6. Instantiating PIC 		NSVs, IIBs, NPC					declaration tag
			
			7. Initializing PIC obj		jspInit()						declaration tag
			8. Executing(req proess)	_jspService(HSR, HSR)			scriptlet
			9. Sending Response			_jspService(HSR, HSR)			Expression tag and HTML tags
			10. Destroying				jspDestory()					declaration tag
		==================================================================================	
	*/
	--%>
	
	<%!
		static {
			System.out.println("JSP PIC is loaded, SB is executed");
		}

		{
			System.out.println("JSP PIC is instiated, IIB and NPC is executed");
		}
	%>
	
	<%!
		public void jspInit(){
			System.out.println("JSP PIC obj is initialized, jspInit() is executed");
		}
	
		public void jspDestroy(){
			System.out.println("JSP PIC obj is destoryed, jspDestroy() is executed\n");
			
		}
	%>
	
	<%
		System.out.println("JSP PIC is executed, _jspService() is executed");
		System.out.println("request is processes, response is sent\n");

		out.println("request is processes, response is sent<BR>");
	%>
	
	<%= "request is processes, response is sent" %>
	
</body>
</html>