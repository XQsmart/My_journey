<%--
  Created by IntelliJ IDEA.
  User: Xiao-Qiang
  Date: 2017/2/14
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>用户列表</title>
    <link rel="stylesheet" href="<%=path %>/jquery-easyui/themes/default/easyui.css"/>
    <link  rel="stylesheet"href="<%=path %>/jquery-easyui/themes/icon.css"/>
    <link  rel="stylesheet"href="<%=path %>/css/main.css"/>
    <script src="<%=path %>/js/jquery.min.js"></script>
    <script src="<%=path %>/js/jquery-1.7.2.min.js"></script>
    <script src="<%=path %>/jquery-easyui/jquery.easyui.min.js"></script>
    <script src="<%=path %>/js/main.js"></script>
    <script src="<%=path %>/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>

    <script>
        $(function () {
            setPagination("userList");
        });
    </script>

</head>
<body style="height:100%;">
<table id="userList" class="easyui-datagrid"
       data-options="toolbar:'#tb',
                singleSelect:true,
                collapsible:true,
                url:'<%=path %>/hello/queryAll',
                method:'get',
                rownumbers:true,
                autoRowHeight:true,
                pagination:true,
                pageSize:20" style="height:100%;">
    <thead>
    <tr>
        <th data-options="field:'id',checkbox:true">编号</th>
        <th data-options="field:'name',width:80">姓名</th>
    </tr>
    </thead>
</table>

<div id="tb" style="padding:5px;height:auto">
    <div style="margin-bottom:5px">
        <a href="javascript:;" class="easyui-linkbutton" iconCls="icon-add">添加</a>
        <a href="javascript:;" class="easyui-linkbutton" iconCls="icon-edit">编辑</a>
    </div>
</div>
</body>
</html>
