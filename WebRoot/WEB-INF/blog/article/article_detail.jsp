<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 设置标题 -->
<title>${article.title} - 行者在路上 | Zanblog</title>
<!-- 设置标题结束 -->

<!-- 设置关键词、描述 -->
<!-- 设置关键词、描述结束 -->


<meta
	content="HI，赞友们，在两个月前我们推出了ZanBlog3主题，但还是有一部分用户喜欢Zanblog2的样式，所以在V2.0.7发布8个多月之"
	name="description">
<meta content="Zanblog, " name="keywords">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="alternate" type="application/rss+xml"
	title="Zanblog » Zanblog 更新至V2.1.0评论Feed"
	href="http://localhost:8080/SmartPro/archives/856.html/feed">
<link rel="stylesheet" id="bootstrap-style-css"
	href="<%=basePath%>css/bootstrap.css" type="text/css" media="all">
<link rel="stylesheet" id="fontawesome-style-css"
	href="<%=basePath%>css/font-awesome.min.css" type="text/css"
	media="all">
<link rel="stylesheet" id="icheck-style-css"
	href="<%=basePath%>css/red.css" type="text/css" media="all">
<link rel="stylesheet" id="custom-style-css"
	href="<%=basePath%>css/core.css" type="text/css" media="all">
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.icheck.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.validate.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/zanblog.js"></script>
<script type="text/javascript" src="<%=basePath%>js/custom.js"></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="http://localhost:8080/SmartPro/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="http://localhost:8080/SmartPro/wp-includes/wlwmanifest.xml">
<link rel="prev" title="ZanBlog3.0.0 正式发布！"
	href="http://localhost:8080/SmartPro/archives/843.html">
<meta name="generator" content="WordPress 4.0.10">
<link rel="canonical"
	href="http://localhost:8080/SmartPro/archives/856.html">
<link rel="shortlink" href="http://localhost:8080/SmartPro/?p=856">
<style type="text/css" id="syntaxhighlighteranchor"></style>

<!--[if lt IE 9]>
  <script src="<%=basePath%>js/ui/js/modernizr.js"></script>
  <script src="<%=basePath%>js/ui/js/respond.min.js"></script>
  <script src="<%=basePath%>js/ui/js/html5shiv.js"></script>
<![endif]-->

