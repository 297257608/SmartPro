<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style>
.img-circle{ width:64px;}
</style>
					<li class="nav-header">
                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="<%=basePath%>images/admin.png"/>
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:void(0)" >
                                <span class="clear"> 
	                                <span class="block m-t-xs"> 
	                                	<strong class="font-bold">${manager.userName}</strong>
	                             	</span> 
	                             	<span class="text-muted text-xs block">
		                             		超级管理员
	                             	<b class="caret"></b></span> 
                             	</span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <!-- <li><a href="form_avatar.html">修改头像</a></li>
                                <li><a href="profile.html">个人资料</a></li>
                                <li><a href="contacts.html">联系我们</a></li>
                                <li><a href="mailbox.html">信箱</a></li>
                                <li class="divider"></li> -->
                                <li><a href="<%=basePath%>out">安全退出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                        </div>
                    </li>