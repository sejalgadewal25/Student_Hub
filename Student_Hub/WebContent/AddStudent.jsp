<%@page import="java.lang.*" %>

<%@include file="db.jsp" %>
<%@page errorPage="error.jsp" %>

<%
	String Roll_No=request.getParameter("rollno");
	String Name=request.getParameter("name");
String Email=request.getParameter("email");
String Mobile_No=request.getParameter("mobno");
String Branch=request.getParameter("branch");
String Semester=request.getParameter("sem");
String Year=request.getParameter("year");
String Address=request.getParameter("area");

String qr="insert into student_detail values(?,?,?,?,?,?,?,?)";
PreparedStatement ps=conn.prepareStatement(qr);
ps.setString(1, Roll_No);
ps.setString(2, Name);
ps.setString(3, Email);
ps.setString(4,Mobile_No);
ps.setString(5, Branch);
ps.setString(6, Semester);
ps.setString(7, Year);
ps.setString(8, Address);

int i=ps.executeUpdate();
if(i>=0)
{
out.println("<script>window.alert('Student Details Added Successfully')</script>");
}
else
{
out.println("Student Details Not Added");
}
conn.close();
%>
<style>
	h1{
	
	color:white;
	}
</style>
<body background="Images\apple (2).jpg">
	<h1 align="center">Student Details Added </h1>
</body>