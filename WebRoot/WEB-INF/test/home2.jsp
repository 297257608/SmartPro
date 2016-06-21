<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 设置标题 -->
<title>
  Zanblog - Bootstrap | WordPress博客主题 | 扁平化设计风格</title>
<!-- 设置标题结束 -->

<!-- 设置关键词、描述 -->
<!-- 设置关键词、描述结束 -->


<meta content="Zanblog是由佚站互联开发的基于Bootstrap框架的WordPress博客主题。采用扁平化设计、清新配色风格。" name="description">
<meta content=" Bootstrap3, WordPress博客主题, 扁平化设计风格    " name="keywords">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" id="bootstrap-style-css" href="<%=basePath%>css/bootstrap.css" type="text/css" media="all">
<link rel="stylesheet" id="fontawesome-style-css" href="<%=basePath%>css/font-awesome.min.css" type="text/css" media="all">
<link rel="stylesheet" id="icheck-style-css" href="<%=basePath%>css/red.css" type="text/css" media="all">
<link rel="stylesheet" id="custom-style-css" href="<%=basePath%>css/core.css" type="text/css" media="all">
<link rel="stylesheet" id="zanblog-style-css" href="<%=basePath%>css/style.css" type="text/css" media="all">
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.icheck.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/zanblog.js"></script>
<script type="text/javascript" src="<%=basePath%>js/custom.js"></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.yeahzan.com/zanblog/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://www.yeahzan.com/zanblog/wp-includes/wlwmanifest.xml"> 
<meta name="generator" content="WordPress 4.0.10">
<style type="text/css" id="syntaxhighlighteranchor"></style>

<!--[if lt IE 9]>
  <script src="<%=basePath%>js/ui/js/modernizr.js"></script>
  <script src="<%=basePath%>js/ui/js/respond.min.js"></script>
  <script src="<%=basePath%>js/ui/js/html5shiv.js"></script>
<![endif]-->

</head>
<body class="home blog nav-fixed">
<header id="zan-header" class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a href="http://localhost:8080/SmartPro/"><div class="navbar-brand"></div></a>
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="fa fa-reorder fa-lg"></span>
      </button>
    </div>
    <nav class="navbar-collapse bs-navbar-collapse collapse">
      <ul id="menu-navbar" class="nav navbar-nav"><li id="menu-item-215" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-215"><a title="Zanblog首页" href="./index.html"><i class="fa fa-home"></i> 首页</a></li>
<li id="menu-item-676" class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-676"><a><i class="fa fa-cog"></i>  相关技术</a>
<ul class="dropdown-menu">
	<li id="menu-item-677" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-677"><a target="_blank" href="http://www.yeahzan.com/blog/item/42-71.html">Bootstrap3</a></li>
	<li id="menu-item-678" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-678"><a target="_blank" href="http://www.yeahzan.com/blog/item/42-63.html">WordPress</a></li>
	<li id="menu-item-680" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-680"><a target="_blank" href="http://www.yeahzan.com/blog/item/42-80.html">FontAwesome</a></li>
	<li id="menu-item-681" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-681"><a target="_blank" href="http://www.yeahzan.com/blog/item/42-58.html">扁平化设计</a></li>
	<li id="menu-item-682" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-682"><a target="_blank" href="http://www.yeahzan.com/blog/item/42-77.html">响应式布局</a></li>
</ul>
</li>
<li id="menu-item-604" class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-604"><a title="相关下载" rel="nofollow"><i class=" fa fa-download"></i> 相关下载</a>
<ul class="dropdown-menu">
	<li id="menu-item-863" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-863"><a href="http://www.yeahzan.com/zanblog/download"><i class="fa fa-heart"></i> 主题下载</a></li>
	<li id="menu-item-605" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-605"><a target="_blank" rel="nofollow" href="http://www.yeahzan.com/zanblog/download"><i class="fa fa-wrench"></i> 插件包下载</a></li>
	<li id="menu-item-546" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-546"><a title="ZanUI" href="http://www.yeahzan.com/zanblog/archives/538.html"><i class="fa fa-gift"></i> ZanUI下载</a></li>
</ul>
</li>
<li id="menu-item-675" class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-675"><a><i class="fa fa-question-circle"></i>  问题板块</a>
<ul class="dropdown-menu">
	<li id="menu-item-601" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-601"><a href="http://www.yeahzan.com/zanblog/archives/394.html"><i class="fa fa-info-circle"></i>  常见问题</a></li>
	<li id="menu-item-213" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-213"><a title="问题反馈" rel="nofollow" href="http://www.yeahzan.com/zanblog/message"><i class="fa fa-pencil"></i> 问题反馈</a></li>
	<li id="menu-item-683" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-683"><a href="http://www.yeahzan.com/zanblog/archives/457.html"><i class="fa fa-wrench"></i> 使用说明及插件设置</a></li>
	<li id="menu-item-684" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-684"><a href="http://www.yeahzan.com/zanblog/archives/328.html"><i class="fa fa-cog"></i> 侧边栏与导航设置</a></li>
