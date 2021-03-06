<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<html>
<head>


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/css/base.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.2.6/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.2.6/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/locale/easyui-lang-zh_CN.js"></script>

    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/easyUIShow-category.js"></script>--%>
    <script>
        $(function(){
            var editing;
            var flag;
            $("#tt").datagrid({
                width:1240,
                height: 530,
                collapsible:true,
                //idField:"id",只能选中一个行
                fitColumns:true,
                rownumbers:true,
                loadMsg:"正在加载中....",
                url:"${pageContext.request.contextPath}/goodsCategory/getGoodsCategory.do",
                striped:true,
                columns:[[
                    {field:"ck",checkbox:true, width:50},
                    {field:"id",title:"分类ID号", width:50,align:"center"},
                    {field:"name",title:"分类名称",width:50,align:"center"},
                    {field:"status",title:"状态",width:200,align:"center",
                        formatter:function(value,row,index){
                            if(value==1){return "已启用";}else if(value==0){return "未启用"}
                        }

                    },
                    {field:"createtime",title:"创建时间",width:50,align:"center",
                        formatter:function(value,row,index){
                            var unixTimestamp = new Date(value);
                            return unixTimestamp.toLocaleString();
                        }
                    },
                    {field:"updatetime",title:"修改时间",width:200,align:"center",
                        formatter:function(value,row,index){
                            var unixTimestamp = new Date(value);
                            return unixTimestamp.toLocaleString();
                        }}
                ]],
                pagination:true,
                pageNumber:1,
                pageSize:5,
                pageList:[5,10,15,20],
                toolbar:[
                    {
                        iconCls:"icon-add",
                        text:"编辑详情",
                        handler:function(){
                            if(editing==undefined)
                            {
                                var rows=$("#tt").datagrid("getSelections");
                                //getChecked;
                                if(rows.length!=1)
                                {
                                    $.messager.show({
                                        title:"消息",
                                        width:200,
                                        height:100,
                                        msg:"只能选择一行记录进行修改"
                                    });

                                }else{
                                    var ids="";
                                    for(var i=0;i<rows.length;i++)
                                    {
                                        ids=ids+rows[i].id+",";
                                    }
                                    ids=ids.substring(0,ids.length-1);
                                    var path = "${pageContext.request.contextPath}/goodsCategory/edit.do?id="+ids;
                                    window.location=path;
                                }
                                /*                                 //增加一行
                                                                     $("#tt").datagrid("getRowIndex",rows[0]);
                                                                     editing=$("#tt").datagrid("getRows").length-1;
                                                                     //开启编辑状态
                                                                     $("#tt").datagrid("beginEdit",editing); */
                            }
                        }
                    },
//                    {
//                        iconCls:"icon-add",
//                        text:"查询",
//                        handler:function(){
//                            var keyword = document.getElementById("keyword").value;
//                            var cid = document.getElementById("cid").value;
//                            $("#tt").datagrid(//重定向url
//                                {
//                                    url:"role/dimRole.do?keyword="+keyword+"&cid="+cid
//                                }
//                            );
//                        }
//                    },


                    <%--{--%>
                        <%--iconCls:"icon-add",--%>
                        <%--text:"查看详情",--%>
                        <%--handler:function(){--%>
                            <%--if(editing==undefined)--%>
                            <%--{--%>
                                <%--var rows=$("#tt").datagrid("getSelections");--%>
                                <%--//getChecked;--%>
                                <%--if(rows.length!=1)--%>
                                <%--{--%>
                                    <%--$.messager.show({--%>
                                        <%--title:"消息",--%>
                                        <%--width:200,--%>
                                        <%--height:100,--%>
                                        <%--msg:"只能选择一行记录进行查看"--%>
                                    <%--});--%>

                                <%--}else{--%>
                                    <%--var ids="";--%>
                                    <%--for(var i=0;i<rows.length;i++)--%>
                                    <%--{--%>
                                        <%--ids=ids+rows[i].r_id+",";--%>
                                    <%--}--%>
                                    <%--ids=ids.substring(0,ids.length-1);--%>
                                    <%--var path = "${pageContext.request.contextPath}/role/role_look.do?r_id="+ids;--%>
                                    <%--window.location=path;--%>
                                <%--}--%>
                                <%--/*                                 //增加一行--%>
                                                                     <%--$("#tt").datagrid("getRowIndex",rows[0]);--%>
                                                                     <%--editing=$("#tt").datagrid("getRows").length-1;--%>
                                                                     <%--//开启编辑状态--%>
                                                                     <%--$("#tt").datagrid("beginEdit",editing); */--%>
                            <%--}--%>




                        <%--}--%>
                    <%--},--%>
                    {
                        iconCls:"icon-remove",
                        text:"删除",
                        handler:function(){
                            var rows=$("#tt").datagrid("getSelections");
                            if(rows.length>0){
                                var ids="";
                                for(var i=0;i<rows.length;i++)
                                {
                                    ids=ids+rows[i].id+",";
                                }
                                ids=ids.substring(0,ids.length-1);
                                $.messager.confirm("确认框","您确定要删除吗?",function(b){
                                    if(b)
                                    {
                                        $.post("${pageContext.request.contextPath}/goodsCategory/"+ids+"/delete.do",function(data){
                                            $.messager.show({
                                                title:"消息",
                                                width:200,
                                                height:100,
                                                msg:data.msg
                                            });
                                            //刷新datagrid
                                            $("#tt").datagrid("reload",{});
                                            //取消所选中的行
                                            $("#tt").datagrid("unselectAll");
                                        },"json");
                                    }
                                });

                            }else{
                                $.messager.show({
                                    title:"消息",
                                    width:200,
                                    height:100,
                                    msg:"至少要选择一条记录进行删除"
                                });
                            }
                        }
                    },
                ]
            });

        });
    </script>
</head>
<body leftmargin="8" topmargin="8" background='${pageContext.request.contextPath}/skin/images/allbg.gif'>

<div id="dd"></div>
<div id="address"></div>


<!--  快速转换位置按钮  -->
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="left">
    <tr>
        <td height="26">
            <table width="60%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td >
                        当前位置:产品展示管理>>添加产品分类
                    </td>
                    <td>
                        <input type='button' class="coolbg np" onClick="location='${pageContext.request.contextPath}/goodsCategory-add.html';" value='添加产品分类' />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<!--  搜索表单  -->
<form name='form3' method='post'>
    <input type='hidden' name='dopost' value='' />
    <table width='100%'  border='0' cellpadding='1' cellspacing='1' bgcolor='#CBD8AC' align="left" style="margin-top:8px">
        <tr bgcolor='#EEF4EA'>
            <td background='${pageContext.request.contextPath}/skin/images/wbg.gif' align='left'>
                <%--<table border='0' cellpadding='0' cellspacing='0'>--%>
                    <%--<tr>--%>
                        <%--<td width='90' align='center'>搜索条件：</td>--%>
                        <%--<td width='160'>--%>
                            <%--<select name='cid' style='width:150' id="cid">--%>
                                <%--<option value='0'>选择类型...</option>--%>
                                <%--<option value='1'>产品分类名</option>--%>
                                <%--<option value='cid'>产品分类ID号</option>--%>
                            <%--</select>--%>
                        <%--</td>--%>
                        <%--<td width='70'>--%>
                            <%--关键字：--%>
                        <%--</td>--%>
                        <%--<td width='160'>--%>
                            <%--<input type='text' name='keyword' style='width:120px' id="keyword"/>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
            </td>
        </tr>
    </table>
</form>
<!--  内容列表   -->
<form id="tt"></form>
</body>

</html>
