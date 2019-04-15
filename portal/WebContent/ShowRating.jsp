<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>

body {
 
  min-height: 100%;
  background-color:#2d2423;
   background-image: url(https://images.unsplash.com/photo-1462536943532-57a629f6cc60?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80);
   background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
  
}
</style>
<body>



<center><h2>Faculty Details:</h2></center>
	<%
		String name = "";
		String experience = request.getParameter("experience");
		
		try{
			String connectionURL = "jdbc:mysql://localhost:3306/test";
			
			
			Connection connection = null;
			Statement statement = null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(connectionURL, "root", "root");
			statement = connection.createStatement();
			String QueryString = "SELECT * FROM FacultyInfo ORDER BY teacher_id DESC LIMIT 1";
			rs = statement.executeQuery(QueryString);
		%>
		<% 
			while(rs.next())
			{
		%>
	
		<center><h2>Teacher id with</h2>
		<%=rs.getString("teacher_id")%>
		<h2>has rating</h2>
        <%=rs.getString("rating")%></center>
		
	<%
			}
	%>
	<% 
	rs.close();
	statement.close();
	connection.close();
	 	}catch (Exception e) {
			e.printStackTrace();
	 	}
	%>
</body>

</html>