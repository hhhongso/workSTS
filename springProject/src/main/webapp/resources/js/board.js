$('.btnBoardWrite').click(function(){
	$('div[class^=div]').empty();
	if($('.txtSubject').val() == '') 
		$('.divSubject').text('제목을 입력해주세요. ').css('color', 'red').css('font-size', '8pt');
	else if($('.txtContent').val() == '')
		$('.divContent').text('내용을 입력해주세요. ').css('color', 'red').css('font-size', '8pt');
	else $('form[name=boardWriteForm]').submit();
});



function delConfirm(seq){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href="/miniProject/board/boardDelete.do?seq="+seq;
	} else {
		location.href="/miniProject/board/boardView.do?seq="+seq+"&pg="+pg;
	}
}

								//trigger로 이벤트 받아 처리. 
$('#btnBoardSearch').click(function(event, string){
	console.log(typeof string);
	console.log("string: " +string);
	console.log(event);
	console.log("pg: "+ $('input[name=pg]').val());
	console.log("searchOp: "+ $('#searchOp').val());
	console.log("searchVal: "+$('#searchVal').val());

	if(string != 'trigger') $('input[name=pg]').val(1); // 트리거가 발생하지 않을 시(검색 버튼을 직접 클릭 시) -> pg =1 을 입력. 
	if($('#searchVal').val() == '') $('.divBoardSearch').text('검색어를 입력하세요').css('color', 'red').css('font-size', '8pt');
	else{
		$('.divBoardSearch').empty();
		$.ajax({
			type:'post',
			url: '../board/boardSearch',
			data: {'pg': $('input[name=pg]').val(),
				'searchOp': $('#searchOp').val(),
				'searchVal' : $('#searchVal').val() }, //serialize()는 <form>의 name 속성으로만 가능!!
			dataType: 'json',
			success: function(data){
				console.log(data.list);
				$('.blTbody').empty(); //remove() / empty()
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
});




//검색list 페이지 이동 		
/*
$('.divBpg').on('click', 'span', function(){ 
	$.ajax({
		type:'post',
		url: '../board/boardSearch',
		data: {'pg': $(this).attr('class'),
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
});
*/
