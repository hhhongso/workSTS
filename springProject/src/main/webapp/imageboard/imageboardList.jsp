<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.imageboard th, td{
	text-align:center;
}

#currPaging {
	text-decoration: underline;
	color: red;
	font-weight: bold;
}
</style>
<form name="imageboardListForm">
		<table class="imageboardTb" frame="hsides" rules="rows" style="width: 100%">
			<tr>
				<th><input type="checkbox" class="cbxMain">번호</th>
				<th>이미지</th>
				<th>상품명</th>
				<th>단가 </th>
				<th>개수 </th>
				<th>합계 </th>
			</tr>
		</table>
	<div style="text-align:center;">${imageboardPaging.pagingHTML}</div>
	<div><input type="button" value="선택 삭제" class="btnChoiceDelete"></div>
</form>

<script src="../resources/js/imageboard.js"></script>
<script>
$().ready(function(){
	$.ajax({
		type:'post',
		url: '../imageboard/getImageboardList',
		data: 'pg=${pg}',
		dataType: 'json',
		success: function(data){
			console.log(data.list);
			$.each(data.list, function(index, value){
				$('<tr/>').append($('<td/>', {
					align: 'center',
					text: value.seq	
					}).prepend($('<input/>', {
						type: 'checkbox',
						class: 'cbx',
						name: 'cbx',
						value: value.seq
					}))
				).append($('<td/>', {
					align: 'center'					
					}).append($('<img>', {
						src: '../storage/'+value.image1,
						style: 'cursor: pointer; width: 100px; height: 100px;',
						class: value.seq+""
					}))
				).append($('<td/>', {
					text: value.imageName
					
				})).append($('<td/>', {
					text: value.imagePrice.toLocaleString()
					
				})).append($('<td/>', {
					text: value.imageQty
					
				})).append($('<td/>', {
					text: (value.imagePrice * value.imageQty).toLocaleString()
					
				})).appendTo('.imageboardTb');
				
				$('.'+value.seq).click(function(){
					location.href='../imageboard/imageboardView?seq='+value.seq+'&pg=${pg}';
				});
			});
		},
		error: function(e){
			console.log(e);
		}
	});
	
	
	$('.cbxMain').click(function(){
		if($(this).prop('checked')) {
			$('.cbx').prop('checked', true);
		} else {
			$('.cbx').prop('checked', false);
		}
	});
	
	$('.btnChoiceDelete').click(function(){
		var cnt = $('.cbx:checked').length;
		if(cnt == 0) alert('삭제할 항목을 선택하세요. ');
		else if(confirm('정말로 삭제하시겠습니까?')){
			/* 이건 안되네 
			$('#imageboardListForm').method = 'post';
			$('#imageboardListForm').action = '/springProject/imageboard/imageboardDelete';
			$('#imageboardListForm').submit();
			
			이것도 안되네
			document.$(form[id=imageboardListForm]').method = 'post';
			*/
			document.imageboardListForm.method = 'post';
			document.imageboardListForm.action = '/springProject/imageboard/imageboardDelete';
			document.imageboardListForm.submit();
		}
	});
	
});
</script>