</ul>
</li>
<li id="menu-item-556" class="dropdown menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-556"><a href="http://www.yeahzan.com/zanblog/style"><i class="fa fa-magic"></i> 样式参考</a>
<ul class="dropdown-menu">
	<li id="menu-item-557" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-557"><a href="http://www.yeahzan.com/zanblog/style#btn-css">按钮CSS样式</a></li>
	<li id="menu-item-558" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-558"><a href="http://www.yeahzan.com/zanblog/style#alert-css">背景框CSS样式</a></li>
	<li id="menu-item-559" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-559"><a href="http://www.yeahzan.com/zanblog/style#block-css">文本引用CSS样式</a></li>
</ul>
</li>
<li id="menu-item-607" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-607"><a target="_blank" href="http://www.yeahzan.com/fa/facss.html"><i class="fa fa-star"></i> 图标参考</a></li>
<li id="menu-item-294" class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-294"><a title="更新日志" rel="nofollow"><i class="fa fa-book"></i> 更新日志</a>
<ul class="dropdown-menu">
	<li id="menu-item-455" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-455"><a rel="nofollow" href="http://www.yeahzan.com/zanblog/archives/435.html">V2.0.0</a></li>
	<li id="menu-item-516" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-516"><a rel="nofollow" href="http://www.yeahzan.com/zanblog/archives/510.html">V2.0.1</a></li>
	<li id="menu-item-530" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-530"><a href="http://www.yeahzan.com/zanblog/archives/523.html">V2.0.2</a></li>
	<li id="menu-item-537" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-537"><a href="http://www.yeahzan.com/zanblog/archives/531.html">V2.0.3</a></li>
	<li id="menu-item-584" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-584"><a href="http://www.yeahzan.com/zanblog/archives/575.html">V2.0.4</a></li>
	<li id="menu-item-622" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-622"><a href="http://www.yeahzan.com/zanblog/archives/618.html">V2.0.5</a></li>
	<li id="menu-item-703" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-703"><a href="http://www.yeahzan.com/zanblog/archives/685.html">V2.0.6</a></li>
	<li id="menu-item-773" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-773"><a href="http://www.yeahzan.com/zanblog/archives/763.html">V2.0.7</a></li>
</ul>
</li>
</ul>    </nav>
  </div>
  <div id="if-fixed" class="pull-right visible-lg visible-md">
    <i class="fa fa-thumb-tack"></i>
    <div class="icheckbox_flat-red checked" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
  </div>
</header>

<div id="zan-bodyer">
	<div class="container">
		<div class="row">
			<div id="mainstay" class="col-md-8">
				
				<div id="ie-warning" class="alert alert-danger fade in">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<i class="fa fa-warning"></i> 请注意，Zanblog并不支持低于IE8的浏览器，为了获得最佳效果，请下载最新的浏览器，推荐下载 <i class="fa fa-compass"></i> Chrome浏览器
				</div>

				<!-- 公告 -->
									<div class="well fade in">
						<button type="button" class="close" data-dismiss="alert">×</button>
						欢迎使用由 <a target="_blank" href="http://www.yeahzan.com/">佚站互联</a> 提供的 <strong>Zanblog主题</strong>，如有问题可以查看问题板块中的内容或者加入Zanblog官方1群：223133969(已满) Zanblog官方2群：308484218 <i class="fa fa-smile-o"></i>					</div>
								<!-- 公告结束 -->
				
				<!-- 广告 -->
			    			    <!-- 广告结束 -->

				<!-- 幻灯片-->
				<aside id="metaslider_widget-3">
<!-- meta slider -->
<div style="max-width: 750px;" class="metaslider metaslider-flex metaslider-411 ml-slider">
    <style type="text/css">
        @import url('<%=basePath%>css/public.css?ver=2.3');
        @import url('<%=basePath%>css/flexslider.css?ver=2.3');
    </style>
    <div id="metaslider_container_411">
        <div id="metaslider_411" class="flexslider">          
			<ul class="slides" style="height: 1000%; position: absolute; width: 100%; top: -900px;">
				<li style="display: block;" class="clone" aria-hidden="true"><a href="http://www.yeahzan.com/zanblog/archives/538.html" target="_self"><img src="<%=basePath%>images/banner_zanui.jpg" height="300" width="750" class="slider-411 slide-550" draggable="false"></a></li>
                <li style="display: block;" class=""><a href="http://blog.zanwp.com/" target="_self"><img src="<%=basePath%>images/zanblog3.jpg" height="300" width="750" class="slider-411 slide-845" draggable="false"></a></li>
                <li style="display: block;" class=""><a href="http://www.yeahzan.com/zanblog/archives/763.html" target="_self"><img src="<%=basePath%>images/banner_207.jpg" height="300" width="750" class="slider-411 slide-777" draggable="false"></a></li>
                <li style="display: block;" class="flex-active-slide"><a href="http://www.yeahzan.com/zanblog/archives/538.html" target="_self"><img src="<%=basePath%>images/default_article.jpg" height="300" width="750" class="slider-411 slide-550" draggable="false"></a></li>
				<li style="display: block;" class="clone" aria-hidden="true"><a href="http://blog.zanwp.com/" target="_self"><img src="<%=basePath%>images/zanblog3.jpg" height="300" width="750" class="slider-411 slide-845" draggable="false"></a></li>
			</ul>
		</div>
	</div>
    <script type="text/javascript">
        var metaslider_411 = function($) {
            $('#metaslider_411').flexslider({ 
                slideshowSpeed:3000,
                animation:"slide",
                controlNav:false,
                directionNav:true,
                pauseOnHover:true,
                direction:"vertical",
                reverse:false,
                animationSpeed:600,
                prevText:"<",
                nextText:">",
                easing:"easeOutExpo",
                slideshow:true,
                useCSS:false
            });
        };
        var timer_metaslider_411 = function() {
            var slider = !window.jQuery ? window.setTimeout(timer_metaslider_411, 100) : !jQuery.isReady ? window.setTimeout(timer_metaslider_411, 100) : metaslider_411(window.jQuery);
        };
        timer_metaslider_411();
    </script>
