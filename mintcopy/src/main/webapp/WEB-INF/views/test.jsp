<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="header">
<style type="text/css">
.notice_ie8 {
	display: none;
	width: 100%;
	height: 70px;
	padding-top: 23px;
	background-color: #d5586f;
	font-weight: 400;
	font-size: 16px;
	font-family: 'Noto Sans';
	color: #fff;
	letter-spacing: -0.4px;
	text-align: center
}

.notice_ie8 .inner_noticeie8 {
	display: block;
	width: 1050px;
	margin: 0 auto
}

.notice_ie8 .emph {
	padding: 0 16px 0 11px;
	background:
		url(https://res.kurly.com/pc/ico/1801/ico_arrow_noticeie8.png)
		no-repeat 100% 55%;
	font-family: 'Noto Sans';
	font-weight: 700
}
</style>

	<a target="_blank"
		href="https://support.microsoft.com/ko-kr/help/17621/internet-explorer-downloads"
		id="noticeIe8" class="notice_ie8"> <span class="inner_noticeie8">
			고객님의 브라우저에서는 마켓컬리가 정상 동작하지 않습니다. 최신버전의 인터넷 익스플로러를 이용해주세요. <span
			class="emph">설치하기</span>
	</span>
	</a>
	<script type="text/javascript">
		if ((document.all && !document.querySelector)
				|| (document.all && document.querySelector && !document.addEventListener)) {
			$('#noticeIe8').css({
				'display' : 'block'
			});
		}
	</script>

	<div class="bnr_header bnr_top_friend" id="top-message">


		<a
			href="https://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/friend/friend_191001">
			친구 초대하면 친구도 나도 적립금 <b>5천원!</b><img
			src="https://res.kurly.com/pc/ico/1908/ico_arrow_333_84x84.png"
			class="bnr_arr">
			<div class="bnr_top">
				<div class="inner_top_close">
					<button id="top-message-close" class="btn_top_bnr">가입하고
						혜택받기</button>
				</div>
			</div>
		</a>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#top-message-close").on("click", function() {
				setCookie('top_msg_banner2', 'set_cookie', 1)
			});
			if (getCookie('top_msg_banner2') == 'set_cookie') {
				$("#top-message").hide()
			} else {
				$("#top-message").show();
			}
		});

		function setCookie(cookieName, value, exdays) {
			var exdate = new Date();
			exdate.setDate(exdate.getDate() + exdays);
			var cookieValue = escape(value)
					+ ((exdays == null) ? "" : "; expires="
							+ exdate.toGMTString());
			document.cookie = cookieName + "=" + cookieValue + "; path=/;"
		}

		function getCookie(cookieName) {
			cookieName = cookieName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cookieName);
			var cookieValue = '';
			if (start != -1) {
				start += cookieName.length;
				var end = cookieData.indexOf(';', start);
				if (end == -1)
					end = cookieData.length;
				cookieValue = cookieData.substring(start, end);
			}
			return unescape(cookieValue);
		}
	</script>

	<div id="userMenu">
		<ul class="list_menu">
			<!---->
			<!---->
			<li class="menu menu_user"><a
				href="/shop/mypage/mypage_orderlist.php"
				class="link_menu grade_comm"><span class="ico_grade grade0">일반</span>
					<span class="txt"><span class="name">홍소연</span><span
						class="sir">��</span></span> <!----></a>
				<ul class="sub">
					<li><a href="/shop/mypage/mypage_orderlist.php">�ֹ� ����</a></li>
					<li><a href="/shop/mypage/mypage_wishlist.php">�� ��� ��</a></li>
					<li><a href="/shop/mypage/mypage_review.php">��ǰ�ı�</a></li>
					<li><a href="/shop/mypage/mypage_emoney.php">������</a> <!----></li>
					<li><a href="/shop/mypage/mypage_coupon.php">����</a> <!----></li>
					<li><a href="/shop/member/myinfo.php">���� ���� ����</a></li>
					<li><a href="/shop/member/logout.php">�α׾ƿ�</a></li>
				</ul></li>
			<li class="menu"><a href="/shop/board/list.php?id=notice"
				class="link_menu">��������</a>
				<ul class="sub">
					<li><a href="/shop/board/list.php?id=notice">��������</a></li>
					<li><a href="/shop/service/faq.php">�����ϴ� ����</a></li>
					<li><a href="/shop/mypage/mypage_qna.php">1:1 ����</a></li>
					<li><a href="/shop/main/html.php?htmid=mypage/bulk_order.htm">�뷮�ֹ�
							����</a></li>
					<li><a href="/shop/mypage/offer.php">��ǰ ����</a></li>
					<li><a href="/shop/mypage/echo_packing.php">�������� �ǵ��</a></li>
				</ul></li>
			<li class="menu lst"><a href="#none"
				onclick="address_chk_popup();return false;" class="link_menu">�������
					�˻�</a></li>
		</ul>
	</div>
	<script
		src="https://www.kurly.com/common_js/usermenu_v1.js?ver=20191029093151"></script>
	<script>
		$(document).ready(function() {

			userMenu.loginCheck = true;
			userMenu.userInfo = {
				userGrade : '0',
				userGradeName : '일반',
				memberName : '홍소연'
			}

			userMenu.update();
		});
	</script>


	<script type="text/javascript">
		function act_all(mode) {
			// if(!$('[name="all_checked"]').parent().hasClass('checked')) $('[name="all_checked"]').parent().trigger('click');
			act(mode);
		}
		function act(mode) {
			var fm = document.frmWish;
			if (isChked('sno[]')) {
				fm.mode.value = mode;
				fm.submit();
			}
		}
		function act_sol(mode, sno) {
			$('[name="sno[]"]').prop("checked", false);
			$('#wishlist-checkbox-' + sno).prop("checked", true);
			act(mode);
		}

		// 체크박스
		$(".label_check")
				.on(
						"click",
						function(e) {
							e.preventDefault();
							if (!$(this).find('input[type=checkbox]').is(
									':checked')) {
								$(this).find('input[type=checkbox]').prop(
										'checked', 'checked');
								$(this).addClass('checked');
							} else {
								$(this).find('input[type=checkbox]').prop(
										'checked', '');
								$(this).removeClass('checked');
								$(
										'.section_wishlist .tbl_type1 th .label_check')
										.removeClass('checked');
								$(
										'.section_wishlist .tbl_type1 th input[name=all_checked]')
										.prop('checked', '');
							}

							if ($(this).find('input').attr('name') === "all_checked") {
								var target = $('.section_wishlist .tbl_type1 td input[type=checkbox]');
								if ($(this).find('input[name=all_checked]').is(
										':checked')) {
									target.prop('checked', 'checked');
									target.parent('label').addClass('checked');
								} else {
									target.prop('checked', '');
									target.parent('label').removeClass(
											'checked');
								}
							}
						});
	</script>

	<style>
