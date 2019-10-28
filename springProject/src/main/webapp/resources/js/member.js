
$('.btnWriteForm').click(function() {
	location.href = '/springProject/member/writeForm';
});

var ischecked = false;

$('.writeId').blur(
		function() {
			if ($('.writeId').val() == "")
				$('.divId').text("아이디를 입력하세요").css('color', 'red').css(
						'font-size', '8pt');
			else
				$.ajax({
					type : 'post',
					url : '/springProject/member/checkId',
					data : {
						'id' : $('.writeId').val()
					},
					dataType : 'text',
					success : function(data) {
						if (data == 'usable') {
							$('.divId').text("사용 가능한 아이디 입니다.").css('color',
									'blue').css('font-size', '8pt');
							ischecked = false;
							//$('.cwriteid').val($('.writeId').val());
						} else {
							$('.divId').text("중복된 아이디 입니다.")
									.css('color', 'red')
									.css('font-size', '8pt');
							ischecked = true;
						}

					},
					error : function(err) {
					}
				});
		});

/*
$('input[class^=write]').blur(function() {
			$('div[class^=div]').empty();
			if (this.value == '') {
				console.log(this.nextElementSibling);
				$(this.nextElementSibling).text("필수 입력칸입니다.").css('color',
						'red').css('font-size', '8pt');
			} else if (ischecked == true) {
				$('.divId').text("중복체크하세요.").css('color', 'red').css(
						'font-size', '8pt');
			} 
		});

*/


$('.btnWrite').click(
		function() {
			$('div[class^=div]').empty();
			if ($('.writeName').val() == "") {
				$('.divName').text("이름을 입력하세요").css('color', 'red').css(
						'font-size', '8pt');
			} else if ($('.writeId').val() == "") {
				$('.divId').text("아이디를 입력하세요").css('color', 'red').css(
						'font-size', '8pt');
			} else if ($('.writePwd').val() == "") {
				$('.divPwd').text("패스워드를 입력하세요").css('color', 'red').css(
						'font-size', '8pt');
			} else if ($('.writePwd').val() != $('.writeRepwd').val()) {
				$('.divRepwd').text("패스워드가 일치하지 않습니다.").css('color', 'red')
						.css('font-size', '8pt');
			} else if (ischecked == true) {
				$('.divId').text("중복체크하세요.").css('color', 'red').css(
						'font-size', '8pt');
			} else {
				$.ajax({
					type : 'post',
					url : '/springProject/member/write',
					data : $('#writeForm').serialize(),
					success : function() {
						console.log('♬');
						location.href = '../main/index';
					},
					error : function(err) {
					}
				});
			}

		});


$('.btnCheckPostForm').click(function() {
	window.open("/springProject/member/checkPostForm", "",
			"width=500, height=500 left=1200, top=500 scrollbars=yes");
});

$('.btnCheckPost').click(function() {
	if($('.sido').val() == '시도선택' || $('.roadname').val() == '') alert("주소를 입력하세요. ");
	else {		
		$('.zipcodeTbody').empty(); //$('.zipcodeTb tr:gt(2)').empty();
		var post = {
				'sido' : $('.sido option:selected').val(),
				'sigungu' : $('.sigungu').val(),
				'roadname' : $('.roadname').val()
		};
		$.ajax({
			type : 'post',
			url : '/springProject/member/checkPost',
			data : JSON.stringify(post), //JSON.stringify($('#checkPostForm').serialize()) 이 안되는 이유? serialize() 한 값은 json타입이 아니니까. 
			dataType : 'json',
			contentType : 'application/json;charset=UTF-8',
			success : function(data) {
				$.each(data.list, function(index, value) {
					if (value.zipcode.length == 4)
						value.zipcode = '0' + value.zipcode;
					else
						value.zipcode = value.zipcode;
					var address = value.sido + ' ' + value.sigungu + ' '
					+ value.yubmyundong + ' ' + value.ri + ' '
					+ value.roadname + ' ' + value.buildingname;
					
					address = address.replace(/null/g, ''); //g: global
					$('<tr/>').append($('<td/>', {
						align : 'center',
						text : value.zipcode
					})).append($('<td/>', {
						colspan : 3
						}).append($('<a/>', {
							'class' : 'address',
							href : '#',
							text : address
					}))).appendTo('.zipcodeTbody');
				}); // $.each()
				
				$('a').on('click', $(this), function(){
					alert($(this).prop('tagName'));
					alert($(this).text());
					alert($(this).parent().prop('tagName'));
					alert($(this).parent().prev().text());
					
					$('#daum_zipcode', opener.document).val($(this).parent().prev().text());
					$('#daum_addr1', opener.document).val($(this).text());
					window.close();
					
				});
				
			},
			error : function(err) {
				console.log(err);
			
			}
		});
	}
});