</div>
<!--// meta slider--></aside> 
				<!-- 幻灯片结束-->

				<!-- 内容主体 -->
				<div id="article-list">
											<div class="article well clearfix">
	<i class="fa fa-bookmark article-stick visible-md visible-lg"></i>	
	<div class="data-article hidden-xs">
		<span class="month">9月</span>
		<span class="day">13</span>
	</div>

	<!-- 大型设备文章属性 -->
	<section class="hidden-xs">
		<div class="title-article">
			<h1><a href="./content.html">
				Zanblog 更新至V2.1.0			</a></h1>
		</div>
		<div class="tag-article">
			<span class="label label-zan"><i class="fa fa-tags"></i> <a href="http://www.yeahzan.com/zanblog/archives/category/zanblog" rel="category tag">Zanblog</a></span>
			<span class="label label-zan"><i class="fa fa-user"></i> <a href="http://www.yeahzan.com/zanblog/archives/author/yeahzan" title="由佚站互联发布" rel="author">佚站互联</a></span>
			<span class="label label-zan"><i class="fa fa-eye"></i> 14,168</span>
		</div>
		<div class="content-article">					
			<figure class="thumbnail"><a href="./content.html"><img width="750" height="300" src="<%=basePath%>images/car_5.jpg" class="attachment-full wp-post-image" alt="car_5"></a></figure>							
			<div class="alert alert-zan">				
				HI，赞友们，在两个月前我们推出了ZanBlog3主题，但还是有一部分用户喜欢Zanblog2的样式，所以在V2.0.7发布8个多月之后，再次更新Zanblog2。
现在让我们一起看看 V2.1.0 所做的变动吧！

注：使用Zanblog2之前版本的用户需要注意，插件、侧边栏、主题选项、页面模版...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more" href="./content.html" title="详细阅读 Zanblog 更新至V2.1.0">阅读全文 <span class="badge">6</span></a>
	</section>
	<!-- 大型设备文章属性结束 -->

	<!-- 小型设备文章属性 -->
	<section class="visible-xs">
		<div class="title-article">
			<h4><a href="./content.html">Zanblog 更新至V2.1.0</a></h4>
		</div>
		<p>
			<i class="fa fa-calendar"></i> 9-13			<i class="fa fa-eye"></i> 14,168		</p>
		<div class="content-article">					
			<figure class="thumbnail"><a href="./content.html"><img width="750" height="300" src="<%=basePath%>images/car_5.jpg" class="attachment-full wp-post-image" alt="car_5"></a></figure>							
			<div class="alert alert-zan">					
				HI，赞友们，在两个月前我们推出了ZanBlog3主题，但还是有一部分用户喜欢Zanblog2的样式，所以在V2.0.7发布8个多月之后，再次更新Zanblog2。
现在让我们一起...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more btn-block" href="./content.html" title="详细阅读 Zanblog 更新至V2.1.0">阅读全文 <span class="badge">6</span></a>
	</section>
	<!-- 小型设备文章属性结束 -->

</div>

											<div class="article well clearfix">
	<i class="fa fa-bookmark article-stick visible-md visible-lg"></i>	
	<div class="data-article hidden-xs">
		<span class="month">7月</span>
		<span class="day">11</span>
	</div>

	<!-- 大型设备文章属性 -->
	<section class="hidden-xs">
		<div class="title-article">
			<h1><a href="http://www.yeahzan.com/zanblog/archives/843.html">
				ZanBlog3.0.0 正式发布！			</a></h1>
		</div>
		<div class="tag-article">
			<span class="label label-zan"><i class="fa fa-tags"></i> <a href="http://www.yeahzan.com/zanblog/archives/category/bootstrap" rel="category tag">Bootstrap3</a>,<a href="http://www.yeahzan.com/zanblog/archives/category/zanblog" rel="category tag">Zanblog</a></span>
			<span class="label label-zan"><i class="fa fa-user"></i> <a href="http://www.yeahzan.com/zanblog/archives/author/yeahzan" title="由佚站互联发布" rel="author">佚站互联</a></span>
			<span class="label label-zan"><i class="fa fa-eye"></i> 21,042</span>
		</div>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/843.html"><img width="750" height="300" src="<%=basePath%>images/zanblog3.jpg" class="attachment-full wp-post-image" alt="zanblog3"></a></figure>							
			<div class="alert alert-zan">				
				伴随着炎炎夏日和世界杯如火如荼 地进行，由佚站互联团队开发的ZanBlog3主题正式发布，非常抱歉这个主题拖延了这么久才发布（我们不会告诉你是因为世界杯的原因），不过相信看过这个主题之后，你们一定会爱上它，让我们看看ZanBlog3究竟带来了怎样的惊喜吧！