#headerLogo {
	position: relative;
	width: 1050px;
	height: 63px;
	margin: 0 auto
}

#headerLogo .bnr_delivery {
	position: absolute;
	left: 17px;
	top: -28px;
	margin: auto;
	height: 22px
}

#headerLogo .bnr_delivery img {
	width: 163px;
	height: 22px
}

#headerLogo .logo {
	position: absolute;
	left: 476px;
	top: -22px;
	width: 99px
}

#headerLogo .logo img {
	width: 103px;
	height: 79px
}

#gnb.gnb_stop {
	position: fixed;
	z-index: 300;
	left: 0;
	top: 0;
	width: 100%
}

#gnb .gnb_kurly {
	position: relative;
	z-index: 300;
	min-width: 1050px;
	background-color: #fff;
	font-family: 'Noto Sans';
	letter-spacing: -0.3px
}

#gnb .gnb_kurly:after {
	content: "";
	position: absolute;
	z-index: 299;
	left: 0;
	top: 56px;
	width: 100%;
	height: 9px;
	background: url(https://res.kurly.com/pc/service/common/1902/bg_1x9.png)
		repeat-x 0 100%
}

#gnb .inner_gnbkurly {
	position: relative;
	width: 1050px;
	height: 56px;
	margin: 0 auto
}
/* 검색창 */
#gnb .gnb_search {
	position: absolute;
	right: 45px;
	top: 10px;
	width: 238px
}

