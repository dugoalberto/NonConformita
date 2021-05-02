<%--
  Created by IntelliJ IDEA.
  User: nicol
  Date: 16/04/2021
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>


<%
    if(request.getParameter("key")!=null){
        String key=request.getParameter("key");
        String wild="%"+key+"%";

        String url="jdbc:mysql://localhost:3306/pcto";
        String username="root";
        String password="";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, username, password);

            PreparedStatement pstmt=null;

            pstmt=con.prepareStatement("SELECT codice FROM prodotti WHERE codice LIKE ?");
            pstmt.setString(1,wild);
            ResultSet rs=pstmt.executeQuery();

            while (rs.next()){
                %>
                    <li class="list-group-item"> <%=rs.getString("codice")%></li>
                <%
            }
            con.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }


    }
%>