全新设...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more" href="http://www.yeahzan.com/zanblog/archives/843.html" title="详细阅读 ZanBlog3.0.0 正式发布！">阅读全文 <span class="badge">21</span></a>
	</section>
	<!-- 大型设备文章属性结束 -->

	<!-- 小型设备文章属性 -->
	<section class="visible-xs">
		<div class="title-article">
			<h4><a href="http://www.yeahzan.com/zanblog/archives/843.html">ZanBlog3.0.0 正式发布！</a></h4>
		</div>
		<p>
			<i class="fa fa-calendar"></i> 7-11			<i class="fa fa-eye"></i> 21,042		</p>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/843.html"><img width="750" height="300" src="<%=basePath%>images/zanblog3.jpg" class="attachment-full wp-post-image" alt="zanblog3"></a></figure>							
			<div class="alert alert-zan">					
				伴随着炎炎夏日和世界杯如火如荼 地进行，由佚站互联团队开发的ZanBlog3主题正式发布，非常抱歉这个主题拖延了这么久才发布（我们不会告诉你是因为世界杯的原...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more btn-block" href="http://www.yeahzan.com/zanblog/archives/843.html" title="详细阅读 ZanBlog3.0.0 正式发布！">阅读全文 <span class="badge">21</span></a>
	</section>
	<!-- 小型设备文章属性结束 -->

</div>

											<div class="article well clearfix">
		
	<div class="data-article hidden-xs">
		<span class="month">12月</span>
		<span class="day">31</span>
	</div>

	<!-- 大型设备文章属性 -->
	<section class="hidden-xs">
		<div class="title-article">
			<h1><a href="http://www.yeahzan.com/zanblog/archives/763.html">
				Zanblog 2.0.7（稳定版）更新			</a></h1>
		</div>
		<div class="tag-article">
			<span class="label label-zan"><i class="fa fa-tags"></i> <a href="http://www.yeahzan.com/zanblog/archives/category/zanblog" rel="category tag">Zanblog</a></span>
			<span class="label label-zan"><i class="fa fa-user"></i> <a href="http://www.yeahzan.com/zanblog/archives/author/yeahzan" title="由佚站互联发布" rel="author">佚站互联</a></span>
			<span class="label label-zan"><i class="fa fa-eye"></i> 49,134</span>
		</div>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/763.html"><img width="750" height="300" src="<%=basePath%>images/car_10.jpg" class="attachment-full wp-post-image" alt="car_10"></a></figure>							
			<div class="alert alert-zan">				
				HI，赞友们，Zanblog在2个月之后终于又迎来了更新，此前因为我们自身工作比较忙的缘故，迟迟未推出新版本，非常抱歉。
让我们一起看看 2.0.7 稳定版所做的变动吧！

