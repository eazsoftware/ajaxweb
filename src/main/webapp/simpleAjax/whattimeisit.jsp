<%-- 
    Document   : whattimeisit
    Created on : 17-Jan-2013, 21:56:33
    Author     : javier
--%>

<%
    Thread.sleep(2000);
    String strName = request.getParameter("name");
    out.println("Hi " + strName + ". It's " + new java.util.Date() );
%>