#gnb .gnb_search .inp_search {
	width: 238px;
	height: 36px;
	padding: 0 50px 0 20px;
	border: 1px solid #f7f7f6;
	border-radius: 18px;
	background-color: #f7f7f7;
	font-family: 'Noto Sans';
	font-weight: 400;
	font-size: 12px;
	color: #666;
	line-height: 16px;
	outline: none
}

#gnb .gnb_search .inp_search.focus {
	background-color: #fff;
	color: #333
}

#gnb .gnb_search .btn_search {
	position: absolute;
	right: 10px;
	top: 3px;
	width: 30px;
	height: 30px
}
/* 장바구니 */
#gnb .cart_count {
	position: absolute;
	right: -6px;
	top: 10px
}

#gnb .cart_count .inner_cartcount {
	text-align: center;
	font-weight: 400
}

#gnb .cart_count .num {
	display: none;
	position: absolute;
	left: 19px;
	top: -1px;
	min-width: 20px;
	height: 20px;
	padding: 0 5px;
	border: 2px solid #fff;
	border-radius: 10px;
	background-color: #5f0080;
	font-size: 9px;
	color: #fff;
	line-height: 15px;
	text-align: center;
	white-space: nowrap
}

#gnb .cart_count img {
	display: block;
	width: 36px;
	height: 36px;
	margin: 0 auto
}

#gnb .cart_count .msg_cart {
	display: none;
	position: absolute;
	right: -7px;
	top: 61px;
	width: 348px;
	height: 102px;
	border: 1px solid #ddd;
	background-color: #fff;
	opacity: 0
}

#gnb .cart_count .inner_msgcart {
	display: block;
	overflow: hidden;
	padding: 20px 0 0 20px
}

#gnb .cart_count .msg_cart .thumb {
	float: left;
	width: 46px;
	height: 60px
}

#gnb .cart_count .msg_cart .desc {
	float: left;
	width: 240px;
	padding: 8px 0 0 20px;
	font-weight: 700;
	font-size: 14px;
	line-height: 21px
}

#gnb .cart_count .msg_cart .tit {
	display: block;
	overflow: hidden;
	width: 100%;
	color: #999;
	white-space: nowrap;
	text-overflow: ellipsis
}

#gnb .cart_count .msg_cart .name {
	overflow: hidden;
	float: left;
	max-width: 178px;
	text-overflow: ellipsis
}

#gnb .cart_count .msg_cart .txt {
	display: block;
	padding-top: 3px;
	color: #333
}

#gnb .cart_count .msg_cart .point {
	position: absolute;
	right: 13px;
	top: -14px;
	width: 20px;
	height: 14px;
	background: url(https://res.kurly.com/pc/ico/1903/ico_layer_point.png)
		no-repeat 0 0
}
/* GNB메인 */
#gnb .gnb_main {
	overflow: hidden;
	width: 1050px;
	margin: 0 auto
}

#gnb .gnb_main .gnb {
	float: left;
	width: 100%
}

#gnb .gnb_main .gnb li {
	float: left;
	background:
		url(https://res.kurly.com/pc/service/common/1902/line_1x11_c_ccc.png)
		no-repeat 100% 23px
}

#gnb .gnb_main .gnb .lst {
	background: none
}

#gnb .gnb_main .gnb a {
	overflow: hidden;
	float: left;
	height: 55px;
	padding: 16px 50px 0 48px;
	font-size: 16px;
	color: #333;
	line-height: 20px
}

