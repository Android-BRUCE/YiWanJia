<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/js/kindeditor-4.1.10/themes/default/default.css" type="text/css"
      rel="stylesheet">
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/taotao.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common2.js"></script>
<script>
    var TT = TAOTAO = {
        // 编辑器参数
        kingEditorParams: {
            //指定上传文件参数名称
            filePostName: "uploadFile",
            //指定上传文件请求的url。
            uploadJson: '${pageContext.request.contextPath}/pic/upload.do',
            //上传类型，分别为image、flash、media、file
            dir: "image"
        },
        // 格式化时间
        formatDateTime: function (val, row) {
            var now = new Date(val);
            return now.format("yyyy-MM-dd hh:mm:ss");
        },
        // 格式化连接
        formatUrl: function (val, row) {
            if (val) {
                return "<a href='" + val + "' target='_blank'>查看</a>";
            }
            return "";
        },

        init: function (data) {
            // 初始化图片上传组件
            this.initPicUpload(data);
        },
        // 初始化图片上传组件
        initPicUpload: function (data) {
            $(".picFileUpload").each(function (i, e) {
                var _ele = $(e);
                _ele.siblings("div.pics").remove();
                _ele.after('\
    			<div class="pics">\
        			<ul></ul>\
        		</div>');
                // 回显图片
                if (data && data.pics) {
                    var imgs = data.pics.split(",");
                    for (var i in imgs) {
                        if ($.trim(imgs[i]).length > 0) {
                            _ele.siblings(".pics").find("ul").append("<li><a href='" + imgs[i] + "' target='_blank' id='imagehref'><img name='image' id='image' src='" + imgs[i] + "' width='80' height='50'/></a></li>");
                        }
                    }
                }
                //给“上传图片按钮”绑定click事件================================多图上传js
                $(e).click(function () {
                    var form = $(this).parentsUntil("form").parent("form");
                    //打开图片上传窗口
                    KindEditor.editor(TT.kingEditorParams).loadPlugin('multiimage', function () {
                        var editor = this;
                        editor.plugin.multiImageDialog({
                            clickFn: function (urlList) {
                                var imgArray = [];
                                KindEditor.each(urlList, function (i, data) {
                                    imgArray.push(data.url);
                                    form.find(".pics ul").append("<li><a href='" + data.url + "' target='_blank'><img src='" + data.url + "' width='80' height='50' id='image'/></a></li>");
                                });
                                form.find("[name=image]").val(imgArray.join(","));
                                editor.hideDialog();
                            }
                        });
                    });
                });
            });
        },

        createEditor: function (select) {
            return KindEditor.create(select, TT.kingEditorParams);
        },

        /**
         * 创建一个窗口，关闭窗口后销毁该窗口对象。<br/>
         *
         * 默认：<br/>
         * width : 80% <br/>
         * height : 80% <br/>
         * title : (空字符串) <br/>
         *
         * 参数：<br/>
         * width : <br/>
         * height : <br/>
         * title : <br/>
         * url : 必填参数 <br/>
         * onLoad : function 加载完窗口内容后执行<br/>
         *
         *
         */
        createWindow: function (params) {
            $("<div>").css({padding: "5px"}).window({
                width: params.width ? params.width : "80%",
                height: params.height ? params.height : "80%",
                modal: true,
                title: params.title ? params.title : " ",
                href: params.url,
                onClose: function () {
                    $(this).window("destroy");
                },
                onLoad: function () {
                    if (params.onLoad) {
                        params.onLoad.call(this);
                    }
                }
            }).window("open");
        },

        closeCurrentWindow: function () {
            $(".panel-tool-close").click();
        },

        getSelectionsIds: function (select) {
            var list = $(select);
            var sels = list.datagrid("getSelections");
            var ids = [];
            for (var i in sels) {
                ids.push(sels[i].id);
            }
            ids = ids.join(",");
            return ids;
        },

        /**
         * 初始化单图片上传组件 <br/>
         * 选择器为：.onePicUpload <br/>
         * 上传完成后会设置input内容以及在input后面追加<img>
         */
        initOnePicUpload: function () {

            $(".onePicUpload").click(function () {
                var _self = $(this);
                KindEditor.editor(TT.kingEditorParams).loadPlugin('image', function () {
                    this.plugin.imageDialog({
                        showRemote: false,
                        clickFn: function (url, title, width, height, border, align) {
                            var input = _self.siblings("input");
                            input.parent().find("img").remove();
                            input.val(url);
                            input.after("<a href='" + url + "' target='_blank'><img src='" + url + "' width='80' height='50' id='image'/></a>");
                            this.hideDialog();
                        }
                    });
                });
            });
        }
    };

