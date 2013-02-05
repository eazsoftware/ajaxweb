<%-- 
    Document   : whattimeisit
    Created on : 17-Jan-2013, 21:56:33
    Author     : javier
--%>

<%
    Thread.sleep(2000);
    String strName = request.getParameter("name");
%>
<div id="hola"><%= "Hi " + strName + ". It's " + new java.util.Date() %></div>
<a href="http://www.android.com/" id="picture" target="_blank">
	<img src="../img/android-logo.jpg"></img>
</a>
<h2>Android!</h2>
<p>Android rulez!</p>