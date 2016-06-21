<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<c:if test="${articleId != null}">
	<input type="hidden" id="lastId" name="lastId" value="${articleId}">
</c:if>

<!-- 内容主体 -->
<div id="article-list">

	<c:forEach items="${articleList}" var="article">

		<div class="article well clearfix">
			<i class="fa fa-bookmark article-stick visible-md visible-lg"></i>
			<div class="data-article hidden-xs">
				<span class="month">06月</span> <span class="day">14</span>
			</div>

			<!-- 大型设备文章属性 -->
			<section class="hidden-xs">
				<div class="title-article">
					<h1>
						<a href="<%=basePath%>article/html/${article.id}">
							${article.title}</a>
					</h1>
				</div>
				<div class="tag-article">
					<span class="label label-zan"><i class="fa fa-tags"></i> <a
						href="http://localhost:8080/SmartPro/archives/category/zanblog"
						rel="category tag">${article.categoryName}</a></span> <span
						class="label label-zan"><i class="fa fa-user"></i> <a
						href="http://localhost:8080/SmartPro/archives/author/yeahzan"
						title="由${article.author}发布" rel="author">${article.author}</a></span> <span
						class="label label-zan"><i class="fa fa-eye"></i>
						${article.showCount}</span>
				</div>
				<div class="content-article">
					<figure class="thumbnail">
						<a href="<%=basePath%>article/html/${article.id}"> 
						<c:if test="${article.imageUrl != null}">
								<img width="750" height="300"
									src="<%=basePath%>uploads/car_10.jpg"
									class="attachment-full wp-post-image" alt="car_10">
						</c:if> 
						<c:if test="${article.imageUrl == null}">
								<img width="750" height="300"
									src="<%=basePath%>uploads/car_10.jpg"
									class="attachment-full wp-post-image" alt="car_10">
							</c:if>
						</a>
					</figure>
					<div class="alert alert-zan">					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${fn:substring(article.description, 0, 180)}...
					<!-- 
						<c:if test="${article.description != null && article.description != ''}">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${fn:substring(article.description, 0, 180)}...
						</c:if> 
						<c:if test="${article.description != null || article.description == ''}">
							 <center>无正文内容</center>
						</c:if>
				    -->	
					</div>
				</div>
				<a class="btn btn-danger pull-right read-more"
					href="<%=basePath%>article/html/${article.id}"
					title="详细阅读 ${article.title}">阅读全文 <span class="badge">6</span></a>
			</section>
			<!-- 大型设备文章属性结束 -->

			<!-- 小型设备文章属性 -->
			<section class="visible-xs">
				<div class="title-article">
					<h4>
						<a href="<%=basePath%>article/html/${article.id}">${article.title}</a>
					</h4>
				</div>
				<p>
					<i class="fa fa-calendar"></i> ${article.createTime} <i
						class="fa fa-eye"></i> ${article.showCount}
				</p>
				<div class="content-article">
					<figure class="thumbnail">
						<a href="<%=basePath%>article/html/${article.id}"><img
							width="750" height="300" src="<%=basePath%>images/car_10.jpg"
							class="attachment-full wp-post-image" alt="car_10"></a>
					</figure>
					<div class="alert alert-zan">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${fn:substring(article.description, 0, 180)}...
					</div>
				</div>
				<a class="btn btn-danger pull-right read-more btn-block"
					href="<%=basePath%>article/html/${article.id}"
					title="详细阅读 ${article.title}">阅读全文 <span class="badge">6</span></a>
			</section>
			<!-- 小型设备文章属性结束 -->
		</div>

	</c:forEach>

</div>

<!-- 内容主体结束 -->


