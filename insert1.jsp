<%@ page import ="java.sql.*" %>
<%
    String cin = request.getParameter("name");    
    String cname = request.getParameter("comment");
	System.out.println(cin);
	System.out.println(cname);
   Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","sanath","it");  
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into jobex values ('" + cin + "','" + cname + "')");
    if (i > 0) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
