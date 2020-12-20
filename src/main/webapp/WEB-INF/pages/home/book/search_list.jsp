<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
<section class="container"style="margin-top: 100px;">
<div class="content-wrap">
<div class="content" id="book-list">
  <div class="title">
	<h3>[${keyword }]</h3>
  </div>
  <c:forEach items="${bookList }" var="book">
  <article class="excerpt excerpt-1" style="">
  		<a class="focus" href="../book/detail?id=${book.id }" title="${book.title }" target="_blank" >
  			<img class="thumb" data-original="${book.photo }" src="${book.photo }" alt="${book.title }"  style="display: inline;">
  		</a>
		<header>
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
	<div class="ias_trigger"><a href="javascript:;" id="load-more-btn">查看更多</a></div>
</div>
</div>
<%@ include file="../common/sidebar.jsp" %>
</section>
<%@ include file="../common/footer.jsp" %>
<script>
var page = 2;

$(document).ready(function(){
	$("#load-more-btn").click(function(){
		if($("#load-more-btn").attr('data-key') == 'all')return;
		$("#load-more-btn").text('查看更多');
		$.ajax({
			url:'../book/get_search_list',
			type:'post',
			data:{rows:10,page:page++,keyword:'${keyword }'},
			dataType:'json',
			success:function(data){
				if(data.type == 'success'){
					$("#load-more-btn").text('查看更多!');
					var bookList = data.bookList;
					if(bookList.length == 0){
						$("#load-more-btn").text('没有更多了!');
						$("#load-more-btn").attr('data-key','all');
					}
					var html = '';
					for(var i=0;i<bookList.length;i++){
						
						var article = '<article class="excerpt excerpt-1" style="">';
						article +='<a class="focus" href="../book/detail?id='+bookList[i].id+'" title="'+bookList[i].title+'" target="_blank" >';
						article +='<img class="thumb" data-original="'+bookList[i].photo+'" src="'+bookList[i].photo+'" alt="'+bookList[i].title+'"  style="display: inline;"></a>';
						article +='<header><a class="cat" href="../book/category_list?cid='+bookList[i].categoryId+'" title="'+bookList[i].bookCategory.name+'" >'+bookList[i].bookCategory.name+'<i></i></a>';
						article +='<h2><a href="../book/detail?id='+bookList[i].id+'" title="'+bookList[i].title+'" target="_blank" >'+bookList[i].title+'</a></h2></header>';
						article +='<p class="meta"><time class="time"><i class="glyphicon glyphicon-time"></i>'+format(bookList[i].createTime)+'</time>';
						article +='<span class="views"><i class="glyphicon glyphicon-eye-open"></i> '+bookList[i].viewNumber+'</span>';
						article +='<a class="comment" href="../book/detail?id='+bookList[i].id+'#comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i>'+bookList[i].commentNumber+'</a></p>';
						article +='<p class="note">'+bookList[i].abstrs+'</p>';
						article +='</article>';
						html += article;
					}
					$("#load-more-btn").parent("div").before(html);
				}
			}
		});
	});
	
});	
</script>