/*
 * $('.zipcodeTbody').on('click', $('.address'), function(){ console.log("w");
 * console.log(zipcode); window.close(); opener.parent.daum_zipcode.value =
 * zipcode; opener.parent.daum_addr1.value = address;
 * opener.parent.daum_addr2.value.focus(); })
 */

/*
$('.zipcodeTbody').on({
	click : function() {
		window.close();
		opener.parent.daum_zipcode.value = $(this).parent().parent().children(':first-child').text();
		opener.parent.daum_addr1.value = $(this).text();
		opener.parent.daum_addr2.focus();
	}
}, '.address');
*/
$('.btnLogin').click(
		function() {
			$('div[class^=div]').empty();
			if ($('.loginId').val() == "") {
				$('.divLoginId').text("아이디를 입력해주세요.").css('color', 'red').css(
						'font-size', '8pt');
				$('.loginId').focus();
			}
			if ($('.loginPwd').val() == "") {
				$('.divLoginPwd').append("비밀번호를 입력해주세요.").css('color', 'red')
						.css('font-size', '8pt');
				$('.loginPwd').focus();
			} else {
				$.ajax({
					type : 'post',
					url : '/springProject/member/login',
					data : JSON.stringify({
						'id' : $('.loginId').val(),
						'pwd' : $('.loginPwd').val()
					}),
					dataType : 'json',
					contentType : 'application/json;charset=UTF-8',
					success : function(data) {
						console.log(data);
						if (data.memberDTO != null)
							location.href = '../main/index';
						else {
							$('.divLoginResult').text('아이디 혹은 비밀번호가 틀립니다. ')
									.css('color', 'red')
									.css('font-size', '8pt');
							$('.loginId').val('');
							$('.loginPwd').val('');
						}
					},
					error : function(err) {
						console.log('실패');
						console.log(err);
					}
				});
			}

		});


$('.btnLogout').click(function() {
	$.ajax({
		type : 'post',
		url : '/springProject/member/logout',
		success : function() {
			location.href = '../main/index';
		},
		error : function(err) {
		}
	});
});


function genderCheck(gender) {
	let radioArr = document.querySelectorAll(".radio");
	radioArr[gender].checked = true;
}

function emailCheck(email2) {
	let emailArr = document.querySelectorAll(".mailaddr, #mailaddr, .email2");
	console.log(emailArr[0]);
	for (var i = 0; i < emailArr.length; i++) {
		if (emailArr[i].value == email2) {
			emailArr[i].selected = true;
		}
	}
}

function telCheck(tel1) {
	let telArr = document.querySelectorAll(".tel, .tel1");
	for (var i = 0; i < telArr.length; i++) {
		if (telArr[i].value == tel1) {
			telArr[i].selected = true;
		}
	}
}

function checkModify() {
	if (document.modifyForm.name.value == "") {
		alert("이름을 입력해 주세요.");
	} else if (document.modifyForm.pwd.value == "") {
		alert("수정할 비밀번호를 입력해주세요.");
	} else if (document.modifyForm.pwd.value != document.modifyForm.repwd.value) {
		alert("비밀번호가 일치하지 않습니다.");
	} else {
		document.modifyForm.submit();
	}
}
