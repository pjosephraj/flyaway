<%@ page import="com.example.flyaway.classes.StaticTexts" %><%--
  Created by IntelliJ IDEA.
  User: joseph
  Date: 8/12/2022
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%
    StaticTexts hSts = new StaticTexts();
    String hUsername = (String) session.getAttribute(hSts.username);
%>
<header>
    <a class="logo" href="index.jsp">
        <img src="assets/images/logo.svg" alt="FlyAway Logo">
        <span>FlyAway</span>
    </a>
    <span>
    <%= hUsername %>
  </span>
    <span>
        <%= hSts.adminUsername %>
    </span>
    <span>
  </span>
</header>
<%
    if (hUsername != null && hUsername.equalsIgnoreCase(hSts.adminUsername)) {
%>
    <nav class="nav-bar">
        <button class="btn btn-sm">
            <a href="<%= hSts.jspFlightList %>">Flight List</a>
        </button>
        <button class="btn btn-sm">Booked Flight</button>
        <button class="btn btn-sm">
            <a href="<%= hSts.jspChangePassword %>">Change Password</a>
        </button>
        <button class="btn btn-sm">
            <a href="logout">Logout</a>
        </button>
    </nav>
<%
    }
%>