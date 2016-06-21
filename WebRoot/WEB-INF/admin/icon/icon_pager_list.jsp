<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script src="<%=basePath%>js/icon/icon.js"></script>
<link rel="stylesheet" id="main-css" href="<%=basePath%>js/icon/icon.css" type="text/css" media="all">

<style>
fieldset {
	border: 1px solid #1ab394;
	padding: 10px;
}

legend {
	display: block;
	width: auto;
	padding: 0;
	margin-bottom: 0;
	font-size: 14px;
	color: #333;
	border: none;
}

.input-upload {
	position: relative;
}

.input-upload input[type="file"] {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 72px;
	height: 35px;
	opacity: .0;
	filter: alpha(opacity = 00);
}
</style>

<fieldset>
	<legend>图标列表</legend>
	<c:forEach items="${iconList}" var="icon">
	<li >
		<span class="glyphicon glyphicon-${icon.displayName}"></span>
	</li>
</c:forEach>
		<div class="col-sm-4 col-sm-offset-4">
			<button class="btn btn-white" type="button"
				onclick="closeShowIconWindow()">关闭</button>
		</div>
</fieldset>
