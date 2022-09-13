
<html>
<head>
<style>
	h1{
	margin-left:500px;
	color:white;
	}
</style>
</head>
<body background="Images\wrong (2).jpg">

<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	if(id.equals("admin")&&pwd.equals("12345"))
	{
		response.sendRedirect("adminhome.html");	
	}
	else
	{
		out.println("<h1>invalid id or password</h1>");
		out.println("<script>window.alert('Please Enter Correct Id and Password')</script>");
	}

%>
</body>

</html>
