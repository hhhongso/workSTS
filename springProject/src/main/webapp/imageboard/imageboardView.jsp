<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<style>
li{	margin: 10px;}

img{	
	width: 300px;
	margin: 10px;
}
</style>

		<img class="img1" align="left">
		<div id="zoom" style="position: relative; top:0px; left:-320px;"></div>	
		
			<li> 상품명:<span class="spanImgName"></span><br></li>
			<li> 단가: <span class="spanImgPrice"></span><br></li>
			<li> 개수: <span class="spanImgQty"></span><br></li>
			<li> 합계: <span class="spanImgTot"></span> <br></li>
			<li> 내용: <br>
			<pre class="preImgContent"></pre></li>
		
		<input type="button" value="목록" onclick="location.href='../imageboard/imageboardList?pg=${pg}'">  

<script>
$().ready(function(){
	$.ajax({
		type: 'post',
		url: '../imageboard/getImageboardView',
		data: 'seq=${seq}&pg=${pg}',
		dataType: 'json',
		success: function(data){
			$('.img1').attr('src', '../storage/'+data.imageboardDTO.image1);
			$('.spanImgName').text(data.imageboardDTO.imageName);
			$('.spanImgPrice').text(data.imageboardDTO.imagePrice);
			$('.spanImgQty').text(data.imageboardDTO.imageQty);
			$('.spanImgTot').text((data.imageboardDTO.imagePrice * data.imageboardDTO.imageQty).toLocaleString());
			$('.preImgContent').text(data.imageboardDTO.imageContent);
		},
		error: function(e){}
		
	});
});
</script>  
<script>
window.onload = function(){
var zoomImg = document.createElement("img");
zoomImg.setAttribute("src", "../image/zoom.png");
zoomImg.setAttribute("style", " width:30px; height:30px; cursor:pointer;")
zoomImg.setAttribute("onclick", "zoomImage()");

var image1 = document.getElementById("zoom");
//var image1 = document.getElementsByTagName("div").item(0);
image1.appendChild(zoomImg);
}

function zoomImage(){
	var newWindow = window.open("", "", "width:500, height:500");
	var img = newWindow.document.createElement("img");
	img.setAttribute("src", "http://localhost:8080/springProject/storage/${imageboard.image1 }");
								//chrome 은 상대번지로 불가. 절대번지 이용
	img.setAttribute("style", " width:500px; height:500px;")
	
	newWindow.document.body.appendChild(img);
}
</script>