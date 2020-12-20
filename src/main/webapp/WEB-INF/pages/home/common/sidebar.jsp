<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside class="sidebar">
<div class="fixed">
  <div class="widget widget-tabs" style="margin-top: 100px">
	<ul class="nav nav-tabs" role="tablist">
	  <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >统计信息</a></li>
	  <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" >帮助</a></li>
	</ul>
	<div class="tab-content">
	  <div role="tabpanel" class="tab-pane contact active" id="notice">
		<h2>统计分享总数:
			  <span id="total-article-span">888</span>篇
		  </h2>
	  </div>
		<div role="tabpanel" class="tab-pane contact" id="contact">
			<h2>若有问题请联系
			</h2>
		  <h2>Email:
			  987902348@qq.com
		  </h2>
	  </div>
	</div>
  </div>

</div>
<div class="widget widget_hot">
	  <h3>最新评论文章</h3>
	  <ul id="last-comment-list">            

	  </ul>
 </div>

 <div class="widget widget_sentence">
     <%--后台系统登录--%>
	 <a href="../system/login" target="_blank" title="分享书屋">
	<img style="width: 100%" src="../resources/home/images/houtai.jpg" alt="分享书屋" ></a>
 </div>
	<p style="background-color:#FFFFFF; color: #574c5a; text-align: center; ">若想分享书籍信息，请点击上方图片，登录后台发布</p>
</aside>
<script>
function add0(m){return m<10?'0'+m:m }
function format(shijianchuo){
//shijianchuo是整数，否则要parseInt转换
	var time = new Date(shijianchuo);
	var y = time.getFullYear();
	var m = time.getMonth()+1;
	var d = time.getDate();
	var h = time.getHours();
	var mm = time.getMinutes();
	var s = time.getSeconds();
	return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
}
$(document).ready(function(){
	$.ajax({
		url:'../book/last_comment_list',
		type:'post',
		dataType:'json',
		success:function(data){
			if(data.type == 'success'){
				var bookList = data.bookList;
				var html = '';
				for(var i=0;i<bookList.length;i++){
					var li = '<li><a title="'+bookList[i].title+'" href="../book/detail?id='+bookList[i].id+'" ><span class="thumbnail">';
					li += '<img class="thumb" data-original="../resources/home/images/201610181739277776.jpg" src="'+bookList[i].photo+'" alt="'+bookList[i].id+'"  style="display: block;">';
					li += '</span><span >'+bookList[i].title+'</span><span class="muted"><i class="glyphicon glyphicon-time"></i>';
					li += format(bookList[i].createTime) + '</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>'+bookList[i].viewNumber+'</span></a></li>';
					html += li;
				}
				$("#last-comment-list").append(html);
			}
		}
	});
	$.ajax({
		url:'../index/get_site_info',
		type:'post',
		dataType:'json',
		success:function(data){
			if(data.type == 'success'){
				$("#total-article-span").text(data.totalArticle);

			}
		}
	});
});
</script>