#gnb .gnb_main .gnb a .txt {
	font-weight: 700
}

#gnb .gnb_main .gnb a:hover, #gnb .gnb_main .gnb a.on {
	font-weight: 700;
	color: #5f0080
}

#gnb .gnb_main .gnb a:hover .txt {
	border-bottom: 1px solid #5f0080
}

#gnb .gnb_main .menu1 a {
	padding-left: 19px
}

#gnb .gnb_main .menu1 .ico {
	float: left;
	width: 16px;
	height: 14px;
	margin: 4px 14px 0 0;
	background:
		url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off.png)
		no-repeat
}

#gnb .gnb_main .menu1 a.on .ico, #gnb .gnb_main .menu1 a:hover .ico {
	background:
		url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all.png)
		no-repeat 0 0
}

#gnb .gnb_main .menu1 a.on .txt, #gnb .gnb_main .menu1 a:hover .txt,
	#gnb .gnb_main .menu1 .txt {
	float: left;
	font-weight: 700;
	border-bottom: 0
}
/* GNB서브 */
#gnb .gnb_sub {
	display: none;
	overflow: hidden;
	position: absolute;
	z-index: 301;
	left: 0;
	top: 55px;
	width: 213px;
	padding-top: 1px
}

#gnb .gnb_sub .inner_sub {
	width: 100%;
	border: 1px solid #ddd;
	background:
		url(https://res.kurly.com/pc/service/common/1908/bg_gnb_sub_v3.png)
		repeat-y 0 0
}

#gnb .size_over {
	overflow-x: hidden;
	overflow-y: auto
}

#gnb .gnb_sub .gnb_menu {
	width: 219px
}

#gnb .gnb_sub .gnb_menu li {
	width: 100%;
	text-align: left
}

#gnb .gnb_sub .gnb_menu li:first-child {
	padding-top: 0
}

#gnb .gnb_sub .menu {
	display: block;
	overflow: hidden;
	width: 100%;
	height: 40px;
	padding: 8px 0 0 14px;
	cursor: pointer
}

#gnb .gnb_sub .gnb_menu li:first-child .menu {
	height: 39px;
	padding-top: 7px
}

#gnb .gnb_sub .current .menu {
	background: #f7f7f7
}

#gnb .gnb_sub .current .txt, #gnb .gnb_sub .menu.on.off:hover .txt, #gnb .gnb_sub .menu.on .txt
	{
	font-weight: 700;
	color: #5f0080
}

#gnb .gnb_sub .ico {
	float: left;
	width: 24px;
	height: 24px
}

#gnb .gnb_sub .ico img {
	width: 24px;
	height: 24px
}

#gnb .gnb_sub .ico .ico_off {
	display: block
}

#gnb .gnb_sub .ico .ico_on {
	display: none
}

#gnb .gnb_sub .current .ico_off, #gnb .gnb_sub .menu.on .ico_off, #gnb .gnb_sub .menu:hover .ico_off
	{
	display: none
}

#gnb .gnb_sub .current .ico_on, #gnb .gnb_sub .menu.on .ico_on, #gnb .gnb_sub .menu:hover .ico_on
	{
	display: block
}

#gnb .gnb_sub .ico_arrow {
	display: none;
	float: right;
	width: 16px;
	height: 17px;
	padding: 6px 9px 0 0
}

#gnb .gnb_sub .ico_arrow img {
	width: 7px;
	height: 11px
}

#gnb .gnb_sub .current .ico_arrow {
	display: block
}

#gnb .gnb_sub .txt {
	float: left;
	padding: 0 4px 0 10px;
	font-weight: 400;
	font-size: 14px;
	color: #333;
	line-height: 22px;
	white-space: nowrap
}

#gnb .gnb_sub .ico_new {
	overflow: hidden;
	float: left;
	width: 14px;
	height: 14px;
	margin-top: 5px;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	background-size: 14px 14px;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px
}

