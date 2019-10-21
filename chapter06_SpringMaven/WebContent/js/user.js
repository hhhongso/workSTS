//writeForm.jsp ========================================================================================================================
var isExisted;
	//.focusout()
$('.txtId').blur(function(){
	$('div[class^=div]').empty();
	if($('.txtId').val() =='') $('.divId').append("아이디를 입력해주세요").css("color", "brown").css("font-size", "8pt").css("font-weight", "bold");
	else 
	  $.ajax({
		type: 'POST',
		url:'/chapter06_SpringMaven/user/checkId',
		data:{"id": $('.txtId').val() },
		dataType:'json', 
		success:function(data){
			if(data.isDup){
				$('.divId').append("중복된 아이디입니다.").css("color", "red").css("font-size", "8pt").css("font-weight", "bold");
				isExisted = true; 				
			} else {
				$('.divId').append("사용가능한 아이디입니다.").css("color", "blue").css("font-size", "8pt").css("font-weight", "bold");
				isExisted = false;				
			}
		
		},
		error:function(){
			console.log("실패");
		}	
	});
});

$('#btnWriteForm').click(function() {
	$('div[class^=div]').empty();
	if ($('.txtName').val() == "")
		$('.divName').text("이름을 입력해주세요").css("color", "red").css("font-size", "8pt").css("font-weight", "bold");
	else if ($('.txtId').val() == "")
		$('.divId').append("아이디를 입력해주세요").css("color", "red").css("font-size", "8pt").css("font-weight", "bold");
	else if ($('.txtPwd').val() == "")
		$('.divPwd').append("비밀번호를 입력해주세요").css("color", "red").css("font-size", "8pt").css("font-weight", "bold");
	else if(isExisted)
		$('.divId').append("중복된 아이디입니다.").css("color", "red").css("font-size", "8pt").css("font-weight", "bold");
	else	$.ajax({
			type: 'POST',
			url:'/chapter06_SpringMaven/user/write',
			data: $('#writeForm').serialize(),
			//dataType: 받을 데이터가 없으면 제외하여도 무방. 
			success:function(){
				console.log("등록 완료~!");
				location.href='/chapter06_SpringMaven/main/index.do';
			},
			error:function(){
				console.log("실패");
			}			
			
		});
	
	$('#btnResetForm').click(function(){
		$('div[class^=div]').empty();
	});

});

//list.jsp ========================================================================================================================
$().ready(function(){

	$.ajax({
		type:'post',
		url:'/chapter06_SpringMaven/user/getList',
		dataType: 'json', //text, html, json, xml 네 가지 타입만 가능. 클래스 객체는 가져올 수 없음. => list를 json으로 변경시켜 보낸 뒤, 가져와서 다시 list로 파싱한다. 
		success:function(data){
			console.log(JSON.stringify(data));
			 $.each(data.list, function(index, value){
				$('<tr/>').append($('<td/>', {
						align: 'center', 
						text: value.name
					})).append($('<td/>', {
						align: 'center', 
						text: value.id	
					})).append($('<td/>', {
						align: 'center', 
						text: value.pwd	
					})).appendTo('#listTb');
				//$('table').append('<tr><td>'+ value.name + '</td><td>'+ value.id +'</td><td>'+ value.pwd +'</td></tr>')
			})				
				
				
		},
		error:function(){
			console.log("실패");
		}
	});
	
	$('<a/>').append($('<img>', {src: '../image/jordy.JPG'})).css('cursor', 'pointer').appendTo('#mainImg');
	$('a').on('click', $('img'), function(){
		$(this).attr('href', '/chapter06_SpringMaven/main/index.do');
	})
});