在Zanblog 2.0.7 稳定版中，我们分成了完整主题安装包(Zanblog2.0.7.zip)以及补丁安装包(patch2.0.7...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more" href="http://www.yeahzan.com/zanblog/archives/763.html" title="详细阅读 Zanblog 2.0.7（稳定版）更新">阅读全文 <span class="badge">228</span></a>
	</section>
	<!-- 大型设备文章属性结束 -->

	<!-- 小型设备文章属性 -->
	<section class="visible-xs">
		<div class="title-article">
			<h4><a href="http://www.yeahzan.com/zanblog/archives/763.html">Zanblog 2.0.7（稳定版）更新</a></h4>
		</div>
		<p>
			<i class="fa fa-calendar"></i> 12-31			<i class="fa fa-eye"></i> 49,134		</p>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/763.html"><img width="750" height="300" src="<%=basePath%>images/car_10.jpg" class="attachment-full wp-post-image" alt="car_10"></a></figure>							
			<div class="alert alert-zan">					
				HI，赞友们，Zanblog在2个月之后终于又迎来了更新，此前因为我们自身工作比较忙的缘故，迟迟未推出新版本，非常抱歉。
让我们一起看看 2.0.7 稳定版所做的变...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more btn-block" href="http://www.yeahzan.com/zanblog/archives/763.html" title="详细阅读 Zanblog 2.0.7（稳定版）更新">阅读全文 <span class="badge">228</span></a>
	</section>
	<!-- 小型设备文章属性结束 -->

</div>

											<div class="article well clearfix">
		
	<div class="data-article hidden-xs">
		<span class="month">10月</span>
		<span class="day">30</span>
	</div>

	<!-- 大型设备文章属性 -->
	<section class="hidden-xs">
		<div class="title-article">
			<h1><a href="http://www.yeahzan.com/zanblog/archives/685.html">
				Zanblog 2.0.6 版本更新			</a></h1>
		</div>
		<div class="tag-article">
			<span class="label label-zan"><i class="fa fa-tags"></i> <a href="http://www.yeahzan.com/zanblog/archives/category/zanblog" rel="category tag">Zanblog</a></span>
			<span class="label label-zan"><i class="fa fa-user"></i> <a href="http://www.yeahzan.com/zanblog/archives/author/yeahzan" title="由佚站互联发布" rel="author">佚站互联</a></span>
			<span class="label label-zan"><i class="fa fa-eye"></i> 15,847</span>
		</div>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/685.html"><img width="750" height="300" src="<%=basePath%>images/car_3.jpg" class="attachment-full wp-post-image" alt="car_3"></a></figure>							
			<div class="alert alert-zan">				
				HI，Zanblog再次更新了。
我们希望Zanblog能够满足大多数朋友对于博客的需求，所以我们会尽可能根据大家的反馈再对主题进行修改。让我们一起看看 2.0.6 版本所做的变动吧！
1.加入相关文章模块
2.添加文章上一篇、下一篇的功能
3.将fontawesome图标更新为最新版本4.0...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more" href="http://www.yeahzan.com/zanblog/archives/685.html" title="详细阅读 Zanblog 2.0.6 版本更新">阅读全文 <span class="badge">117</span></a>
	</section>
	<!-- 大型设备文章属性结束 -->

	<!-- 小型设备文章属性 -->
	<section class="visible-xs">
		<div class="title-article">
			<h4><a href="http://www.yeahzan.com/zanblog/archives/685.html">Zanblog 2.0.6 版本更新</a></h4>
		</div>
		<p>
			<i class="fa fa-calendar"></i> 10-30			<i class="fa fa-eye"></i> 15,847		</p>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/685.html"><img width="750" height="300" src="<%=basePath%>images/car_3.jpg" class="attachment-full wp-post-image" alt="car_3"></a></figure>							
			<div class="alert alert-zan">					
				HI，Zanblog再次更新了。
我们希望Zanblog能够满足大多数朋友对于博客的需求，所以我们会尽可能根据大家的反馈再对主题进行修改。让我们一起看看 2.0.6 版本...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more btn-block" href="http://www.yeahzan.com/zanblog/archives/685.html" title="详细阅读 Zanblog 2.0.6 版本更新">阅读全文 <span class="badge">117</span></a>
	</section>
	<!-- 小型设备文章属性结束 -->

</div>

											<div class="article well clearfix">
		
	<div class="data-article hidden-xs">
		<span class="month">10月</span>
		<span class="day">16</span>
	</div>

	<!-- 大型设备文章属性 -->
	<section class="hidden-xs">
		<div class="title-article">
			<h1><a href="http://www.yeahzan.com/zanblog/archives/618.html">
				Zanblog 2.0.5 版本更新			</a></h1>
		</div>
		<div class="tag-article">
			<span class="label label-zan"><i class="fa fa-tags"></i> <a href="http://www.yeahzan.com/zanblog/archives/category/zanblog" rel="category tag">Zanblog</a></span>
			<span class="label label-zan"><i class="fa fa-user"></i> <a href="http://www.yeahzan.com/zanblog/archives/author/yeahzan" title="由佚站互联发布" rel="author">佚站互联</a></span>
			<span class="label label-zan"><i class="fa fa-eye"></i> 8,016</span>
		</div>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/618.html"><img width="750" height="300" src="<%=basePath%>images/car_8.jpg" class="attachment-full wp-post-image" alt="car_8"></a></figure>							
			<div class="alert alert-zan">				
				HI，Zanblog再次更新了。
我们希望Zanblog能够满足大多数朋友对于博客的需求，所以我们会尽可能根据大家的反馈再对主题进行修改。让我们一起看看 2.0.5 版本所做的变动吧！
1、加入文章存档，可以方便访客查看网站上的所有文章。
2、不再需要安装Link Manager插件来...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more" href="http://www.yeahzan.com/zanblog/archives/618.html" title="详细阅读 Zanblog 2.0.5 版本更新">阅读全文 <span class="badge">45</span></a>
	</section>
	<!-- 大型设备文章属性结束 -->

	<!-- 小型设备文章属性 -->
	<section class="visible-xs">
		<div class="title-article">
			<h4><a href="http://www.yeahzan.com/zanblog/archives/618.html">Zanblog 2.0.5 版本更新</a></h4>
		</div>
		<p>
			<i class="fa fa-calendar"></i> 10-16			<i class="fa fa-eye"></i> 8,016		</p>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/618.html"><img width="750" height="300" src="<%=basePath%>images/car_8.jpg" class="attachment-full wp-post-image" alt="car_8"></a></figure>							
			<div class="alert alert-zan">					
				HI，Zanblog再次更新了。
我们希望Zanblog能够满足大多数朋友对于博客的需求，所以我们会尽可能根据大家的反馈再对主题进行修改。让我们一起看看 2.0.5 版本...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more btn-block" href="http://www.yeahzan.com/zanblog/archives/618.html" title="详细阅读 Zanblog 2.0.5 版本更新">阅读全文 <span class="badge">45</span></a>
	</section>
	<!-- 小型设备文章属性结束 -->

</div>

											<div class="article well clearfix">
		
	<div class="data-article hidden-xs">
		<span class="month">9月</span>
		<span class="day">29</span>
	</div>

	<!-- 大型设备文章属性 -->
	<section class="hidden-xs">
		<div class="title-article">
			<h1><a href="http://www.yeahzan.com/zanblog/archives/575.html">
				Zanblog 2.0.4 版本更新			</a></h1>
		</div>
		<div class="tag-article">
			<span class="label label-zan"><i class="fa fa-tags"></i> <a href="http://www.yeahzan.com/zanblog/archives/category/bootstrap" rel="category tag">Bootstrap3</a>,<a href="http://www.yeahzan.com/zanblog/archives/category/zanblog" rel="category tag">Zanblog</a></span>
			<span class="label label-zan"><i class="fa fa-user"></i> <a href="http://www.yeahzan.com/zanblog/archives/author/yeahzan" title="由佚站互联发布" rel="author">佚站互联</a></span>
			<span class="label label-zan"><i class="fa fa-eye"></i> 9,063</span>
		</div>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/575.html"><img width="750" height="300" src="<%=basePath%>images/car_6.jpg" class="attachment-full wp-post-image" alt="car_6"></a></figure>							
			<div class="alert alert-zan">				
				HI，Zanblog再次更新了。
我们希望Zanblog能够满足大多数朋友对于博客的需求，所以我们会尽可能根据大家的反馈再对主题进行修改。
让我们一起看看 2.0.4 版本所做的变动吧！

1.通过HTML5对导航栏的固定状态进行本地存储，保证刷新页面之后该状态仍旧保留。
2.修正了...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more" href="http://www.yeahzan.com/zanblog/archives/575.html" title="详细阅读 Zanblog 2.0.4 版本更新">阅读全文 <span class="badge">42</span></a>
	</section>
	<!-- 大型设备文章属性结束 -->

	<!-- 小型设备文章属性 -->
	<section class="visible-xs">
		<div class="title-article">
			<h4><a href="http://www.yeahzan.com/zanblog/archives/575.html">Zanblog 2.0.4 版本更新</a></h4>
		</div>
		<p>
			<i class="fa fa-calendar"></i> 9-29			<i class="fa fa-eye"></i> 9,063		</p>
		<div class="content-article">					
			<figure class="thumbnail"><a href="http://www.yeahzan.com/zanblog/archives/575.html"><img width="750" height="300" src="<%=basePath%>images/car_6.jpg" class="attachment-full wp-post-image" alt="car_6"></a></figure>							
			<div class="alert alert-zan">					
				HI，Zanblog再次更新了。
我们希望Zanblog能够满足大多数朋友对于博客的需求，所以我们会尽可能根据大家的反馈再对主题进行修改。
让我们一起看看 2.0.4 版本...			</div>
		</div>
		<a class="btn btn-danger pull-right read-more btn-block" href="http://www.yeahzan.com/zanblog/archives/575.html" title="详细阅读 Zanblog 2.0.4 版本更新">阅读全文 <span class="badge">42</span></a>
	</section>
	<!-- 小型设备文章属性结束 -->

</div>

									</div>
				<!-- 内容主体结束 -->

				<!-- 广告 -->
		    		    <!-- 广告结束 -->

				<!-- 分页 -->
									<div id="zan-page" class="clearfix">
  <ul class="pagination pagination-zan pull-right">
    <li></li><li class="active"><span>1</span></li><li><a href="http://www.yeahzan.com/zanblog/page/2">2</a></li><li><a href="http://www.yeahzan.com/zanblog/page/3">3</a></li><li><a href="http://www.yeahzan.com/zanblog/page/4">4</a></li><li><a href="http://www.yeahzan.com/zanblog/page/2">»</a></li>  </ul>
</div>
								<!-- 分页结束 -->

			</div>

			<aside class="col-md-4" id="sidebar">
    <aside id="zan_login-2">        <div class="panel panel-zan">
      <div class="panel-heading">请登录</div>
      <form class="login-form clearfix" action="http://www.yeahzan.com/zanblog/wp-login.php" method="post">
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-user"></i></div>
            <input class="form-control" type="text" name="log" id="log" value="" size="20">
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-lock"></i></div>
            <input class="form-control" type="password" name="pwd" id="pwd" size="20">
          </div>
        </div>
        <button class="btn btn-inverse-primary pull-left" type="submit" name="submit">登录</button>
        <a href="http://www.yeahzan.com/zanblog/wp-login.php?action=register" class="btn btn-inverse-primary pull-right">注册</a>
      </form>
    </div>
        </aside><aside id="zan_search-2">      <div class="search">
         <form class="form-inline clearfix" method="get" id="searchform" action="http://www.yeahzan.com/zanblog">
            <input class="form-control" type="text" name="s" id="s" placeholder="搜索...">
            <button type="submit" class="btn btn-danger btn-small" name="submit"><i class="fa fa-search"></i></button>
         </form>
      </div>
    </aside><aside id="zan_hotest_posts-2">      <div class="panel panel-zan hot hidden-xs">
        <div class="panel-heading">
          <i class="fa fa-fire"></i> 最热文章          <i class="fa fa-times-circle panel-remove"></i>
          <i class="fa fa-chevron-circle-up panel-toggle"></i>
        </div>
        <ul class="list-group list-group-flush">
                      <li class="list-group-item">
              <span class="post-title">
                <a href="http://www.yeahzan.com/zanblog/archives/763.html" title="Zanblog 2.0.7（稳定版）更新">
                Zanblog 2.0.7（稳定版）更新                </a>
              </span>
                            <span class="badge">49,134</span>
                          </li>
                      <li class="list-group-item">
              <span class="post-title">
                <a href="http://www.yeahzan.com/zanblog/archives/394.html" title="Zanblog常见问题汇总">
                Zanblog常见问题汇总                </a>
              </span>
                            <span class="badge">36,100</span>
                          </li>
                      <li class="list-group-item">
              <span class="post-title">
                <a href="http://www.yeahzan.com/zanblog/archives/457.html" title="Zanblog使用说明及插件设置">
                Zanblog使用说明及插件设置                </a>
              </span>
                            <span class="badge">34,556</span>
                          </li>
                      <li class="list-group-item">
              <span class="post-title">
                <a href="http://www.yeahzan.com/zanblog/archives/328.html" title="Zanblog侧边栏与菜单设置说明文档">
                Zanblog侧边栏与菜单设置说明文档                </a>
              </span>
                            <span class="badge">22,460</span>
                          </li>
                      <li class="list-group-item">
              <span class="post-title">
                <a href="http://www.yeahzan.com/zanblog/archives/685.html" title="Zanblog 2.0.6 版本更新">
                Zanblog 2.0.6 版本更新                </a>
              </span>
                            <span class="badge">15,847</span>
                          </li>
                      <li class="list-group-item">
              <span class="post-title">
                <a href="http://www.yeahzan.com/zanblog/archives/131.html" title="Zanblog主题说明与下载（旧）">
                Zanblog主题说明与下载（旧）                </a>
              </span>
                            <span class="badge">9,282</span>
                          </li>
                      <li class="list-group-item">
              <span class="post-title">
                <a href="http://www.yeahzan.com/zanblog/archives/531.html" title="Zanblog 2.0.3 版本更新">
                Zanblog 2.0.3 版本更新                </a>
              </span>
                            <span class="badge">6,976</span>
                          </li>
                      <li class="list-group-item">
              <span class="post-title">
                <a href="http://www.yeahzan.com/zanblog/archives/618.html" title="Zanblog 2.0.5 版本更新">
                Zanblog 2.0.5 版本更新                </a>
              </span>
                            <span class="badge">8,016</span>
                          </li>
                  </ul>
      </div>
    </aside><aside id="zan_latest_comments-2">
      <div class="panel panel-zan hidden-xs">
        <div class="panel-heading">
          <i class="fa fa-comments"></i> 最新评论          <i class="fa fa-times-circle panel-remove"></i>
          <i class="fa fa-chevron-circle-up panel-toggle"></i>
        </div>
        <ul class="list-group list-group-flush">
                      <li class="list-group-item">
              <span class="author-avatar"><img alt="" src="<%=basePath%>images/9836b1265103ed08e9860b9baabd8eae" class="avatar avatar-40 photo" height="40" width="40"></span>
              <span class="comment-log">
                <a href="http://www.yeahzan.com/zanblog/message/comment-page-23#comment-2128">
                  你好！请问下位置首页文章表情下的阅读全文数量一直为0
能帮我看下吗谢谢！
我的...                </a>
              </span>
            </li>
                      <li class="list-group-item">
              <span class="author-avatar"><img alt="" src="<%=basePath%>images/9836b1265103ed08e9860b9baabd8eae" class="avatar avatar-40 photo" height="40" width="40"></span>
              <span class="comment-log">
                <a href="http://www.yeahzan.com/zanblog/message/comment-page-23#comment-2129">
                  你好！请问下位置首页文章表情下的阅读全文数量一直为0
能帮我看下吗谢谢！
我的...                </a>
              </span>
            </li>
                      <li class="list-group-item">
              <span class="author-avatar"><img alt="" src="<%=basePath%>images/9836b1265103ed08e9860b9baabd8eae" class="avatar avatar-40 photo" height="40" width="40"></span>
              <span class="comment-log">
                <a href="./content.html/comment-page-1#comment-2127">
                  怎么设置手机不显示文章摘要                </a>
              </span>
            </li>
                      <li class="list-group-item">
              <span class="author-avatar"><img alt="" src="<%=basePath%>images/9f65d09b03095d6f08fbd27c422f4b68" class="avatar avatar-40 photo" height="40" width="40"></span>
              <span class="comment-log">
                <a href="http://www.yeahzan.com/zanblog/message/comment-page-23#comment-2085">
                  今天看了在留言板里面找 用过zanblog 2 版本的 找了N久  所有上了网站的 居然都换...                </a>
              </span>
            </li>
                      <li class="list-group-item">
              <span class="author-avatar"><img alt="" src="<%=basePath%>images/9f65d09b03095d6f08fbd27c422f4b68" class="avatar avatar-40 photo" height="40" width="40"></span>
              <span class="comment-log">
                <a href="http://www.yeahzan.com/zanblog/message/comment-page-23#comment-2086">
                  今天看了在留言板里面找 用过zanblog 2 版本的 找了N久  所有上了网站的 居然都换...                </a>
              </span>
            </li>
                      <li class="list-group-item">
              <span class="author-avatar"><img alt="" src="<%=basePath%>images/9f65d09b03095d6f08fbd27c422f4b68" class="avatar avatar-40 photo" height="40" width="40"></span>
              <span class="comment-log">
                <a href="http://www.yeahzan.com/zanblog/message/comment-page-23#comment-2084">
                  为什么 我这边 点开 子分类的 文章  
标题上面主目录并没有 变成红色 也就是高亮...                </a>
              </span>
            </li>
                  </ul>
      </div>
    </aside><aside id="zan_sets-2">
    <div class="panel  panel-zan hidden-xs">
      <ul class="nav nav-pills pills-zan">
        <li class="active"><a href="http://www.yeahzan.com/zanblog/#sidebar-categories" data-toggle="tab">分类目录</a></li>
        <li><a href="http://www.yeahzan.com/zanblog/#sidebar-tags" data-toggle="tab">热门标签</a></li>
                <li><a href="http://www.yeahzan.com/zanblog/#sidebar-links" data-toggle="tab">友情链接</a></li>
              </ul>
      <div class="tab-content">
        <div class="tab-pane active nav bs-sidenav fade in" id="sidebar-categories">	<li class="cat-item cat-item-21"><a href="http://www.yeahzan.com/zanblog/archives/category/bootstrap">Bootstrap3</a>
</li>
	<li class="cat-item cat-item-17"><a href="http://www.yeahzan.com/zanblog/archives/category/wordpress">WordPress</a>
</li>
	<li class="cat-item cat-item-29"><a href="http://www.yeahzan.com/zanblog/archives/category/zanblog">Zanblog</a>
</li>
</div>
        <div class="tab-pane fade" id="sidebar-tags"><a href="http://www.yeahzan.com/zanblog/archives/tag/bootstrap" class="tag-link-21" title="2个话题" style="color:#9706fb;font-size: 10.204081632653pt;;">Bootstrap3</a>
<a href="http://www.yeahzan.com/zanblog/archives/tag/wordpress%e4%b8%bb%e9%a2%98" class="tag-link-22" title="4个话题" style="color:#c6ab52;font-size: 12.897959183673pt;;">WordPress</a>
<a href="http://www.yeahzan.com/zanblog/archives/tag/zanblog" class="tag-link-29" title="18个话题" style="color:#12c10d;font-size: 20pt;;">Zanblog</a>
<a href="http://www.yeahzan.com/zanblog/archives/tag/zanui" class="tag-link-32" title="1个话题" style="color:#c35833;font-size: 8pt;;">ZanUI</a>
<a href="http://www.yeahzan.com/zanblog/archives/tag/%e4%b8%bb%e9%a2%98%e8%ae%be%e7%bd%ae" class="tag-link-33" title="3个话题" style="color:#8773c1;font-size: 11.673469387755pt;;">主题设置</a></div>
                <div class="tab-pane nav bs-sidenav fade" id="sidebar-links"><li><a href="http://www.yeahzan.com/course/81-bs-1-1.html" target="_blank">Bootstrap教程</a></li>
<li><a href="http://www.yeahzan.com/course/107-wp.html" target="_blank">WordPress教程</a></li>
<li><a href="http://www.zanwp.com/" title="杭州网站建设" target="_blank">杭州网站建设</a></li>
<li><a href="http://www.yeahzan.com/" title="杭州网站建设" target="_blank">网站建设</a></li>
</div>
              </div>
    </div>
    </aside>    </aside>		</div>
	</div>
</div>

<jsp:include page="footer.jsp" flush="true"></jsp:include>

<!-- 回到顶端 -->
<div id="zan-gotop" style="bottom: -40px;">
	<i class="fa fa-angle-up"></i>
</div>
<!-- 回到顶端结束 -->

<script type="text/javascript">
/* <![CDATA[ */
var infinite_scroll = "{\"loading\":{\"msgText\":\"\",\"finishedMsg\":\"<p class=\\\"alert alert-danger\\\"><i class=\\\"fa fa-warning\\\"><\\\/i> \\u5185\\u5bb9\\u52a0\\u8f7d\\u5b8c\\u6bd5<\\\/p>\",\"img\":\"http:\\\/\\\/localhost\\\/zanblog\\\/wp-content\\\/plugins\\\/infinite-scroll\\\/img\\\/ajax-loader.gif\"},\"nextSelector\":\"#load-more\",\"navSelector\":\"#load-more\",\"itemSelector\":\".article\",\"contentSelector\":\"#article-list\",\"debug\":false,\"behavior\":\"twitter\",\"callback\":\"jQuery(\\\"#load-more\\\").removeClass(\\\"disabled\\\");\\r\\njQuery(\\\"#load-more i\\\").removeClass(\\\"fa fa-spinner\\\");\\r\\njQuery(\\\"#load-more attr\\\").text(\\\"\\u52a0\\u8f7d\\u66f4\\u591a\\\");\"}";
/* ]]> */
</script>
<script type="text/javascript" src="<%=basePath%>js/jquery.infinitescroll.js"></script>
<script type="text/javascript" src="<%=basePath%>js/manual-trigger.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jQuery.easing.min.js"></script>
<script type="text/javascript">
// Because the `wp_localize_script` method makes everything a string
infinite_scroll = jQuery.parseJSON(infinite_scroll);

jQuery( infinite_scroll.contentSelector ).infinitescroll( infinite_scroll, function(newElements, data, url) { eval(infinite_scroll.callback); });
</script>

<script type="text/javascript" src="<%=basePath%>js/article/article_list.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.lazyload.js"></script>	

</body></html>