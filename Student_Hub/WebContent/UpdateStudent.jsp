<%@include file="db.jsp" %>

<%
	String Roll_No=request.getParameter("rollno");
	String Name=request.getParameter("name");
String Email=request.getParameter("email");
String Mobile_No=request.getParameter("mobno");
String Branch=request.getParameter("branch");
String Semester=request.getParameter("sem");
String Year=request.getParameter("year");
String Address=request.getParameter("area");
 
String qr="update student_detail set Name=?,Email=?,Mobile_No=?,Branch=?,Semester=?,Year=?,Address=? where Roll_No=?";

PreparedStatement ps=conn.prepareStatement(qr);
//ps.setString(1, Roll_No);
ps.setString(1, Name);
ps.setString(2, Email);
ps.setString(3,Mobile_No);
ps.setString(4, Branch);
ps.setString(5, Semester);
ps.setString(6, Year);
ps.setString(7, Address);
ps.setString(8, Roll_No);

int i=ps.executeUpdate();
if(i>=0)
{
out.println("<script>window.alert('Student Details Updated Successfully')</script>");
response.sendRedirect("Show.jsp");
}
else
{
out.println("Student Details Not Updated");
}
conn.close();
%>
