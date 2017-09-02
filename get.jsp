<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<body background="full_image_1.jpg">
<br/><br/><br/>
<h1><strong><center>JOB</center></strong></h1>

<%
String cin = request.getParameter("name");   
Class.forName("oracle.jdbc.driver.OracleDriver");  
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="0">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>reviews</b></td>

</tr>
<%
try{ 
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","sanath","it");  
statement=con.createStatement();
String sql ="SELECT expe FROM jobex where compname='" + cin + "'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString(1)%></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
