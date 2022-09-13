<%@include file="db.jsp"%>
<%@page errorPage="error.jsp" %>
<style>
	table{
		border:5px solid black;
		font-size:20px;
	}
</style>
<body bgcolor="Orange">
</body>
<h1 align="center" style="color :black;">STUDENT DETAILS</h1>
<table align="center" border="5px" cellspacing="0px" >
  <tr>
    <th>ROLL_NO</th>
    <th>NAME</th>
    <th>EMAIL ID</th>
    <th>MOBILE_NO</th>
    <th>BRANCH</th>
    <th>SEMESTER</th>
    <th>YEAR</th>
    <th>ADDRESS</th>
    
  </tr>
  
<%
	String qr="select * from student_detail";
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next()){
		do{
			String Roll_No= rs.getString("Roll_No");
			String Name= rs.getString("Name");
			String Email= rs.getString("Email");
			String Mobile_No= rs.getString("Mobile_No");
			String Branch= rs.getString("Branch");
			String Semester= rs.getString("Semester");
			String Year= rs.getString("year");
			String Address= rs.getString("Address");
%>
		
		<tr>
			<td><%=Roll_No %></td>
			<td><%=Name %></td>
			<td><%=Email %></td>
			<td><%=Mobile_No %></td>
			<td><%=Branch %></td>
			<td><%=Semester %></td>
			<td><%=Year %></td>
			<td><%=Address %></td>
			<td><a href="DeleteStudent.jsp?rollno=<%= Roll_No %>">Delete</a></td>
			<td><a href="UpdateStudent1.jsp?rollno=<%= Roll_No %>&name=<%= Name%>&email=<%= Email%>&mob_no=<%= Mobile_No%>&branch=<%= Branch%>&sem=<%= Semester%>&year=<%= Year%>&area=<%= Address%>">Update</a></td>
		</tr>
		
<%
		}while(rs.next());
	}
	else{
		out.println("No Data Found");
	}
	conn.close();
%>

</table>