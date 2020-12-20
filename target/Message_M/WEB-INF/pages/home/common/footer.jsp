<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer class="footer">
<div class="container">
<p>
	网站已经运行: <span id="sitetime">11 </span>天 | Copyright &copy; 2020.【分享书屋】 All rights reserved

</p>
</div>
<div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="../resources/home/js/bootstrap.min.js"></script>
<script src="../resources/home/js/jquery.ias.js"></script>
<script src="../resources/home/js/scripts.js"></script>
<script type="text/javascript">
	$.ajax({
		url:'../index/get_site_info',
		type:'post',
		dataType:'json',
		success:function(data){
			if(data.type == 'success'){
				$("#sitetime").text(data.siteDays);
			}
		}
	});
</script>
</body>
</html>