#gnb .gnb_sub .sub_menu {
	position: absolute;
	z-index: 0;
	left: 200px;
	top: 0;
	width: 248px;
	height: 100%;
	padding: 0 0 0 20px;
	background: url(https://res.kurly.com/images/common/bg_1_1.gif) repeat 0
		0;
	opacity: 0;
	transition: opacity 0.2s
}

#gnb .gnb_sub .current .sub_menu {
	z-index: 1;
	opacity: 1;
	transition: opacity 0.5s
}

#gnb .gnb_sub .sub_menu li:first-child {
	padding-top: 11px
}

#gnb .gnb_sub .sub_menu .sub {
	display: block;
	overflow: hidden;
	height: 40px;
	padding-left: 20px;
	font-size: 14px;
	color: #333;
	line-height: 18px;
	cursor: pointer
}

#gnb .gnb_sub .sub_menu .sub:hover .name {
	border-bottom: 1px solid #5f0080;
	font-weight: 700;
	color: #5f0080
}

#gnb .gnb_sub .sub_menu .sub.on {
	font-weight: 700;
	color: #5f0080
}

#gnb .gnb_sub .recommend {
	overflow: hidden;
	width: 529px;
	padding: 21px 0 0 40px
}

#gnb .gnb_sub .recommend li {
	float: left;
	width: 120px;
	height: 130px;
	padding: 0 10px 0 0
}

#gnb .gnb_sub .recommend li:first-child {
	padding-top: 0
}

#gnb .gnb_sub .recommend .sub {
	display: block;
	overflow: hidden;
	width: 120px;
	height: 130px;
	padding: 0;
	cursor: pointer
}

#gnb .gnb_sub .recommend .thumb {
	display: block;
	width: 110px;
	height: 83.4px;
	margin-bottom: 8px;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	background-size: cover
}

#gnb .gnb_sub .recommend .thumb img {
	width: 110px;
	height: 84px
}

#gnb .gnb_sub .recommend .name {
	font-size: 14px;
	line-height: 18px
}

