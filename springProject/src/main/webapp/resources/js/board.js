$('.btnBoardWrite').click(function(){
	console.log('.');
	$('div[class^=div]').empty();
	if($('.txtSubject').val() == '') 
		$('.divSubject').text('제목을 입력해주세요. ').css('color', 'red').css('font-size', '8pt');
	else if($('.txtContent').val() == '')
		$('.divContent').text('내용을 입력해주세요. ').css('color', 'red').css('font-size', '8pt');
	else $('form[name=boardWriteForm]').submit();
});

$().ready(function(){ //여기서 document = boardList.jsp
	$.ajax({
		type: 'post',
		url:'../board/getBoardList',
		data: {'pg': $('#pg').val()}, // hidden value 값
		dataType:'json',
		success: function(data){
			console.log(data.list);
			$.each(data.list, function(index, value){
				$('<tr/>').append($('<td/>', {
					align: 'center',
					text:value.seq
				})).append($('<td/>').append($('<a/>', {
					id: 'subjectA',
					class: value.seq+'',
					href: '#',				
					text:value.subject
				}))).append($('<td/>', {
					align: 'center',
					text:value.id
				})).append($('<td/>', {
					align: 'center',
					text:value.logtime
				})).append($('<td/>', {
					align: 'center',
					text:value.hit
				})).appendTo($('.blTbody'));
			}); //$.each - data.list
			
			$('.divBpg').append(data.boardPaging.pagingHTML);
			$('.divBpg a').css('cursor', 'pointer');			

			$('.blTbody').on('click', '#subjectA', function(){
				if(data.memId == null) alert("먼저 로그인 해주세요! ");
				else{
					//alert($(this).attr('class'));
					location.href='/springProject/board/boardView?seq='+$(this).attr('class')+'&pg='+$('#pg').val();
				}
			});
		},
		error: function(err){
			console.log(err);
		}
	});	
});


function delConfirm(seq){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href="/miniProject/board/boardDelete.do?seq="+seq;
	} else {
		location.href="/miniProject/board/boardView.do?seq="+seq+"&pg="+pg;
	}
}

function boardSearch(){
	$.ajax({
		type:'post',
		url: '../board/boardSearch',
		data: {'pg': '1',
			'searchOp': $('#searchOp').val(),
			'searchVal' : $('#searchVal').val() },
		dataType: 'json',
		success: function(data){
			$('.blTbody').empty();
			$('.divBpg').empty();
			$.each(data.list, function(index, value){
				$('<tr/>').append($('<td/>', {
					align: 'center',
					text:value.seq
				})).append($('<td/>').append($('<a/>', {
					id: 'subjectA',
					class: value.seq+'',
					href: '#',				
					text:value.subject
				}))).append($('<td/>', {
					align: 'center',
					text:value.id
				})).append($('<td/>', {
					align: 'center',
					text:value.logtime
				})).append($('<td/>', {
					align: 'center',
					text:value.hit
				})).appendTo($('.blTbody'));
			}); //$.each - data.list
			
			$('.divBpg').append(data.boardPaging.pagingHTML);
			$('.divBpg a').css('cursor', 'pointer');
		},
			error: function(){}
		});
}


$('.btnBoardSearch').click(function(){
	if($('#searchVal').val() == '') $('.divBoardSearch').text('검색어를 입력하세요').css('color', 'red').css('font-size', '8pt');
	else boardSearch();
	
	$('.divBpg').on('click', 'span', function(){ // 페이지 이동 
		boardSearch();
	});

});
			
	