//search ========================================================================================================================
$('.btnSearchList').click(function(){	
	$('#listTb tr:gt(0)').empty();
	$('.divSearchList').empty();
	//if($(#searchOp option:selected).val() == '') 검색옵션을 선택해주세요. return false; 
	if($('.txtSearch').val() == '') $('.divSearchList').text('검색어를 입력하세요.').css('color','red').css('font-size', '7pt');
	else 
		$.ajax({
			//headers: {'accept': 'application/json', 'content-type': 'application/json'},
			type:'post',
			url:'/chapter06_SpringMaven/user/searchUser',
			data: JSON.stringify({'key': $('.searchOp option:selected').val() , 'value': $('.txtSearch').val()}), //$('#searchForm').serialize(),
			contentType: 'application/json;charset=UTF-8',
			dataType: 'json',
			success:function(data){
				console.log("성공");				
				if(data.list.length == 0) {
					$('.divSearchList').text('검색 결과가 없습니다.').css('color','red').css('font-size', '7pt');
					return;
				}
				$.each(data.list, function(index, value){
					$('<tr/>').append($('<td/>', {
						align: 'center', 
						text: value.name
					})).append($('<td/>', {
						align: 'center', 
						text: value.id
					})).append($('<td/>', {
						align: 'center', 
						text: value.pwd
					})).appendTo('#listTb');
					
				})
			
			},
			error:function(){
				console.log("실패");
			}
		});
});

$('.btnReset').click(function(){
	//$('.txtSearch').val('');
	$('div[class^=div]').empty();
});

//modifyForm.jsp ========================================================================================================================
$().ready(function(){
	$('#modifyForm').hide();
	
	$('.btnSearch').click(function(){
		$('.divSearch').empty();
		if($('.txtSearchId').val() == '') $('.divSearch').text('검색할 아이디를 입력하세요.').css('color','red').css('font-size', '7pt');
		else 
			$.ajax({
				type:'post',
				url:'/chapter06_SpringMaven/user/getUser',
				data: {'id' : $('.txtSearchId').val()},
				dataType: 'json', //text, html, json, xml 네 가지 타입만 가능. 클래스 객체는 가져올 수 없음. => list를 json으로 변경시켜 보낸 뒤, 가져와서 다시 list로 파싱한다. 
				success:function(data){
					console.log(JSON.stringify(data));
					if(data.userDTO == null){
						$('.divSearch').text('찾는 아이디가 없습니다.').css('color','red').css('font-size', '7pt');
						return;
					}
					
					$('.txtName').val(data.userDTO.name);
					$('.txtId').val(data.userDTO.id);
					$('.txtPwd').val(data.userDTO.pwd);
					$('#modifyForm').show();
					
				},
				error:function(e){
					console.log("실패");
				}
			});
	});
	
	$('.btnReset').click(function(){
	//	$('.txtSearchId').val('');
	});
	
	
	$('#btnModify').click(function(){
		$('div[class^=div]').empty();
		if ($('.txtName').val() == "")
			$('.divName').text("이름을 입력해주세요").css("color", "red").css("font-size", "8pt").css("font-weight", "bold");
		else if ($('.txtPwd').val() == "")
			$('.divPwd').append("비밀번호를 입력해주세요").css("color", "red").css("font-size", "8pt").css("font-weight", "bold");
		else		
			$.ajax({
				type:'post',
				url:'/chapter06_SpringMaven/user/modifyUser',
				data: $('#modifyForm').serialize(), 
				success:function(){
					console.log("성공");
					location.href='/chapter06_SpringMaven/main/index.do';
				},
				error:function(){
					console.log("실패");
				}
			});		
	});
});

//delete.jsp ========================================================================================================================
$('.btnDelete').click(function(){
	$('.divDelete').empty();
	if($('.txtDeleteId').val() == '') $('.divDelete').text('삭제할 아이디를 입력하세요.').css('color','red').css('font-size', '7pt');
	else if(confirm("정말로 삭제하시겠습니까?"))
		$.ajax({
			type:'post',
			url:'/chapter06_SpringMaven/user/deleteUser',
			data: {'id' : $('.txtDeleteId').val()}, 
			dataType: 'json',
			success:function(data){
				console.log(JSON.stringify(data));
				console.log(data);
				if(data.cnt == 0) {
					$('.divDelete').text('삭제할 아이디 정보가 없습니다.').css('color','red').css('font-size', '7pt');
					return;	
				}
				
				location.href='/chapter06_SpringMaven/user/list';
				
			},
			error:function(err){
				console.log("실패"+err);
			}
		});
});

$('.btnReset').click(function(){
//	$('.txtDeleteId').val('');
});


