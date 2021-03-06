<%@page pageEncoding="utf-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>OCS在线计费系统</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" />
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <a href="../common/common_exit">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">
            <ul id="menu">
                <li><a href="../common/common_toIndex" class="index_off"></a></li>
                <li><a href="../role/role_find" class="role_on"></a></li>
                <li><a href="../user/user_find" class="user_off"></a></li>
                <li><a href="../cost/cost_find" class="cost_off"></a></li>
                <li><a href="../account/account_find" class="account_off"></a></li>
                <li><a href="../business/business_find" class="business_off"></a></li>
                <li><a href="../common/common_toUpdateUserInfo" class="information_off"></a></li>
                <li><a href="../common/common_toResetPassword" class="password_off"></a></li>
            </ul>
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">           
            <!--保存操作后的提示信息：成功或者失败-->
            <div id="save_result_info" class="save_success">保存成功！</div>
            <form id="role_form" action="role_update" method="post" class="main_form">
                <div class="text_info clearfix"><span>角色名称：</span></div>
                <div class="input_info">
                	<input name="rvo.id" type="hidden" value="<s:property value="rvo.id"/>" />
                    <input name="rvo.name" onblur="checkRoleName();" id="role_name" type="text" class="width200" value="<s:property value="rvo.name" />" />
                    <span class="required">*</span>
                    <div id="roleNameInfo" class="validate_msg_medium error_msg hidden">不能为空，且为20长度的字母、数字和汉字的组合</div>
                    <input id="originRoleName" type="hidden" value="<s:property value="rvo.name" />" />
                </div>                    
                <div class="text_info clearfix"><span>设置权限：</span></div>
                <div class="input_info_high">
                    <div class="input_info_scroll">
                        <ul>
                        	<s:iterator value="privileges" >
                        		<li><input name="rvo.privilegeIds" value="<s:property value="id" />" 
                        		<s:iterator value="rvo.privilegeIds" var="p"><s:if test="#p==id">checked="checked"</s:if></s:iterator> type="checkbox" /><s:property value="name" /></li>
                        	</s:iterator>
                        </ul>
                    </div>
                    <span class="required">*</span>
                    <div id="privilegeInfo" class="validate_msg_tiny hidden">至少选择一个权限</div>
                </div>
                <div class="button_info clearfix">
                    <input type="button" value="保存" class="btn_save" onclick="submitForm();" />
                    <input type="button" value="取消" class="btn_save" onclick="location.href='role_find';"/>
                </div>
            </form> 
        </div>
        <!--主要区域结束-->
        <div id="footer">
        </div>
    <script type="text/javascript" language="javascript" src="../scripts/jquery-1.10.2.min.js"></script>    
    <script type="text/javascript" language="javascript" src="../scripts/role/roleModi.js"></script> 
    </body>
</html>