</script>
<div style="padding:10px 10px 10px 10px">
    <form id="itemAddForm" class="itemForm" method="post">
        <table cellpadding="5">
            <tr>

                <td>产品名称:&nbsp;&nbsp;<input class="easyui-textbox" type="text" name="goodsttile"
                                             data-options="required:true" style="width: 280px;"
                                             value="${goods.goodsttile}"></input></td>
            </tr>
            <tr>
                <td>产品简述:&nbsp;&nbsp;<input class="easyui-textbox" name="point"
                                            data-options="multiline:true,validType:'length[0,150]'"
                                            style="height:60px;width: 280px;" value="${goods.point}"></input></td>
            </tr>
            <tr>
                <td>产品分类:&nbsp;
                    <%--<input class="easyui-textbox" type="text" name="barcode" data-options="validType:'length[1,30]'" />--%>
                    <select name="cid" id="cid">
                        <c:forEach items="${goodsCategory }" var="pr">
                            <option value=${pr.id}>${pr.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>目前产品图片：&nbsp;&nbsp;
                    <div>
                        <ul>
                            &nbsp;&nbsp;
                            <li><a href="${goods.image}" target="_blank"><img
                                    src="${goods.image}" width="800"
                                    height="322" id="image1"></a></li>
                        </ul>
                    </div>
                </td>
            </tr>
            <tr>
                <td>产品图片:&nbsp;&nbsp;
                    <a href="javascript:void(0)" class="easyui-linkbutton picFileUpload">上传图片</a>
                    <input type="hidden" name="image" id="image"/>
                </td>
            </tr>
            <tr>
                <td>产品具述:&nbsp;&nbsp;
                    <textarea style="width:1100px;height:400px;visibility:hidden;"
                              name="goodsdesc">${goods.goodsdesc}</textarea>
                </td>
            </tr>
        </table>
        <input type="hidden" name="itemParams"/>
        <input type="hidden" name="id" value="${goods.id}"/>
    </form>
    <div style="padding:5px">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
    </div>
</div>
<script type="text/javascript">
    var itemAddEditor;
    //页面初始化完毕后执行此方法
    $(function () {
        //   TT.initOnePicUpload();
        itemAddEditor = KindEditor.create("#itemAddForm [name=goodsdesc]", TT.kingEditorParams);
        TAOTAO.init({
            fun: function (node) {
                //根据商品的分类id取商品 的规格模板，生成规格信息。第四天内容。
                TAOTAO.changeItemParam(node, "itemAddForm");
            }
        });
    });

    //提交表单
    function submitForm() {
        //有效性验证
        if (!$('#itemAddForm').form('validate')) {
            $.messager.alert('提示', '表单还未填写完成!');
            return;
        }
        //同步文本框中的商品描述
        itemAddEditor.sync();
        //ajax的post方式提交表单
        //$("#itemAddForm").serialize()将表单序列号为key-value形式的字符串
        $.post("${pageContext.request.contextPath}/goods/editGoods.do", $("#itemAddForm").serialize(), function (data) {
            if (data.status == 200) {
                $.messager.alert('提示', data.msg);
                window.location = "${pageContext.request.contextPath}/Goods.do";
            }
            if (data.status == 500) {
                $.messager.alert('提示', data.msg);
            }
        });
    }

    function clearForm() {
        $('#itemAddForm').form('reset');
        itemAddEditor.html('');
    }
</script>
