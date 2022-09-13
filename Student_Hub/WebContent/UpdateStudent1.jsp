<%
	String Roll_No=request.getParameter("rollno");
	String Name=request.getParameter("name");
	String Email=request.getParameter("email");
	String Mobile_No=request.getParameter("mobno");
	String Branch=request.getParameter("branch");
	String Semester=request.getParameter("sem");
	String Year=request.getParameter("year");
	String Address=request.getParameter("area");
%>
<body bgcolor="yellow">
<form action="UpdateStudent.jsp">
	<h3>Student Roll No.<%= Roll_No %> <input type="hidden" name="rollno" value="<%=Roll_No %>" /><br></h3>
	
	<h3>Student Name <input type="text" name="name" value="<%=Name %>" /><br></h3>
	
	<h3>Student Email Id <input type="email" name="email" value="<%=Email %>" /><br></h3>
		
	<h3>Student Mobile NO. <input type="text" name="mobno" value="<%=Mobile_No %>" /><br></h3>
	
	<h3>Student Branch<select name="branch">
		<option>Computer Science and Enginnering</option>
		<option>Electronic Engineering</option>
		<option>Electrical Enginnering</option>
		<option>Civil Enginnering</option>
		<option>Chemical Enginnering</option>
		<option>Mechanical Enginnering</option>
		</select>
	</h3>
	
	<h3>Student Semester <input type="text" name="sem" value="<%=Semester %>" /><br></h3>
	
	<h3>Student Year <input type="text" name="year" value="<%=Year %>" /><br></h3>
		
	<h3>Student Address<textarea rows="3" cols="21" name="area" value="<%=Address %>"></textarea></h3>
		
	<h3><input type="submit" name="" value="Update Student" /><br></h3>
	
	
</form>
</body>