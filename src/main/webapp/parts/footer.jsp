<%@ page import="com.example.flyaway.classes.StaticTexts" %><%--
  Created by IntelliJ IDEA.
  User: joseph
  Date: 8/13/2022
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%
    StaticTexts fSts = new StaticTexts();
    String pageError = (String) session.getAttribute(fSts.pageError);
    String pageSuccess = (String) session.getAttribute(fSts.pageSuccess);
%>
<script>
  const pageError = "<%= pageError %>";
  const pageSuccess = "<%= pageSuccess %>";
  <% session.removeAttribute(fSts.pageError); %>
  <% session.removeAttribute(fSts.pageSuccess); %>
</script>
<script src="assets/scripts/init-main.js"></script>