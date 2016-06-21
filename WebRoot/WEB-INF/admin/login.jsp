<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>行者在路上|Zanblog › 后台登录</title>
	<link rel="stylesheet" id="buttons-css" href="<%=basePath%>css/buttons.min.css" type="text/css" media="all">
	<link rel="stylesheet" id="dashicons-css" href="<%=basePath%>css/dashicons.min.css" type="text/css" media="all">
	<link rel="stylesheet" id="login-css" href="<%=basePath%>css/login.min.css" type="text/css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/admin.css"><meta name="robots" content="noindex,follow">
	<link href="<%=basePath%>css/plugins/toastr/toastr.min.css" rel="stylesheet">
	<script type="text/javascript">
		toastr.options = {
					  "closeButton": true,
					  "debug": false,
					  "progressBar": true,
					  "positionClass": "toast-top-center",
					  "onclick": null,
					  "showDuration": "50",
					  "hideDuration": "100",
					  "timeOut": "1200",
					  "extendedTimeOut": "100",
					  "showEasing": "swing",
					  "hideEasing": "linear",
					  "showMethod": "fadeIn",
					  "hideMethod": "fadeOut"
		}
		
		// 登录
		function login(){
			var loginId = $("#loginId").val();
			var password = $("#password").val();
			if(isEmpty(loginId)){
				toastr.error("账户不能为空");
				//autoCloseAlert("账户不能为空",1000);
				return false;
			}
			
			if(isEmpty(password)){
				toastr.error("密码不能为空");
				//autoCloseAlert("密码不能为空",1000);
				return false;
			}
			$.ajax({
				url : "admin/login/",
				data: $("#form").serialize(),
				method : "post",
				dataType : "json",
				success : function(data) {
					if (data.resultCode == 'success') {
						window.location.href = "admin/home";
					}else{
						toastr.error(data.errorInfo);
						//autoCloseAlert(data.errorInfo,1000);
						return false;
					}
				}
			})
		}
	</script>
	</head>
	<body class="login login-action-login wp-core-ui  locale-zh-cn">
	<div id="login">
		<h1><a href="" title="Zanblog" tabindex="-1">Zanblog</a></h1>
	
<form name="loginform" id="form" action="/admin/login">
	<p>
		<input type="text" name="userName" id="loginId" class="input" placeholder="用户名" value="" size="20"></label>
	</p>
	<p>
		<input type="password" name="password" id="password" class="input" placeholder="密码" value="" size="20"></label>
	</p>
	
		
		<p class="forgetmenot"><label for="rememberme"><input name="rememberme" type="checkbox" id="rememberme" value="forever"> 记住我的登录信息</label></p>	
	    
	    <button type="button" class="button button-primary button-large" onclick="login()">登 录</button>
		
		<p class="submit">
		<input type="hidden" name="redirect_to" value="#">
		<input type="hidden" name="testcookie" value="1">
	</p>
</form>

<p id="nav">
<a href="#">注册</a> | 	<a href="#" title="找回密码">忘记密码？</a>
</p>


	<p id="backtoblog"><a href="#" title="不知道自己在哪？">← 回到Zanblog</a></p>
	
	</div>

	
	<div class="clear"></div>
    <script src="<%=basePath%>js/jquery-2.1.1.min.js" ></script>
    <script src="<%=basePath%>js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="<%=basePath%>js/flavr/flavr/js/flavr.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/flavr/base.js"></script>
	<script src="<%=basePath%>js/validation.js"></script>
	<script src="<%=basePath%>js/plugins/toastr/toastr.min.js"></script>	
	
	</body></html>