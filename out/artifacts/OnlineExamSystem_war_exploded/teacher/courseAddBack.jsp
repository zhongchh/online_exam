<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/12/17
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<html>
<head>
    <title>Please Wait a second</title>
</head>
<body>
<%
    String cname=request.getParameter("cname");

    String weekday=request.getParameter("weekday");
    String time=request.getParameter("time");
    String ccredit=request.getParameter("credit");
    String cperiod=request.getParameter("period");
    String ctest=request.getParameter("ctest");;
    String ctime=weekday+time;
    UserDao userDAO = new UserDao();
    int flag=0;
    flag=userDAO.courseAdd(cname,session.getAttribute("username").toString(),ctime,ccredit,cperiod,ctest,"unfinished");

%>
<%--关闭当前窗口--%>
<script>
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
</script>
</body>
</html>
