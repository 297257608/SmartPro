<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<footer id="zan-footer">
	<div class="container">

		<!-- 版权信息 -->
		Copyright © 2013 <a target="_blank" title="杭州网站建设" href="#">佚站互联</a> YEAHZAN.COM - 用心创造每一站, <a target="_blank" title="后台管理" href="<%=basePath%>login">后台管理</a>. All Rights Reserved.	Theme By <a href="http://www.yeahzan.com/" target="_blank">YeahZan</a>      	
		<!-- 版权信息结束 -->
	</div>
</footer>

