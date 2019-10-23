$('.btnBoardWrite').click(function(){
	console.log('.');
	$('div[class^=div]').empty();
	if($('.txtSubject').val() == '') 
		$('.divSubject').text('제목을 입력해주세요. ').css('color', 'red').css('font-size', '8pt');
	else if($('.txtContent').val() == '')
		$('.divContent').text('내용을 입력해주세요. ').css('color', 'red').css('font-size', '8pt');
	else $('form[name=boardWriteForm]').submit();
});

$().ready(function(){
	$.ajax({
		url:'../board/getBoardList',
		data: {'page': 1},
		dataType:'json',
		success: function(data){
			console.log(data.list);
			$.each(data.list, function(index, value){
				$('<tr/>').append($('<td/>', {
					text:value.seq
				})).append($('<td/>').append($('<a/>', {
					href: '#', 
					text:value.subject
				}))).append($('<td/>', {
					text:value.id
				})).append($('<td/>', {
					text:value.logtime
				})).append($('<td/>', {
					text:value.hit
				})).appendTo($('.blTbody'));
			}); //$.each - data.list
			
			$('.divBpg').append(data.boardPaging.pagingHTML).css('cursor', 'pointer');
					
		},
		error: function(err){
			console.log(err);
		}
		
	});
	
	

	$('.divBpg').on('click', $('.divBpg > a#paging'), function(){

		alert($('.divBpg > a#paging:hover').attr('class'));	

		$.ajax({
			url:'../board/getBoardList',
			data: {'page': $('.divBpg > a#paging:hover').text()},
			dataType:'json',
			success: function(data){
				$('.divBpg').empty();
				$('.blTbody').empty();
				console.log(data.list);
				$.each(data.list, function(index, value){
					$('<tr/>').append($('<td/>', {
						text:value.seq
					})).append($('<td/>').append($('<a/>', {
						href: '#', 
						text:value.subject
					}))).append($('<td/>', {
						text:value.id
					})).append($('<td/>', {
						text:value.logtime
					})).append($('<td/>', {
						text:value.hit
					})).appendTo($('.blTbody'));
				}); //$.each - data.list
				
				$('.divBpg').append(data.boardPaging.pagingHTML).css('cursor', 'pointer');
			},
			error: function(err){
				console.log(err);
			}
		});
	});
});



function isLogin(id, seq, pg){
	if(id == '') {
		alert("먼저 로그인 해주세요! ");
	} else {
		location.href="/miniProject/board/boardView.do?seq="+seq+"&pg="+pg;
	}
}

function delConfirm(seq){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href="/miniProject/board/boardDelete.do?seq="+seq;
	} else {
		location.href="/miniProject/board/boardView.do?seq="+seq+"&pg="+pg;
	}
}

function searchBoard(){
	var searchWord = document.boardListForm.searchWord.value;
	if(searchWord == "") alert("검색어를 입력하세요");
	else document.boardListForm.submit();

//		var option = document.querySelector("#option");
//		var searchOp;
//		for (var i = 0; i < option.length; i++) {
//			if(option[i].selected) searchOp = option[i].value;
//		}
}
