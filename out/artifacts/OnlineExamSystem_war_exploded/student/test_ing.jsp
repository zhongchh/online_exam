<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<%@ page import="java.net.URLEncoder" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>进行中考试</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
</head>
<body>
<%
    UserDao userdao = new UserDao();
    ResultSet rs = userdao.availableExam(session.getAttribute("username").toString(),"testing");
%>
<div class="x-nav">

    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <xblock>
        <span class="x-right" style="line-height:40px">尚未完成的考试：<% %>
        </span>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>课程编号</th>
            <th>考试科目</th>
            <th>考试时长</th>
            <th>操作</th>
        </thead>
        <tbody>
        <%while (rs != null && rs.next()) {%>
        <tr>
            <td><%=rs.getString("cid")%></td>
            <td><%=rs.getString("cname")%></td>
            <td><%=rs.getString("ctest")%></td>
            <td class="td-manage">
                <form action="test_paper1.jsp">
                    <input type="hidden" name="cid" value="<%=rs.getString("cid")%>">
                    <input type="hidden" name="ename" value="<%=rs.getString("cname")%>">
                    <button class="layui-btn" onclick="toggleFullScreen()" type="submit">继续考试</button>
                </form>
            </td>
        </tr>
        <%
            }
        %>


        </tbody>
    </table>

</div>

<script>

    function toggleFullScreen() {

        if (!document.fullscreenElement && // alternative standard method

            !document.mozFullScreenElement && !document.webkitFullscreenElement) {// current working methods

            if (document.documentElement.requestFullscreen) {

                document.documentElement.requestFullscreen();

            } else if (document.documentElement.mozRequestFullScreen) {

                document.documentElement.mozRequestFullScreen();

            } else if (document.documentElement.webkitRequestFullscreen) {

                document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);

            }

        } else {

            if (document.cancelFullScreen) {

                document.cancelFullScreen();

            } else if (document.mozCancelFullScreen) {

                document.mozCancelFullScreen();

            } else if (document.webkitCancelFullScreen) {

                document.webkitCancelFullScreen();

            }

        }

    }

</script>
<script>
    layui.use(['form'], function () {
        form = layui.form;

    });


    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', {icon: 1, time: 1000});
        });
    }


    function delAll(argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？' + data, function (index) {
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
<script>var _hmt = _hmt || [];
(function () {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>

</body>
</html>