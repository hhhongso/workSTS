<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!-- 파일 업로드: 
1) method= 반드시 post 타입
2) enctype = multipart/form-data (multipart형식으로 읽어올 수 있도록 함) 

이클립스 상의 가상폴더 생성 (storage)-->
    
<form id="imageboardWriteForm" enctype="multipart/form-data">
	<table border=3>
		<tr>
			<th>상품코드</th>
			<td><input type="text" name="imageId" class="txtImageId" value="img_">
				<div class="divImgId"></div>
			</td>
		</tr>
		
		<tr>
		<th>상품명</th>
			<td><input type="text" name="imageName" class="txtImageName" placeholder="상품명 입력">
				<div class="divImgName"></div>
			</td>
		</tr>

		<tr>
			<th>단가</th>
			<td><input type="number" name="imagePrice" class="txtImagePrice" placeholder="단가 입력">
				<div class="divImgPrice"></div>
			</td>
		</tr>
		
		<tr>
			<th>갯수</th>
			<td><input type="number" name="imageQty" class="txtImageQty" placeholder="갯수 입력">
				<div class="divImgQty"></div>
			</td>
		</tr>

		<tr>
			<th>내용</th>
			<td><textarea name="imageContent" placeholder="내용입력" style="width:300px; height:200px;"></textarea>
				<div class="divImgContent"></div>
			</td>
		</tr>
		
		<tr>
			<td colspan=2><input type="file" name="img" id="img1" size="50">
						<div class="divImg1"></div>
			</td>
		</tr>
		
		<tr> <!-- name 값을 같게 하여 배열로 데이터를 넘긴다.  -->
			<td colspan=2><input type="file" name="img" id="img2" size="50"> 
						<div class="divImg2"></div>
			</td>
		</tr>
		
		<tr> <!-- 한 번에 2개 이상의 파일 업로드 -->
			<td colspan=2><input type="file" name="img[]" id="img3" size="50" multiple> 
						<div class="divImg3"></div>
			</td>
		</tr>
		
		<tr>
			<td colspan=2 align="center">
				<input type="button" value="이미지 등록" class="btnImageWrite">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
<script src="../resources/js/imageboard.js"></script>