<script src="<%=basePath%>js/share.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/">
</head>
<body class="single single-post postid-856 single-format-standard nav-fixed">
	<header id="zan-header" class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="http://localhost:8080/SmartPro"><div
						class="navbar-brand"></div></a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".bs-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="fa fa-reorder fa-lg"></span>
				</button>
			</div>
			<nav class="navbar-collapse bs-navbar-collapse collapse">
				<ul id="menu-navbar" class="nav navbar-nav">
					<li id="menu-item-215"
						class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-215"><a
						title="Zanblog首页" href="<%=basePath%>"><i class="fa fa-home"></i>
							首页</a></li>
					<li id="menu-item-676"
						class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-676"><a><i
							class="fa fa-cog"></i> 相关技术</a>
						<ul class="dropdown-menu">
							<li id="menu-item-677"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-677"><a
								target="_blank"
								href="http://www.yeahzan.com/blog/item/42-71.html">Bootstrap3</a></li>
							<li id="menu-item-678"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-678"><a
								target="_blank"
								href="http://www.yeahzan.com/blog/item/42-63.html">WordPress</a></li>
							<li id="menu-item-680"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-680"><a
								target="_blank"
								href="http://www.yeahzan.com/blog/item/42-80.html">FontAwesome</a></li>
							<li id="menu-item-681"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-681"><a
								target="_blank"
								href="http://www.yeahzan.com/blog/item/42-58.html">扁平化设计</a></li>
							<li id="menu-item-682"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-682"><a
								target="_blank"
								href="http://www.yeahzan.com/blog/item/42-77.html">响应式布局</a></li>
						</ul></li>
					<li id="menu-item-604"
						class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-604"><a
						title="相关下载" rel="nofollow"><i class=" fa fa-download"></i>
							相关下载</a>
						<ul class="dropdown-menu">
							<li id="menu-item-863"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-863"><a
								href="http://localhost:8080/SmartPro/download"><i
									class="fa fa-heart"></i> 主题下载</a></li>
							<li id="menu-item-605"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-605"><a
								target="_blank" rel="nofollow"
								href="http://localhost:8080/SmartPro/download"><i
									class="fa fa-wrench"></i> 插件包下载</a></li>
							<li id="menu-item-546"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-546"><a
								title="ZanUI"
								href="http://localhost:8080/SmartPro/archives/538.html"><i
									class="fa fa-gift"></i> ZanUI下载</a></li>
						</ul></li>
					<li id="menu-item-675"
						class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-675"><a><i
							class="fa fa-question-circle"></i> 问题板块</a>
						<ul class="dropdown-menu">
							<li id="menu-item-601"
								class="menu-item menu-item-type-post_type menu-item-object-post menu-item-601"><a
								href="http://localhost:8080/SmartPro/archives/394.html"><i
									class="fa fa-info-circle"></i> 常见问题</a></li>
							<li id="menu-item-213"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-213"><a
								title="问题反馈" rel="nofollow"
								href="http://localhost:8080/SmartPro/message"><i
									class="fa fa-pencil"></i> 问题反馈</a></li>
							<li id="menu-item-683"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-683"><a
								href="http://localhost:8080/SmartPro/archives/457.html"><i
									class="fa fa-wrench"></i> 使用说明及插件设置</a></li>
							<li id="menu-item-684"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-684"><a
								href="http://localhost:8080/SmartPro/archives/328.html"><i
									class="fa fa-cog"></i> 侧边栏与导航设置</a></li>
						</ul></li>
					<li id="menu-item-556"
						class="dropdown menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-556"><a
						href="http://localhost:8080/SmartPro/style"><i
							class="fa fa-magic"></i> 样式参考</a>
						<ul class="dropdown-menu">
							<li id="menu-item-557"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-557"><a
								href="http://localhost:8080/SmartPro/style#btn-css">按钮CSS样式</a></li>
							<li id="menu-item-558"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-558"><a
								href="http://localhost:8080/SmartPro/style#alert-css">背景框CSS样式</a></li>
							<li id="menu-item-559"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-559"><a
								href="http://localhost:8080/SmartPro/style#block-css">文本引用CSS样式</a></li>
						</ul></li>
					<li id="menu-item-607"
						class="menu-item menu-item-type-custom menu-item-object-custom menu-item-607"><a
						target="_blank" href="http://www.yeahzan.com/fa/facss.html"><i
							class="fa fa-star"></i> 图标参考</a></li>
					<li id="menu-item-294"
						class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-294"><a
						title="更新日志" rel="nofollow"><i class="fa fa-book"></i> 更新日志</a>
						<ul class="dropdown-menu">
							<li id="menu-item-455"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-455"><a
								rel="nofollow"
								href="http://localhost:8080/SmartPro/archives/435.html">V1.0</a></li>
							
						</ul>
					</li>
				</ul>
			</nav>
		</div>
		<div id="if-fixed" class="pull-right visible-lg visible-md">
			<i class="fa fa-thumb-tack"></i>
			<div class="icheckbox_flat-red checked" style="position: relative;">
				<input type="checkbox" style="position: absolute; opacity: 0;">
				<ins class="iCheck-helper"
					style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
			</div>
		</div>
	</header>
	<div id="zan-bodyer">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<!-- 广告 -->
					<!-- 广告结束 -->

					<!-- 内容主体 -->
					<article class="article container well">

						<!-- 面包屑 -->
						<div class="breadcrumb">
							<i class="fa fa-home"></i>
							<!-- Breadcrumb NavXT 4.4.0 -->
							<a title="Go to Zanblog." href="<%=basePath%>" class="home"> 行者在路上 |
								Zanblog</a> / ${article.title}
						</div>
						<!-- 面包屑结束 -->

						<!-- 大型设备文章属性 -->
						<div class="hidden-xs">
							<div class="title-article">
								<h1>
									<a href="<%=basePath%>article/html/${article.id}">${article.title}</a>
								</h1>
							</div>
							<div class="tag-article container">
								<span class="label label-zan"><i class="fa fa-tags"></i>
									${article.createTime}</span> <span class="label label-zan"><i
									class="fa fa-tags"></i> <a href="#" rel="category tag">${article.categoryName}</a></span>
								<span class="label label-zan"><i class="fa fa-user"></i>
									<a href="#" title="由${article.author}发布" rel="author">${article.author}</a></span>
								<span class="label label-zan"><i class="fa fa-eye"></i>
									${article.showCount}</span>
							</div>
						</div>
						<!-- 大型设备文章属性结束 -->

						<!-- 小型设备文章属性 -->
						<div class="visible-xs">
							<div class="title-article">
								<h4>
									<a href="<%=basePath%>article/html/${article.id}">${article.title}</a>
								</h4>
							</div>
							<p>
								<i class="fa fa-calendar"></i> ${article.createTime} <i
									class="fa fa-eye"></i> ${article.showCount}
							</p>
						</div>
						<!-- 小型设备文章属性结束 -->

						<div class="centent-article">
							<figure class="thumbnail hidden-xs">
								<img width="750" height="300"
									src="<%=basePath%>uploads/car_10.jpg"
									class="attachment-full wp-post-image" alt="car_5">
							</figure>
							<div class="alert alert-info">
								${article.content}
							</div>
							
							<div class="alert alert-danger">
								注：div class="alert alert-danger"
							</div>

							<h3>属性blockquote</h3>
							<blockquote>
								<p>注：属性blockquote 引用</p>			
							</blockquote>
							
							<p>
								<a href="#" class="btn btn-warning">文档下载</a>
							</p>

							<!-- 分页 -->
							<div class="zan-page bs-example">
								<ul class="pager">
									<c:if test="${beforeArticle != null}">								
									   <li class="previous"><a href="<%=basePath%>article/html/${beforeArticle.id}" rel="prev">上一篇：&nbsp;&nbsp;${beforeArticle.title}</a></li>
									</c:if>
									
									<c:if test="${nextArticle != null}">
									<li class="next"><a href="<%=basePath%>article/html/${nextArticle.id}" rel="next">下一篇：&nbsp;&nbsp;${nextArticle.title}</a>
									</li>
									</c:if>

								</ul>
							</div>
							<!-- 分页 -->

							<!-- 文章版权信息 -->
							<div class="copyright alert alert-success">
							   <!-- 
								<p>
									版权属于: <a href="#">Zanblog</a>
								</p>
								<p>
									原文地址: <a
										href="<%=basePath%>article/html/${article.id}"><%=basePath%>article/html/${article.id}</a>
								</p>
								 -->
								<p>未经允许不得转载：<a href="<%=basePath%>">行者在路上 | Zanblog</a> » <a href="<%=basePath%>article/html/${article.id}">${article.title}</a></p>
							</div>
							<!-- 文章版权信息结束 -->

							<!-- 文章分享 -->
							<div class="clearfix" id="bdshare">
								<div
									class="bdsharebuttonbox pull-right bdshare-button-style1-24"
									data-bd-bind="1459495188757">
									<a href="http://localhost:8080/SmartPro/archives/856.html#"
										class="bds_more" data-cmd="more"></a> <a
										href="http://localhost:8080/SmartPro/archives/856.html#"
										class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a> <a
										href="http://localhost:8080/SmartPro/archives/856.html#"
										class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a> <a
										href="http://localhost:8080/SmartPro/archives/856.html#"
										class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
								</div>
							</div>
							<!-- 文章分享结束 -->

							<script>
								window._bd_share_config = {
									"common" : {
										"bdSnsKey" : {},
										"bdText" : "",
										"bdMini" : "2",
										"bdMiniList" : false,
										"bdPic" : "",
										"bdStyle" : "1",
										"bdSize" : "24"
									},
									"share" : {}
								};
								with (document)
									0[(getElementsByTagName('head')[0] || body)
											.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
											+ ~(-new Date() / 36e5)];
							</script>
							<!-- Baidu Button END -->
						</div>
					</article>
					<!-- 内容主体结束 -->

					<!-- 广告 -->
					<!-- 广告结束 -->

					<!-- 相关文章 -->
					<div class="bs-example visible-md visible-lg" id="post-related">
						<div class="row">
						
			<c:if test="${relationList != null && fn:length(relationList) > 0}">
					<div class="alert alert-danger related-title text-center">
								<i class="fa fa-heart"></i> 您可能也喜欢:
					</div>
					<c:forEach items="${relationList}" var="relation">
					
					<div class="col-md-4">
								<div class="thumbnail">
									<div class="caption clearfix">
										<p class="post-related-title">
											<a href="<%=basePath%>article/html/${relation.id}"
												rel="bookmark" title="${relation.title}">${relation.title}</a>
										</p>
										<p class="post-related-content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${fn:substring(relation.description, 0, 118)}...</p>
										<p>
											<a class="btn btn-danger pull-right read-more"
												href="<%=basePath%>article/html/${relation.id}"
												title="详细阅读 ${relation.title}">阅读全文</a>
										</p>
									</div>
								</div>
							</div>
					</c:forEach>

			</c:if>

						</div>
					</div>
					<!-- 相关文章结束 -->

					<div id="comments-template">
						<div class="comments-wrap">
							<div id="comments"
								data-url="http://localhost:8080/SmartPro/wp-content/themes/zanblog2_1_0/includes/comment-ajax.php">
								<h3 id="comments-title" class="comments-header alert alert-info">
									<i class="fa fa-comments"></i> 6 条评论
								</h3>
								<div id="loading-comments">
									<i class="fa fa-spinner fa-spin"></i>
								</div>
								<ol class="commentlist">
									<li id="comment-2127"
										class="comment byuser comment-author-wuyuyuan even thread-even depth-1">
										<article id="div-comment-2127" class="comment-body">
											<footer class="comment-meta">
												<div class="comment-author vcard">
													<img alt=""
														src="<%=basePath%>images/5f3ec2c2e67799398424e2357827e6fa"
														class="avatar avatar-70 photo" height="70" width="70">
													<b class="fn"><a href="http://www.cctt1.com/"
														rel="external nofollow" class="url">wuyuyuan</a></b><span
														class="says">说道：</span>
												</div>
												<!-- .comment-author -->

												<div class="comment-metadata">
													<a
														href="http://localhost:8080/SmartPro/archives/856.html/comment-page-1#comment-2127">
														<time datetime="2015-01-09T22:27:01+00:00">
															2015/01/09 22:27 </time>
													</a>
												</div>
												<!-- .comment-metadata -->

											</footer>
											<!-- .comment-meta -->

											<div class="comment-content">
												<p>怎么设置手机不显示文章摘要</p>
											</div>
											<!-- .comment-content -->

											<div class="reply">
												<a rel="nofollow" class="comment-reply-login"
													href="#">登录以回复</a>
											</div>
											<!-- .reply -->
										</article>
										<!-- .comment-body -->
									</li>
									<!-- #comment-## -->
								</ol>
							</div>
							<div id="respond" class="comment-respond">
								<h3 id="reply-title" class="comment-reply-title">
									<i class="fa fa-pencil"></i> 欢迎留言 <small><a
										rel="nofollow" id="cancel-comment-reply-link"
										href="http://localhost:8080/SmartPro/archives/856.html#respond"
										style="display: none;">取消回复</a></small>
								</h3>
								<p class="must-log-in">
									要发表评论，您必须先<a
										href="http://localhost:8080/SmartPro/wp-login.php?redirect_to=http%3A%2F%2Fwww.yeahzan.com%2Fzanblog%2Farchives%2F856.html">登录</a>。
								</p>
							</div>
							<!-- #respond -->

						</div>
					</div>
					<script type="text/javascript" language="javascript">
						/* <![CDATA[ */
						var smiley = jQuery("#smilelink");
						clone = smiley.clone();
						comment = jQuery("#comment");

						smiley.remove();
						comment.before(smiley);

						function grin(tag) {
							var myField;
							tag = ' ' + tag + ' ';
							if (document.getElementById('comment')
									&& document.getElementById('comment').type == 'textarea') {
								myField = document.getElementById('comment');
							} else {
								return false;
							}
							if (document.selection) {
								myField.focus();
								sel = document.selection.createRange();
								sel.text = tag;
								myField.focus();
							} else if (myField.selectionStart
									|| myField.selectionStart == '0') {
								var startPos = myField.selectionStart;
								var endPos = myField.selectionEnd;
								var cursorPos = endPos;
								myField.value = myField.value.substring(0,
										startPos)
										+ tag
										+ myField.value.substring(endPos,
												myField.value.length);
								cursorPos += tag.length;
								myField.focus();
								myField.selectionStart = cursorPos;
								myField.selectionEnd = cursorPos;
							} else {
								myField.value += tag;
								myField.focus();
							}
						}
						/* ]]> */
					</script>
				</div>
				<aside class="col-md-4" id="sidebar">
					<aside id="zan_hotest_posts-5">
						<div class="panel panel-zan hot hidden-xs">
							<div class="panel-heading">
								<i class="fa fa-fire"></i> 最热文章 <i
									class="fa fa-times-circle panel-remove"></i> <i
									class="fa fa-chevron-circle-up panel-toggle"></i>
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><span class="post-title">
										<a href="http://localhost:8080/SmartPro/archives/763.html"
										title="Zanblog 2.0.7（稳定版）更新"> Zanblog 2.0.7（稳定版）更新 </a>
								</span> <span class="badge">49,134</span></li>
								<li class="list-group-item"><span class="post-title">
										<a href="http://localhost:8080/SmartPro/archives/394.html"
										title="Zanblog常见问题汇总"> Zanblog常见问题汇总 </a>
								</span> <span class="badge">36,100</span></li>
								<li class="list-group-item"><span class="post-title">
										<a href="http://localhost:8080/SmartPro/archives/457.html"
										title="Zanblog使用说明及插件设置"> Zanblog使用说明及插件设置 </a>
								</span> <span class="badge">34,556</span></li>
								<li class="list-group-item"><span class="post-title">
										<a href="http://localhost:8080/SmartPro/archives/328.html"
										title="Zanblog侧边栏与菜单设置说明文档"> Zanblog侧边栏与菜单设置说明文档 </a>
								</span> <span class="badge">22,460</span></li>
								<li class="list-group-item"><span class="post-title">
										<a href="http://localhost:8080/SmartPro/archives/685.html"
										title="Zanblog 2.0.6 版本更新"> Zanblog 2.0.6 版本更新 </a>
								</span> <span class="badge">15,847</span></li>
								<li class="list-group-item"><span class="post-title">
										<a href="http://localhost:8080/SmartPro/archives/131.html"
										title="Zanblog主题说明与下载（旧）"> Zanblog主题说明与下载（旧） </a>
								</span> <span class="badge">9,282</span></li>
								<li class="list-group-item"><span class="post-title">
										<a href="http://localhost:8080/SmartPro/archives/531.html"
										title="Zanblog 2.0.3 版本更新"> Zanblog 2.0.3 版本更新 </a>
								</span> <span class="badge">6,976</span></li>
								<li class="list-group-item"><span class="post-title">
										<a href="http://localhost:8080/SmartPro/archives/618.html"
										title="Zanblog 2.0.5 版本更新"> Zanblog 2.0.5 版本更新 </a>
								</span> <span class="badge">8,016</span></li>
							</ul>
						</div>
					</aside>
				</aside>
			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" flush="true"></jsp:include>

	<!-- 回到顶端 -->
	<div id="zan-gotop" style="bottom: -40px;">
		<i class="fa fa-angle-up"></i>
	</div>
	<!-- 回到顶端结束 -->

</body>
</html>