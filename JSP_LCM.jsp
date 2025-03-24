
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
			<%!
				static int a = m1();
				static int m1(){
					System.out.println("\nPIC is loaded");
					System.out.println("  SV is executed");
					return 10;
				}
				static {
					System.out.println("  SB is excuted");
				}

				int x = m2();
				int m2(){
					System.out.println("\nPIC is instantiated");
					System.out.println("  NSV is executed");
					return 20;
				}
				
				{
					System.out.println("  NSB is excuted");
				}
				
				//public JSP_LCM_jsp(){ }
				
				//@Override //it is allowed not error at runtime
				public void jspInit() {
					System.out.println("\njspInit() is executed");
					System.out.println("  PIC object is initiatlized");
				}
				
				//@Override //it is allowed not error at runtime
				public void jspDestroy(){
					System.out.println("\njspDestroy() is executed");
					System.out.println("  PIC object is destoryed");
				}
				/*
				
				public void _jspInit() { }
				
				public void _jspDestroy() { }

				public void _jspService(HttpServletRequest hreq, HttpServletResponse hresp){	}
				
				*/
				
			/*	
				public void init(ServletConfig config) {
					System.out.println("init(config) is executed");
				}

				public void service(ServletRequest req, ServletResponse resp) {
					System.out.println("public service(req, resp) is executed");
				}
	
				public void service(HttpServletRequest hreq, HttpServletResponse hresp) {
					System.out.println("protected service(hreq, hresp) is executed");
				}

				public void destroy(){
					System.out.println("destroy() is executed");
				}
				*/
				
				public void doGet(HttpServletRequest hreq, HttpServletResponse hresp) {
					System.out.println("protected doGet(hreq, hresp) is executed");
				}
		
				public void doPost(HttpServletRequest hreq, HttpServletResponse hresp) {
					System.out.println("protected doPost(hreq, hresp) is executed");
				}
		
				
			%>
			
			<%
				System.out.println("\n_jspService() is executed"); 
				System.out.println("  request is processed"); 
				
			%>
			<%= "check server console" %>
	</body>
</html>