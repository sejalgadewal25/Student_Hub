<%@page errorPage="error.jsp" %>

<%@include file="db.jsp" %>

<%
	String Roll_No=request.getParameter("rollno");
	String qr="delete from student_detail where Roll_No=?";
	PreparedStatement ps=conn.prepareStatement(qr);
	ps.setString(1,Roll_No);
	
	int i=ps.executeUpdate();
	if(i>0){
		out.println("<script>window.alert('Student Id Deleted Successfully')</script>");
		response.sendRedirect("Show.jsp");
		
	}
	else{
		out.println("Student Id Not Deleted");
	}
	conn.close();
%>