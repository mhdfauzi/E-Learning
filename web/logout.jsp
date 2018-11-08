<%-- 
    Document   : logout
    Created on : 15-Apr-2018, 22:00:58
    Author     : Mhd Najwan Fauzi
--%>

<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
