<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/Fly_Away_";
String user = "root";
String pass = "Praveenkannan@4005";
String sql = "select * from flights order by name";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<table border="1">
	<tr>
		<th>name</th>
		<th>airline</th>
		<th>way</th>
		<th>price</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td>
			<%=
			rs.getString(1)
			%>
		</td>
		<td>
			<%=
			rs.getString(2)
			%>
		</td>
		<td>
			<%=
			rs.getString(3)
			%>
		</td>
		<td>
			<%=
			rs.getString(4)
			%>
		</td>
	</tr>
	<%
	}
	%>
</table>
    