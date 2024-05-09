<%@page import="java.sql.*"%>

<%@page import="NewPackage.DBClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
try{
	String sql = "SELECT * FROM bookedmeeting";
	
	DBClass obj = new DBClass();
	
	Connection conn = obj.getConn();
	
	Statement st = conn.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
	
	ResultSetMetaData res = rs.getMetaData();
	
	out.print("<table>");
	out.print("<tr>");
	for(int x=1; x<=res.getColumnCount(); x++)
		out.print("<th>"+res.getColumnName(x)+"</th>");
	out.print("<th>Delete Student</th>");
	out.print("</tr>");
	
	while(rs.next())
	{
		out.print("<tr>");
		for(int x=1; x<res.getColumnCount(); x++)
			out.print("<td>"+rs.getString(x)+"</td>");
		
		out.print("<td><img src='img/"+rs.getString("FileName")+
				"' width='50px' height='50px'/></td>");
		out.print("<td><a href='deletepage1.jsp?rno="+
				rs.getString("Rno")+"'>Delete</a></td>");
		out.print("</tr>");
	}
	
	out.print("</table>");
}catch(Exception ex)
{
	out.print("Exception : "+ex.getMessage());
}
%>

</body>
</html>