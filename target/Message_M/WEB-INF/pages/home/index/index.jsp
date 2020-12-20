<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
<div class="content-wrap">
<div class="content">
	<!--幻灯片-->
	<div class="hmFocus" style="margin-top: 100px;">
		<div class="swiper-container autoImg">
			<div class="swiper-wrapper">
				<div class="swiper-slide">  <a href=" " target="_blank"><img src="../resources/home1/picture/huan6.png" alt=""></a></div>
				<div class="swiper-slide"> <a href=" "target="_blank"><img src="../resources/home1/picture/huan1.png" 　alt=""></a></div>
				<div class="swiper-slide"> <a href=" "target="_blank"><img src="../resources/home1/picture/huan4.png" 　alt=""></a></div>
				<div class="swiper-slide">  <a href=" " target="_blank"><img src="../resources/home1/picture/huan5.png" alt=""></a></div>



			</div>
			<div class="swiper-pagination"></div>
		</div>
	</div>
	<script language="javascript">
		var swiper = new Swiper('.hmFocus .swiper-container', {
			pagination: '.swiper-pagination',
			loop: true,
			autoplay: 5500,
			paginationClickable: true
		});
	</script>




  <div class="title" style="margin-top: 20px">
	<h3>最新发布</h3>
  </div>
  <c:forEach items="${bookList }" var="book">
  <article class="excerpt excerpt-1" style="">
  <a class="focus" href="../book/detail?id=${book.id }" title="${book.title }" target="_blank" ><img class="thumb" data-original="${book.photo }" src="${book.photo }" alt="${book.title }"  style="display: inline;"></a>
		<header><a class="cat" href="../book/category_list?cid=${book.categoryId }" title="${book.bookCategory.name }" >${book.bookCategory.name }<i></i></a>
			<h2><a href="../book/detail?id=${book.id }" title="${book.title }" target="_blank" >${book.title }</a>
			</h2>
		</header>
		<p class="meta">
			<time class="time"><i class="glyphicon glyphicon-time"></i> <fmt:formatDate value="${book.createTime }" pattern="yyyy-MM-dd hh:mm:ss" /></time>
			<span class="views"><i class="glyphicon glyphicon-eye-open"></i> ${book.viewNumber }</span>
			<a class="comment" href="../book/detail?id=${book.id }#comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i>${book.commentNumber }</a>
		</p>
		<p class="note">${book.abstrs }</p>
	</article>
	</c:forEach>
	<div class="ias_trigger" style="display:none;"><a href="javascript:0">查看更多</a></div>
</div>
</div>
<%@ include file="../common/sidebar.jsp" %>
</section>
<%@ include file="../common/footer.jsp" %>