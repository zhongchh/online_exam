<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>

</head>
<body>
<%
if(session.getAttribute("username")==null|| !session.getAttribute("role").toString().equals("2")){
response.sendRedirect("../login.jsp");
}
%>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a href="./index.jsp">云南大学在线考试系统</a></div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>
    <ul class="layui-nav right">
        <li class="layui-nav-item">
            <a href="">
               管理员 <%=session.getAttribute("realname")%>
            </a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="quit.jsp">退出</a></dd>
            </dl>
        </li>
    </ul>

</div>
<!-- 顶部结束 -->

<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>考试管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="paper_recheck.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>试卷审核</cite>

                        </a>
                    </li>
                    <li>
                        <a _href="grade_manage.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>成绩查看</cite>

                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>课程管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="class_list.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>已开设课程</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="class_pass.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>待审核课程</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>人员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="teacher_list.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>教师名单</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="student_list.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>学生名单</cite>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>

<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src="welcome.jsp" frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>

<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">云南大学软件学院版权所有</div>
</div>
<!-- 底部结束 -->
</body>
</html>