@media only screen and (-webkit-min-device-pixel-ratio: 1.5) , only screen and
		(min-device-pixel-ratio: 1.5) , only screen and (min-resolution:
	1.5dppx) {
	#gnb .gnb_sub .ico_new {
		background: url(https://res.kurly.com/pc/ico/1808/ico_new_gnb_16x16.png)
			no-repeat 0 0;
		background-size: 8px 8px
	}
	#gnb .cart_count .msg_cart .point {
		background:
			url(https://res.kurly.com/pc/ico/1903/ico_layer_point_x2.png)
			no-repeat 0 0;
		background-size: 20px 14px
	}
	#gnb .gnb_main .menu1 .ico {
		background:
			url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off_x2.png)
			no-repeat 0 0;
		background-size: 16px 14px
	}
	#gnb .gnb_main .menu1 a.on .ico, #gnb .gnb_main .menu1 a:hover .ico {
		background:
			url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_x2.png)
			no-repeat 0 0;
		background-size: 16px 14px
	}
}
</style>
	<div id="headerLogo" class="layout-wrapper">
		<h1 class="logo">
			<a href="/"><img
				src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png"
				alt="마켓컬리 로고"></a>
		</h1>
		<a href="/shop/board/view.php?id=notice&amp;no=64"
			onclick="ga('send','event','etc','main_gif_btn_click');"
			class="bnr_delivery"> <img
			src="https://res.kurly.com/pc/service/common/1908/delivery_190819.gif"
			alt="서울, 경기, 인천 샛별배송, 수도권 이외 지역 택배배송">
		</a>
	</div>
	<div id="gnb" class="">
		<h2 class="screen_out">메뉴</h2>
		<div id="gnbMenu" class="gnb_kurly">
			<div class="inner_gnbkurly">
				<div class="gnb_main">
					<ul class="gnb">
						<li class="menu1"><a href="#none" class=""><span
								class="ico"></span><span class="txt">전체 카테고리</span></a></li>
						<li><a href="/shop/goods/goods_list.php?category=038"><span
								class="txt">신상품</span></a></li>
						<li><a href="/shop/goods/goods_list.php?category=029"><span
								class="txt">베스트</span></a></li>
						<li><a href="/shop/goods/goods_list.php?list=sale"><span
								class="txt">알뜰쇼핑</span></a></li>
						<li class="lst"><a href="/shop/goods/event.php?&amp;"><span
								class="txt">이벤트</span></a></li>
					</ul>
					<div id="side_search" class="gnb_search">
						<form action="/shop/goods/goods_search.php?&amp;"
							onsubmit="return chkForm(this)">
							<input type="hidden" name="searched" value="Y"> <input
								type="hidden" name="log" value="1"> <input type="hidden"
								name="skey" value="all"> <input type="hidden"
								name="hid_pr_text" value=""> <input type="hidden"
								name="hid_link_url" value=""> <input type="hidden"
								id="edit" name="edit" value=""> <input name="sword"
								type="text" id="" value="" required="required" label="검색어"
								class="inp_search"> <input type="image"
								src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
								class="btn_search">
						</form>
					</div>
					<div class="cart_count">
						<div class="inner_cartcount">
							<a href="/shop/goods/goods_cart.php" class="btn_cart"><img
								src="https://res.kurly.com/pc/ico/1908/ico_cart_x2_v2.png"
								alt="장바구니"> <span id="cart_item_count"
								class="num realtime_cartcount" style="display: inline;">1</span></a>
						</div>
						<div id="addMsgCart" class="msg_cart">
							<span class="point"></span>
							<div class="inner_msgcart">
								<img src="https://res.kurly.com/images/common/bg_1_1.gif" alt=""
									class="thumb">
								<p class="desc">
									<span class="tit"></span> <span class="txt">장바구니에 담겼습니다.</span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="gnb_sub" style="display: none; width: 219px;">
					<div class="inner_sub">
						<ul data-default="219" data-min="219" data-max="731"
							class="gnb_menu" style="height: auto;">
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1568681848.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1568681849.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">채소</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">기본채소</span></a> <!----></li>
									<li><a class="sub"><span class="name">쌈·샐러드·간편채소</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">브로콜리·특수채소</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">콩나물·버섯류</span></a> <!----></li>
									<li><a class="sub"><span class="name">양파·마늘·생강·파</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">시금치·부추·나물</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">파프리카·피망·고추</span></a>
										<!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_fruit_inactive_pc@2x.1568684150.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_fruit_active_pc@2x.1568684150.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">과일·견과·쌀</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">국산과일</span></a> <!----></li>
									<li><a class="sub"><span class="name">수입과일</span></a> <!----></li>
									<li><a class="sub"><span class="name">냉동·건과일</span></a> <!----></li>
									<li><a class="sub"><span class="name">견과류</span></a> <!----></li>
									<li><a class="sub"><span class="name">쌀·잡곡</span></a> <!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_seafood_inactive_pc@2x.1568684352.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_seafood_active_pc@2x.1568684353.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">수산·해산·건어물</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">생선류</span></a> <!----></li>
									<li><a class="sub"><span class="name">오징어·낙지·문어</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">새우·게·랍스터</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">해산물·조개류</span></a> <!----></li>
									<li><a class="sub"><span class="name">수산가공품</span></a> <!----></li>
									<li><a class="sub"><span class="name">김·미역·해조류</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">건어물·다시팩</span></a> <!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_meat_inactive_pc@2x.1568684452.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_meat_active_pc@2x.1568684452.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">정육·계란</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">소고기</span></a> <!----></li>
									<li><a class="sub"><span class="name">돼지고기</span></a> <!----></li>
									<li><a class="sub"><span class="name">계란류</span></a> <!----></li>
									<li><a class="sub"><span class="name">닭·오리고기</span></a> <!----></li>
									<li><a class="sub"><span class="name">양념육·돈까스</span></a> <!----></li>
									<li><a class="sub"><span class="name">양고기</span></a> <!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_side_inactive_pc@2x.1572243579.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_side_active_pc@2x.1572243579.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">국·반찬·메인요리</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">국·탕·찌개</span></a> <!----></li>
									<li><a class="sub"><span class="name">밑반찬</span></a> <!----></li>
									<li><a class="sub"><span class="name">김치·장아찌·젓갈</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">두부·어묵·부침개</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">햄·소시지·통조림</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">메인요리</span></a> <!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_convenient_inactive_pc@2x.1572243542.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_convenient_active_pc@2x.1572243543.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">샐러드·간편식</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">샐러드·도시락</span></a> <!----></li>
									<li><a class="sub"><span class="name">간편식·냉동식품</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">밥류·면식품·즉석식품</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">선식·시리얼·그래놀라</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">만두·튀김·떡볶이</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">죽·스프</span></a> <!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_sauce_inactive_pc@2x.1572243594.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_sauce_active_pc@2x.1572243594.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">면·양념·오일</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">파스타·면류</span></a> <!----></li>
									<li><a class="sub"><span class="name">밀가루·가루·믹스</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">향신료·소스·드레싱</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">양념·액젓·장류</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">소금·설탕·식초·꿀</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">식용유·참기름·오일</span></a>
										<!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_snacks_inactive_pc@2x.1572243615.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_snacks_active_pc@2x.1572243616.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">음료·우유·떡·간식</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">생수·음료·주스</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">커피·차</span></a> <!----></li>
									<li><a class="sub"><span class="name">우유·두유·요거트</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">아이스크림</span></a> <!----></li>
									<li><a class="sub"><span class="name">떡·한과</span></a> <!----></li>
									<li><a class="sub"><span class="name">간식·과자·쿠키</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">초콜릿·젤리·캔디</span></a>
										<!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_deli_inactive_pc@2x.1568687352.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_deli_active_pc@2x.1568687352.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">베이커리·치즈·델리</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">식빵·빵류</span></a> <!----></li>
									<li><a class="sub"><span class="name">잼·버터·스프레드</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">케이크·파이·디저트</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">치즈</span></a> <!----></li>
									<li><a class="sub"><span class="name">건조육</span></a> <!----></li>
									<li><a class="sub"><span class="name">올리브·피클·델리</span></a>
										<!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_health_inactive_pc@2x.1568687394.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_health_active_pc@2x.1568687395.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">건강식품·생활용품</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">건강식품·건강즙</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">영양제·유산균</span></a> <!----></li>
									<li><a class="sub"><span class="name">바디·스킨케어</span></a> <!----></li>
									<li><a class="sub"><span class="name">헤어·구강케어</span></a> <!----></li>
									<li><a class="sub"><span class="name">휴지·생활용품</span></a> <!----></li>
									<li><a class="sub"><span class="name">주방·욕실·세탁세제</span></a>
										<!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_living_inactive_pc@2x.1568687472.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_living_active_pc@2x.1568687472.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">주방·홈리빙</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">주방용품</span></a> <!----></li>
									<li><a class="sub"><span class="name">주방·생활가전</span></a> <!----></li>
									<li><a class="sub"><span class="name">냄비·식기류</span></a> <!----></li>
									<li><a class="sub"><span class="name">컵·와인잔·사케잔</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">인테리어 소품</span></a> <!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_kids_inactive_pc@2x.1568687537.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_kids_active_pc@2x.1568687537.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">베이비·키즈</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">분유·간편 이유식</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">이유식 재료</span></a> <!----></li>
									<li><a class="sub"><span class="name">유아·어린이 음식</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">간식·음료·건강식품</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">유아용품·젖병·식기류</span></a>
										<!----></li>
									<li><a class="sub"><span class="name">기저귀·물티슈</span></a> <!----></li>
									<li><a class="sub"><span class="name">목욕·세제·위생용품</span></a>
										<!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://img-cf.kurly.com/shop/data/category/icon_pet_inactive_pc@2x.1568687585.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://img-cf.kurly.com/shop/data/category/icon_pet_active_pc@2x.1568687585.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">반려동물</span> <!----></span></a>
								<ul class="sub_menu">
									<li><a class="sub"><span class="name">강아지 간식</span></a> <!----></li>
									<li><a class="sub"><span class="name">강아지 주식</span></a> <!----></li>
									<li><a class="sub"><span class="name">고양이 간식</span></a> <!----></li>
									<li><a class="sub"><span class="name">고양이 주식</span></a> <!----></li>
									<li><a class="sub"><span class="name">반려동물 용품</span></a> <!----></li>
								</ul></li>
							<li><a class="menu"><span class="ico"><img
										src="https://res.kurly.com/pc/service/common/1908/ico_recommend_v2.png"
										alt="ī�װ��� ������" class="ico_off"> <img
										src="https://res.kurly.com/pc/service/common/1908/ico_recommend_on_v2.png"
										alt="ī�װ��� ������" class="ico_on"></span> <span class="tit"><span
										class="txt">�ø��� ��õ</span> <!----></span></a>
								<ul class="sub_menu recommend">
									<li>
										<!----> <a class="sub"><span class="thumb"
											style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_snack.1558661747.jpg&quot;);"><img
												src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
												alt=""></span> <span class="name">즐거운 간식</span></a>
									</li>
									<li>
										<!----> <a class="sub"><span class="thumb"
											style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_breakfast.1555047892.jpg&quot;);"><img
												src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
												alt=""></span> <span class="name">간편한 아침식사</span></a>
									</li>
									<li>
										<!----> <a class="sub"><span class="thumb"
											style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_offline.1551686542.jpg&quot;);"><img
												src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
												alt=""></span> <span class="name">오프라인 맛집</span></a>
									</li>
									<li>
										<!----> <a class="sub"><span class="thumb"
											style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_pb.1548657975.jpg&quot;);"><img
												src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
												alt=""></span> <span class="name">컬리가 만든 상품</span></a>
									</li>
									<li>
										<!----> <a class="sub"><span class="thumb"
											style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_banchan.1548657995.jpg&quot;);"><img
												src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
												alt=""></span> <span class="name">반찬가게</span></a>
									</li>
									<li>
										<!----> <a class="sub"><span class="thumb"
											style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_jeachul.1571109643.jpg&quot;);"><img
												src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
												alt=""></span> <span class="name">제철 음식</span></a>
									</li>
									<li>
										<!----> <a class="sub"><span class="thumb"
											style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_daily.1556783369.jpg&quot;);"><img
												src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
												alt=""></span> <span class="name">생활 필수품</span></a>
									</li>
									<li>
										<!----> <a class="sub"><span class="thumb"
											style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_brand.1548658049.jpg&quot;);"><img
												src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png"
												alt=""></span> <span class="name">브랜드관</span></a>
									</li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://www.kurly.com/common_js/gnb_v1.js?ver=20191029093151"></script>
	<script type="text/javascript">
	//
	gnbMenu.update();
	
	// 검색창 클래스 추가/삭제
	$(document).ready(function(){
	    $('#gnb .inp_search').focus(function(){
	        $(this).addClass('focus');
	    });
	    $('#gnb .inp_search').blur(function(){
	        $(this).removeClass('focus');
	    });
	    // 검색창기능 수정
	    $('[name=sword]').on('keyup', function(){
	        if($('#edit').length > 0) $('#edit').val('Y');
	        var str = $(this).val();
	        var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@#$%&\\\=\(\'\"]/gi;
	        if(regExp.test(str)){
	            var result = str.replace(regExp, "");
	            $(this).val(result);
	        }
	    });
	});
</script>
</div>