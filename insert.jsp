<%@ page import ="java.sql.*" %>
<%
    String cin = request.getParameter("name");    
    String cname = request.getParameter("comment");
   Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","sanath","it");  
    String query = "INSERT INTO TEMP VALUES (?,?)";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1,cin);
ps.setString(2,cname);
int i=ps.executeUpdate();
    if (i > 0) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
