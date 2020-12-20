<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="referrer" content="no-referrer" />
<title>分享书屋${title }</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="../resources/home/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/home/css/nprogress.css">
<link rel="stylesheet" type="text/css" href="../resources/home/css/style.css">
<link rel="stylesheet" type="text/css" href="../resources/home/css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="../resources/home/images/icon.png">
<link rel="shortcut icon" href="../resources/home/images/favicon.ico">
<script src="../resources/home/js/jquery-2.1.4.min.js"></script>
<script src="../resources/home/js/nprogress.js"></script>
<script src="../resources/home/js/jquery.lazyload.min.js"></script>
<!--[if gte IE 9]>
  <script src="../resources/home/js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="../resources/home/js/html5shiv.min.js" type="text/javascript"></script>
  <script src="../resources/home/js/respond.min.js" type="text/javascript"></script>
  <script src="../resources/home/js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
	<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no" />
	<link rel='stylesheet' id='light-css'  href='../resources/home1/css/light.css' type='text/css' media='all' />
	<link rel='stylesheet' id='sytle-css'  href='../resources/home1/css/style.css' type='text/css' media='all' />
	<link rel='stylesheet' id='wp-block-library-css'  href='../resources/home1/css/style.min.css' type='text/css' media='all' />
	<script type='text/javascript' src='../resources/home1/js/swiper.min.js'></script>
	<script type='text/javascript' src='../resources/home1/js/html5shiv.js'></script>
	<script type='text/javascript' src='../resources/home1/js/selectivizr-min.js'></script>
	<script type='text/javascript' src='../resources/home1/js/jquery.min.js'></script>
	<script type='text/javascript' src='../resources/home1/js/jiazai.js'></script>
</head>
<body>
<nav class="header-web" >
<%--	style="background-color:lightblue;"--%>
	<div >
		<a href="../index/index" class="logo" title="logo" rel="home"><img src="../resources/home1/picture/logo.png" ></a>

		<form id="search-form" method="get" class="search" action="../book/search_list" >
			<input class="text" type="text" name="keyword" placeholder="请输入内容" value="${keyword}">
			<input class="butto" value="搜索" type="submit">
		</form>


		<ul class="nav-list">
			<c:forEach items="${bookCategoryList }" var="bookCategory">
				<li><a data-cont="${bookCategory.name }" title="${bookCategory.name }" href="../book/category_list?cid=${bookCategory.id }">${bookCategory.name }</a></li>
			</c:forEach>
		</ul>


		<script type="text/javascript" src="../resources/home1/js/index.js"></script>
	</div>
</nav>
</body>
</html>