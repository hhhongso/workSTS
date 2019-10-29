<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="euc-kr" />
<meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta name="description" content="국내 최초 새벽배송, 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta property="og:description" content="국내 최초 새벽배송, 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo_sns_marketkurly_180810.png" />
<meta property="og:url" content="https://www.kurly.com/shop/member/myinfo.php?" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />
<meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식" />
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<meta name="naver-site-verification" content="58ff7c242d41178131208256bfec0c2f93426a1d" />
<script type="text/javascript" src="https://res.kurly.com/js/lib/jquery-1.10.2.min.js?ver=20191029144301"></script>
<link rel="shortcut icon" href="https://res.kurly.com/images/marketkurly/logo/favicon_v2.png" type="image/x-icon">
<script>
var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiZDY1MTY0MTYwZDMzOWY3ZmI0MmU5ZmNhMjY3ZmVlY2UiLCJpc19ndWVzdCI6ZmFsc2UsInV1aWQiOiJmY2MxM2VlMC03MDllLTU0MGEtODM1OS1kNjZiYjhhNTAxODMiLCJzdWIiOiJmY2MxM2VlMC03MDllLTU0MGEtODM1OS1kNjZiYjhhNTAxODMiLCJpc3MiOiJodHRwOi8vbWt3ZWIuYXBpLmt1cmx5LnNlcnZpY2VzL3YxL3VzZXJzL2F1dGgvbG9naW4iLCJpYXQiOjE1NzIzMjc0MDMsImV4cCI6MTU3MjMzMTAwMywibmJmIjoxNTcyMzI3NDAzLCJqdGkiOiI1VFoyYldDb25BMXhndngyIn0.Cjg-MN56Zax52vfi7kwMeSkyo97o2GkjvQ7oBAViCVY';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('1');
var checkIsApp = true;// 해당스크립트관련으로 앱체크공용변수추가 생성.앱에서 불필요한 호출제거
</script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?ver=20191029144301"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/thefarmers.js?ver=20191029144301"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/common.js?ver=20191029144301"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/polify.js?ver=20191029144301"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/ui_v2.js?ver=20191029144301"></script>
<script src="https://res.kurly.com/js/lib/jquery.lazyload.min.js?ver=20191029144301"></script>

<script src="//res.kurly.com/js/vue/xdomain.min.js" slave="https://api.kurly.com/xdomain"></script>

<script src="//res.kurly.com/js/vue/es6-promise.min.js?ver=20191029144301"></script>
<script src="//res.kurly.com/js/vue/es6-promise.auto.min.js?ver=20191029144301"></script>

<script type="text/javascript" src="//res.kurly.com/js/vue/axios.min.js?ver=20191029144301"></script>


<script src="//res.kurly.com/js/vue/vue.min.js?ver=20191029144301"></script>
<script src="https://www.kurly.com/common_js/axios.js?ver=20191029144301"></script>
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/normalize.css?ver=20191029144301">
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/section1.css?ver=20191029144301">
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/common.css?ver=20191029144301">

<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="https://www.kurly.com/shop/lib/js/naverCommonInflowScript.js?Path=member/myinfo.php&amp;Referer=&amp;AccountID=s_4f41b5625072&amp;Inflow=kurly.com" id="naver-common-inflow-script"></script>



<style>.async-hide { opacity: 0 !important} </style>
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), 
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-90734988-1', 'auto');//'UA-90734988-1'
<!-- KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->
<!-- End KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->

var uuidCheck = "fcc13ee0-709e-540a-8359-d66bb8a50183";
var cookie_uuid = null;

function setCookieGa(cookieName, value){
	var exdays = 365;
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue +"; path=/;"
}

function getCookieGa(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if(start != -1){
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}

function deleteCookieGa(cookieName){
	var expireDate = new Date();
	//어제 날짜를 쿠키 소멸 날짜로 설정한다.
	expireDate.setDate( expireDate.getDate() - 1 );
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
}


/* 로그인 */
if(uuidCheck !== "") {
	if( !getCookieGa('ga_uuid') ){
		setCookieGa('ga_uuid', uuidCheck);
	}else{
		if( getCookieGa('ga_uuid') !== uuidCheck){
			deleteCookieGa('ga_uuid');
			setCookieGa('ga_uuid', uuidCheck); /* 로그인 사용자쿠키 추가 */
		}
	}
	ga('set', 'userId', uuidCheck);
	ga('send', 'pageview',{'dimension1':  uuidCheck});
}else{
	ga('send', 'pageview');
}

//edge browser correspondence
var enableSelection = true;
$(function(){
    $('input, textarea').on('focus', function(){
        enableSelection = false;
    }).on('blur', function(){
        enableSelection = true;
    });
});
</script>



<style>
body .criteo_header{display:none}
</style>
<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
<script>
	var criteoEmail = "";
	if(uuidCheck != ""){
        // criteoEmail = uuidCheck+"@kurlycorp.com";
	}
</script>




<script>
	(function(b,r,a,n,c,h,_,s,d,k){if(!b[n]||!b[n]._q){for(;s<_.length;)c(h,_[s++]);d=r.createElement(a);d.async=1;d.src="https://cdn.branch.io/branch-latest.min.js";k=r.getElementsByTagName(a)[0];k.parentNode.insertBefore(d,k);b[n]=h}})(window,document,"script","branch",function(b,r){b[r]=function(){b._q.push([r,arguments])}},{_q:[],_v:1},"addListener applyCode autoAppIndex banner closeBanner closeJourney creditHistory credits data deepview deepviewCta first getCode init link logout redeem referrals removeListener sendSMS setBranchViewData setIdentity track validateCode trackCommerceEvent logEvent disableTracking".split(" "), 0);
	branch.init('key_live_meOgzIdffiVWvdquf7Orkacksxa2LneN');
	// branch.init('key_test_joIkrHgomhL3qaEreXL5QdigzEn6Ucd4');
	branch.setIdentity(uuidCheck);
	// reopen
	branch.track("pageview");
</script>

</head>
<body class="member-myinfo" oncontextmenu="return false" ondragstart="return false" onselectstart="return !enableSelection">


<div id="wrap" class="">
<div id="pos_scroll"></div>
<div id="container">
<div id="header">
<style type="text/css">
    .notice_ie8{display:none;width:100%;height:70px;padding-top:23px;background-color:#d5586f;font-weight:400;font-size:16px;font-family:'Noto Sans';color:#fff;letter-spacing:-0.4px;text-align:center}
    .notice_ie8 .inner_noticeie8{display:block;width:1050px;margin:0 auto}
    .notice_ie8 .emph{padding:0 16px 0 11px;background:url(https://res.kurly.com/pc/ico/1801/ico_arrow_noticeie8.png) no-repeat 100% 55%;font-family:'Noto Sans';font-weight:700}
</style>
<a target="_blank" href="https://support.microsoft.com/ko-kr/help/17621/internet-explorer-downloads" id="noticeIe8" class="notice_ie8">
<span class="inner_noticeie8">
고객님의 브라우저에서는 마켓컬리가 정상 동작하지 않습니다. 최신버전의 인터넷 익스플로러를 이용해주세요.
<span class="emph">설치하기</span>
</span>
</a>
<script type="text/javascript">
if( (document.all && !document.querySelector) || (document.all && document.querySelector && !document.addEventListener) ){
    $('#noticeIe8').css({'display':'block'});
}
</script>

<div class="bnr_header bnr_top_friend" id="top-message">


<a href="https://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/friend/friend_191001">
친구 초대하면 친구도 나도 적립금 <b>5천원!</b><img src="https://res.kurly.com/pc/ico/1908/ico_arrow_333_84x84.png" class="bnr_arr">
<div class="bnr_top">
<div class="inner_top_close">
<button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
</div>
</div>
</a>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        $("#top-message-close").on("click",function(){
            setCookie('top_msg_banner2','set_cookie',1)
        });
        if(getCookie('top_msg_banner2') == 'set_cookie'){
            $("#top-message").hide()
        }else{
            $("#top-message").show() ;
        }
    });

    function setCookie(cookieName, value, exdays){
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + exdays);
        var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
        document.cookie = cookieName + "=" + cookieValue +"; path=/;"
    }

    function getCookie(cookieName) {
        cookieName = cookieName + '=';
        var cookieData = document.cookie;
        var start = cookieData.indexOf(cookieName);
        var cookieValue = '';
        if(start != -1){
            start += cookieName.length;
            var end = cookieData.indexOf(';', start);
            if(end == -1)end = cookieData.length;
            cookieValue = cookieData.substring(start, end);
        }
        return unescape(cookieValue);
    }
</script>

<div id="userMenu">
<user-menu-pc :login-check="loginCheck" :notification-item="notificationItem" :user-info="userInfo" :return-url="returnUrl"></user-menu-pc>
</div>
<script src="https://www.kurly.com/common_js/usermenu_v1.js?ver=20191029144301"></script>
<script>
$(document).ready(function(){
    
    userMenu.loginCheck = true;
    userMenu.userInfo ={
        userGrade : '0',
        userGradeName : '일반',
        memberName : '홍소연'
    }

    userMenu.update();
});
</script>

<style>
#headerLogo{position:relative;width:1050px;height:63px;margin:0 auto}
#headerLogo .bnr_delivery{position:absolute;left:17px;top:-28px;margin:auto;height:22px}
#headerLogo .bnr_delivery img{width:163px;height:22px}
#headerLogo .logo{position:absolute;left:476px;top:-22px;width:99px}
#headerLogo .logo img{width:103px;height:79px}
#gnb.gnb_stop{position:fixed;z-index:300;left:0;top:0;width:100%}
#gnb .gnb_kurly{position:relative;z-index:300;min-width:1050px;background-color:#fff;font-family:'Noto Sans';letter-spacing:-0.3px}
#gnb .gnb_kurly:after{content:"";position:absolute;z-index:299;left:0;top:56px;width:100%;height:9px;background:url(https://res.kurly.com/pc/service/common/1902/bg_1x9.png) repeat-x 0 100%}
#gnb .inner_gnbkurly{position:relative;width:1050px;height:56px;margin:0 auto}
/* 검색창 */
#gnb .gnb_search{position:absolute;right:45px;top:10px;width:238px}
#gnb .gnb_search .inp_search{width:238px;height:36px;padding:0 50px 0 20px;border:1px solid #f7f7f6;border-radius:18px;background-color:#f7f7f7;font-family: 'Noto Sans';font-weight:400;font-size:12px;color:#666;line-height:16px;outline:none}
#gnb .gnb_search .inp_search.focus{background-color:#fff;color:#333}
#gnb .gnb_search .btn_search{position:absolute;right:10px;top:3px;width:30px;height:30px}
/* 장바구니 */
#gnb .cart_count{position:absolute;right:-6px;top:10px}
#gnb .cart_count .inner_cartcount{text-align:center;font-weight:400}
#gnb .cart_count .num{display:none;position:absolute;left:19px;top:-1px;min-width:20px;height:20px;padding:0 5px;border:2px solid #fff;border-radius:10px;background-color:#5f0080;font-size:9px;color:#fff;line-height:15px;text-align:center;white-space:nowrap}
#gnb .cart_count img{display:block;width:36px;height:36px;margin:0 auto}
#gnb .cart_count .msg_cart{display:none;position:absolute;right:-7px;top:61px;width:348px;height:102px;border:1px solid #ddd;background-color:#fff;opacity:0}
#gnb .cart_count .inner_msgcart{display:block;overflow:hidden;padding:20px 0 0 20px}
#gnb .cart_count .msg_cart .thumb{float:left;width:46px;height:60px}
#gnb .cart_count .msg_cart .desc{float:left;width:240px;padding:8px 0 0 20px;font-weight:700;font-size:14px;line-height:21px}
#gnb .cart_count .msg_cart .tit{display:block;overflow:hidden;width:100%;color:#999;white-space:nowrap;text-overflow:ellipsis}
#gnb .cart_count .msg_cart .name{overflow:hidden;float:left;max-width:178px;text-overflow:ellipsis}
#gnb .cart_count .msg_cart .txt{display:block;padding-top:3px;color:#333}
#gnb .cart_count .msg_cart .point{position:absolute;right:13px;top:-14px;width:20px;height:14px;background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point.png) no-repeat 0 0}
/* GNB메인 */
#gnb .gnb_main{overflow:hidden;width:1050px;margin:0 auto}
#gnb .gnb_main .gnb{float:left;width:100%}
#gnb .gnb_main .gnb li{float:left;background:url(https://res.kurly.com/pc/service/common/1902/line_1x11_c_ccc.png) no-repeat 100% 23px}
#gnb .gnb_main .gnb .lst{background:none}
#gnb .gnb_main .gnb a{overflow:hidden;float:left;height:55px;padding:16px 50px 0 48px;font-size:16px;color:#333;line-height:20px}
#gnb .gnb_main .gnb a .txt{font-weight:700}
#gnb .gnb_main .gnb a:hover,
#gnb .gnb_main .gnb a.on{font-weight:700;color:#5f0080}
#gnb .gnb_main .gnb a:hover .txt{border-bottom:1px solid #5f0080}
#gnb .gnb_main .menu1 a{padding-left:19px}
#gnb .gnb_main .menu1 .ico{float:left;width:16px;height:14px;margin:4px 14px 0 0;background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off.png) no-repeat}
#gnb .gnb_main .menu1 a.on .ico,
#gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all.png) no-repeat 0 0}
#gnb .gnb_main .menu1 a.on .txt,
#gnb .gnb_main .menu1 a:hover .txt,
#gnb .gnb_main .menu1 .txt{float:left;font-weight:700;border-bottom:0}
/* GNB서브 */
#gnb .gnb_sub{display:none;overflow:hidden;position:absolute;z-index:301;left:0;top:55px;width:213px;padding-top:1px}
#gnb .gnb_sub .inner_sub{width:100%;border:1px solid #ddd;background:url(https://res.kurly.com/pc/service/common/1908/bg_gnb_sub_v3.png) repeat-y 0 0}
#gnb .size_over{overflow-x:hidden;overflow-y:auto}
#gnb .gnb_sub .gnb_menu{width:219px}
#gnb .gnb_sub .gnb_menu li{width:100%;text-align:left}
#gnb .gnb_sub .gnb_menu li:first-child{padding-top:0}
#gnb .gnb_sub .menu{display:block;overflow:hidden;width:100%;height:40px;padding:8px 0 0 14px;cursor:pointer}
#gnb .gnb_sub .gnb_menu li:first-child .menu{height:39px;padding-top:7px}
#gnb .gnb_sub .current .menu{background:#f7f7f7}
#gnb .gnb_sub .current .txt,
#gnb .gnb_sub .menu.on.off:hover .txt,
#gnb .gnb_sub .menu.on .txt{font-weight:700;color:#5f0080}
#gnb .gnb_sub .ico{float:left;width:24px;height:24px}
#gnb .gnb_sub .ico img{width:24px;height:24px}
#gnb .gnb_sub .ico .ico_off{display:block}
#gnb .gnb_sub .ico .ico_on{display:none}
#gnb .gnb_sub .current .ico_off,
#gnb .gnb_sub .menu.on .ico_off,
#gnb .gnb_sub .menu:hover .ico_off{display:none}
#gnb .gnb_sub .current .ico_on,
#gnb .gnb_sub .menu.on .ico_on,
#gnb .gnb_sub .menu:hover .ico_on{display:block}
#gnb .gnb_sub .ico_arrow{display:none;float:right;width:16px;height:17px;padding:6px 9px 0 0}
#gnb .gnb_sub .ico_arrow img{width:7px;height:11px}
#gnb .gnb_sub .current .ico_arrow{display:block}
#gnb .gnb_sub .txt{float:left;padding:0 4px 0 10px;font-weight:400;font-size:14px;color:#333;line-height:22px;white-space:nowrap}
#gnb .gnb_sub .ico_new{overflow:hidden;float:left;width:14px;height:14px;margin-top:5px;background-position:50% 50%;background-repeat:no-repeat;background-size:14px 14px;font-size:0;line-height:0;text-indent:-9999px}
#gnb .gnb_sub .sub_menu{position:absolute;z-index:0;left:200px;top:0;width:248px;height:100%;padding:0 0 0 20px;background:url(https://res.kurly.com/images/common/bg_1_1.gif) repeat 0 0;opacity:0;transition:opacity 0.2s}
#gnb .gnb_sub .current .sub_menu{z-index:1;opacity:1;transition:opacity 0.5s}
#gnb .gnb_sub .sub_menu li:first-child{padding-top:11px}
#gnb .gnb_sub .sub_menu .sub{display:block;overflow:hidden;height:40px;padding-left:20px;font-size:14px;color:#333;line-height:18px;cursor:pointer}
#gnb .gnb_sub .sub_menu .sub:hover .name{border-bottom:1px solid #5f0080;font-weight:700;color:#5f0080}
#gnb .gnb_sub .sub_menu .sub.on{font-weight:700;color:#5f0080}
#gnb .gnb_sub .recommend{overflow:hidden;width:529px;padding:21px 0 0 40px}
#gnb .gnb_sub .recommend li{float:left;width:120px;height:130px;padding:0 10px 0 0}
#gnb .gnb_sub .recommend li:first-child{padding-top:0}
#gnb .gnb_sub .recommend .sub{display:block;overflow:hidden;width:120px;height:130px;padding:0;cursor:pointer}
#gnb .gnb_sub .recommend .thumb{display:block;width:110px;height:83.4px;margin-bottom:8px;background-position:50% 50%;background-repeat:no-repeat;background-size:cover}
#gnb .gnb_sub .recommend .thumb img{width:110px;height:84px}
#gnb .gnb_sub .recommend .name{font-size:14px;line-height:18px}
@media
only screen and (-webkit-min-device-pixel-ratio: 1.5),
only screen and (min-device-pixel-ratio: 1.5),
only screen and (min-resolution: 1.5dppx) {
    #gnb .gnb_sub .ico_new{background:url(https://res.kurly.com/pc/ico/1808/ico_new_gnb_16x16.png) no-repeat 0 0;background-size:8px 8px}
    #gnb .cart_count .msg_cart .point{background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point_x2.png) no-repeat 0 0;background-size:20px 14px}
    #gnb .gnb_main .menu1 .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off_x2.png) no-repeat 0 0;background-size:16px 14px}
    #gnb .gnb_main .menu1 a.on .ico,
    #gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_x2.png) no-repeat 0 0;background-size:16px 14px}
}
</style>
<div id="headerLogo" class="layout-wrapper">
<h1 class="logo"><a href="/"><img src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png" alt="마켓컬리 로고"></a></h1>
<a href="/shop/board/view.php?id=notice&no=64" onclick="ga('send','event','etc','main_gif_btn_click');" class="bnr_delivery">
<img src="https://res.kurly.com/pc/service/common/1908/delivery_190819.gif" alt="서울, 경기, 인천 샛별배송, 수도권 이외 지역 택배배송">
</a>
</div>
<div id="gnb">
<h2 class="screen_out">메뉴</h2>
<div id="gnbMenu" class="gnb_kurly">
<div class="inner_gnbkurly">
<div class="gnb_main">
<ul class="gnb">
<li class="menu1"><a href="#none"><span class="ico"></span><span class="txt">전체 카테고리</span></a></li>
<li><a class="" href="/shop/goods/goods_list.php?category=038"><span class="txt">신상품</span></a></li>
<li><a class="" href="/shop/goods/goods_list.php?category=029"><span class="txt">베스트</span></a></li>
<li><a class="" href="/shop/goods/goods_list.php?list=sale"><span class="txt">알뜰쇼핑</span></a></li>
<li class="lst"><a class="" href="/shop/goods/event.php?&"><span class="txt">이벤트</span></a></li>
</ul>
<div id="side_search" class="gnb_search">
<form action="/shop/goods/goods_search.php?&" onsubmit="return chkForm(this)">
<input type=hidden name=searched value="Y">
<input type=hidden name=log value="1">
<input type=hidden name=skey value="all">
<input type="hidden" name="hid_pr_text" value="" />
<input type="hidden" name="hid_link_url" value="" />
<input type="hidden" id="edit" name="edit" value="" />
<input name=sword type=text id="" class="inp_search" value="" required label="검색어">
<input type=image src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png" class="btn_search">
</form>
</div>
<div class="cart_count">
<div class="inner_cartcount">
<a href="/shop/goods/goods_cart.php" class="btn_cart">
<img src="https://res.kurly.com/pc/ico/1908/ico_cart_x2_v2.png" alt="장바구니">
<span class="num realtime_cartcount" id="cart_item_count"></span> </a>
</div>
<div id="addMsgCart" class="msg_cart">
<span class="point"></span>
<div class="inner_msgcart">
<img src="https://res.kurly.com/images/common/bg_1_1.gif" alt="" class="thumb">
<p class="desc">
<span class="tit"></span>
<span class="txt">장바구니에 담겼습니다.</span>
</p>
</div>
</div>
</div>
</div>
<div class="gnb_sub">
<div class="inner_sub">
<ul class="gnb_menu" data-default="219" data-min="219" data-max="731">
<gnb-menu-pc v-for="(item, idx) in dataGnb" :main-menu="item" :sub-menu="item.categories" :sub-open="item.subOpen" :get-category-num="getCategoryNum" :key="'gnb'+idx" :idx="idx"></gnb-menu-pc>
</ul>
</div>
</div>
</div>
</div>
</div>
<script src="https://www.kurly.com/common_js/gnb_v1.js?ver=20191029144301"></script>
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
        var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
        if(regExp.test(str)){
            var result = str.replace(regExp, "");
            $(this).val(result);
        }
    });
});
</script>
</div>
<div id="main">
<div id="content">

<div id="qnb" class="quick-navigation">
<style>
    #qnb{position:absolute;z-index:1;right:20px;top:70px;width:80px;font:normal 12px/16px "Noto Sans";color:#333;letter-spacing:-0.3px;transition:top 0.2s}
    .goods-goods_view #qnb{top:20px}
    /* 배너 */
    #qnb .bnr_qnb{padding-bottom:7px}
    #qnb .bnr_qnb .thumb{width:80px;height:120px;vertical-align:top}
    /* 메뉴 */    
    #qnb .side_menu{width:80px;border:1px solid #ddd;border-top:0 none;background-color:#fff}
    #qnb .link_menu{display:block;height:29px;padding-top:5px;border-top:1px solid #ddd;text-align:center}
    #qnb .link_menu:hover,
    #qnb .link_menu.on{color:#5f0080}
    /* 최근본상품 */
    #qnb .side_recent{position:relative;margin-top:6px;border:1px solid #ddd;background-color:#fff}
    #qnb .side_recent .tit{display:block;padding:22px 0 6px;text-align:center}
    #qnb .side_recent .list_goods{overflow:hidden;position:relative;width:60px;margin:0 auto}
    #qnb .side_recent .list{position:absolute;left:0;top:0}
    #qnb .side_recent .link_goods{display:block;overflow:hidden;width:60px;padding:1px 0 2px}
    #qnb .side_recent .name{overflow:hidden;width:100%;max-height:36px;padding-top:1px;font-size:12px;line-height:16px;letter-spacing:-0.3px;text-align:center;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word}
    
    #qnb .side_recent .btn{display:block;overflow:hidden;width:100%;height:17px;border:0 none;font-size:0;line-height:0;text-indent:-9999px}
    #qnb .side_recent .btn_up{position:absolute;left:0;top:0;background:url(https://res.kurly.com/pc/service/main/1903/ico_quick_up.png) no-repeat 50% 50%;}
    #qnb .side_recent .btn_down{background:url(https://res.kurly.com/pc/service/main/1903/ico_quick_down.png) no-repeat 50% 0px;}
    /* pageTop */
    /*#qnb .btn_top{display:block;overflow:hidden;padding:5px 0 3px;border-top:1px solid #ddd;font-size:12px;color:#777;line-height:16px;text-align:center}*/
    /*#qnb .btn_top img{display:block;width:16px;margin:0 auto}*/
    @media
    only screen and (-webkit-min-device-pixel-ratio: 1.5),
    only screen and (min-device-pixel-ratio: 1.5),
    only screen and (min-resolution: 1.5dppx) {
        #qnb .side_recent .btn_up{background-image:url(https://res.kurly.com/pc/service/main/1903/ico_quick_up_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_down{background-image:url(https://res.kurly.com/pc/service/main/1903/ico_quick_down_x2.png);background-size:12px 18px}
    }
    @media all and (max-width: 1250px){
        #qnb{display:none}
    }
</style>

<div class="bnr_qnb">
<a href="/shop/board/view.php?id=notice&no=64">
<img class="thumb" src="https://res.kurly.com/pc/service/main/1904/bnr_quick_20190403.png" alt="퀄리티있게 샛별배송">
</a>
</div>

<div class="side_menu">
<a href="/shop/event/kurlyEvent.php?htmid=event/lovers/lovers_191001" class="link_menu ">등급별 혜택</a>
<a href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
<a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트 후기</a>
</div>
<div class="side_recent">
<strong class="tit">최근 본 상품</strong>
<div class="list_goods" data-height="209">
<ul class="list">
<li>
<a href="/shop/goods/goods_view.php?&goodsno=42159" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1571712154642s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=30996" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1541572432187s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=42837" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1571792610199s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=31110" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1541986982775s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=31109" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1541985068696s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=42019" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1571987269845s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=31108" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1541756621441s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=320" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1470793152310s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=42013" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/157000443518s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
<li>
<a href="/shop/goods/goods_view.php?&goodsno=26055" class="link_goods">
<img src='//img-cf.kurly.com/shop/data/goods/1527041502278s0.jpg' class="lastview-menu-item-image" onerror=this.src='/shop/data/skin/designgj/img/common/noimg_100.gif' />
</a>
</li>
</ul>
</div>
<button type="button" class="btn btn_up">최근 본 상품 위로 올리기</button>
<button type="button" class="btn btn_down">최근 본 상품 아래로 내리기</button>
</div>
</div>
<div id="myPageTop" class="page_aticle mypage_top">
<h2 class="screen_out">마이페이지</h2>
<mypage-top :user-name="userName" :user-grade="userGrade" :user-grade-info="userGradeInfo" :user-grade-name="userGradeName" :accumulated-money="accumulatedMoney" :coupon-count="couponCount" :expire-date="expireDate" :expire-point="expirePoint" :kurly-pass-expiration-date="kurlyPassExpirationDate" :type="type" :notification-check="notificationCheck"></mypage-top>
</div>
<div class="bg_loading" id="bgLoading">
<div class="loading_show"></div>
</div>
<script src="/common_js/common_filter.js?ver=20191029144301"></script>
<script src="/common_js/mypage_v1.js?ver=20191029144301"></script>
<div class="page_aticle aticle_type2">
<div id="snb" class="snb_my">
<h2 class="tit_snb">마이컬리</h2>
<div class="inner_snb">
<ul class="list_menu">
<li>
<a href="/shop/mypage/mypage_orderlist.php">주문 내역</a>
</li>
<li>
<a href="/shop/mypage/mypage_wishlist.php">늘 사는 것</a>
</li>
<li>
<a href="/shop/mypage/mypage_review.php">상품후기</a>
</li>
<li>
<a href="/shop/mypage/mypage_emoney.php">적립금</a>
</li>
<li>
<a href="/shop/mypage/mypage_coupon.php">쿠폰</a>
</li>
<li class="on">
<a href="/shop/member/myinfo.php">개인 정보 수정</a>
</li>
</ul>
</div>
<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
</div>
<div class="page_section section_myinfo">
<div class="head_aticle">
<h2 class="tit">개인 정보 수정</h2>
</div>
<script src="https://www.kurly.com/shop/data/skin/designgj/godo.password_strength.js" type="text/javascript"></script>
<script src="https://www.kurly.com/common_js/join_v1.js?ver=20191029144301"></script>
<style>
	/* 회원정보수정일때 */
	.member_join .reg_agree,
	.member_join .boardWrite{padding:0 20px 77px;border-top:2px solid #5f0080;font-size:11px;color:#747474;line-height:20px}
	.member_join .field_head.head_type1{margin-top:-3px;padding-top:0}
	.member_join .field_head.head_type2{padding:0 0 13px}
	.member_join .mobile td.memberCols2{padding-bottom:10px}
</style>
<script language="javascript">
    function checkSubmit() {
        var oForm = document.getElementById("form");

        var rdo_jumin		= document.getElementById("RnCheckType_jumin");
        var rdo_ipin		= document.getElementById("RnCheckType_ipin");
        var rdo_hpauthDream = document.getElementById("RnCheckType_hpauthDream");

        if (rdo_ipin && rdo_ipin.checked)  {
            goIDCheckIpin();
        } else if (rdo_hpauthDream && rdo_hpauthDream.checked) {
            gohpauthDream();
        } else if (rdo_jumin && rdo_jumin.checked) {
            if(chkagreement(oForm)) {
                if (chkForm2(oForm)) {
                    oForm.submit();
                }
            }
        }else {
            if (chkagreement(oForm)) oForm.submit();
        }
    }
</script>
<div class="member_join">
<div class="">
<form id=form name=frmMember method=post action="/shop/member/indb.php" onsubmit="return chkForm2(this)">
<input type=hidden name=mode value="modMember">
<input type="hidden" name="check_mobile" value="" />
<input type="hidden" name="auth_finish_code" value="" />
<input type=hidden name=rncheck value="">
<input type=hidden name=dupeinfo value="">
<input type=hidden name=pakey value="">
<input type=hidden name=foreigner value="">
<input type=hidden name=passwordSkin value="Y">
<input type=hidden name=m_id value="soylovesh">

<div class="field_head head_type1">
<h3 class="tit">기본정보</h3>
<p class="sub">*필수입력사항</p>
</div>
<div class="boardWrite">
<table class="tbl_comm">
<tr>
<td class="memberCols1">아이디*</td>
<td class="memberCols2">
<input type="text" name=m_id value="soylovesh" readonly class="inp_read">
</td>
</tr>
<tr>
<td class="memberCols1">현재 비밀번호</td>
<td class="memberCols2">
<input type="password" name="originalPassword" id="originalPassword" onblur="checkCurrentPassword(this);return;" />
<p class="txt_guide">
<span class="txt txt_case4 bad">현재 비밀번호를 확인해주세요</span>
</p>
</td>
</tr>
<tr class="member_pwd">
<td class="memberCols1">새 비밀번호</td>
<td class="memberCols2">
<input type="password" name="newPassword" id="newPassword" label="새 비밀번호" option=regPass maxlength="16" class="reg_pw">
<input type="hidden" name="newPasswordCheck" value="0">
<p class="txt_guide">
<span class="txt txt_case4">현재 비밀번호와 다르게 입력</span>
<span class="txt txt_case1">10자 이상 입력</span>
<span class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span>
<span class="txt txt_case3">동일한 숫자 3개 이상 연속 사용 불가</span>
</p>
</td>
</tr>
<tr class="member_pwd">
<td class="memberCols1">새 비밀번호 확인</td>
<td class="memberCols2">
<input type="password" name="confirmPassword" id="confirmPassword" label="새 비밀번호" option=regPass maxlength="16" class="confirm_pw">
<p class="txt_guide">
<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
</p>
</td>
</tr>
<tr>
<td class="memberCols1">이름*</td>
<td class="memberCols2">
<input type="text" name=name value="홍소연" required fld_esssential label="이름" placeholder="고객님의 이름을 입력해주세요">
</td>
</tr>
<tr>
<td class="memberCols1"> 이메일*</td>
<td class="memberCols2">
<input type="text" name=email value="soylovesh@naver.com" size=30 required option=regEmail label="이메일" placeholder="예: marketkurly@kurly.com">
<a href="javascript:void(0)" onClick="chkEmail()"><span class="bhs_button">이메일 중복확인</span></a>
</td>
</tr>
<tr class="mobile">
<td class="memberCols1"> 휴대폰*</td>
<td class="memberCols2">
<div class="phone_num">
<input type="text" value="01039199100" pattern="[0-9]*" name="mobileInp" placeholder="숫자만 입력해주세요" class="inp">
<input type="hidden" name="mobile[]" id="mobile0" value="010" required option=regNum label="휴대폰">
<input type="hidden" name="mobile[]" id="mobile1" value="3919" required option=regNum label="휴대폰">
<input type="hidden" name="mobile[]" id="mobile2" value="9100" required option=regNum label="휴대폰">
<a href="javascript:void(0)" id="btn_cert"><span class="bhs_button disabled">인증번호받기</span></a>
</div>
<div class="cert_confirm_row">
<input type="text" name="auth_code" id="auth_code" value='' size='' maxlength='6' label="인증번호 확인" disabled class="inp_confirm">
<a href="javascript:void(0)" id="btn_cert_confirm" return false><span class="bhs_button disabled">인증번호 확인</span></a>
<p id="countdown" class="count_down"></p>
</div>
</td>
</tr>
</table>
</div>
<div class="field_head head_type2">
<h3 class="tit">추가정보</h3>
</div>
<div class="boardWrite">
<table class="tbl_comm">
<tr class="select_sex">
<td class="memberCols1">성별</td>
<td class="memberCols2">
<div class="group_radio">
<label class="label_radio">
<input type=radio name=sex_option label="성별" value="m">
<span class="text_position">남자</span>
</label>
<label class="label_radio checked">
<input type=radio name=sex_option label="성별" value="w">
<span class="text_position">여자</span>
</label>
<label class="label_radio">
<input type=radio name=sex_option label="성별" value="n">
<span class="text_position">선택안함</span>
</label>
<input type="hidden" type=radio name=sex label="성별" value="">
</div>
</td>
</tr>
<tr class="birth field_birth">
<td class="memberCols1">생년월일</td>
<td class="memberCols2">
<div class="birth_day">
<input type="text" name=birth_year id="birth_year" pattern="[0-9]*" value="1991" label="생년월일" size=4 maxlength=4 placeholder="YYYY">
<span class="bar"><span>/</span></span>
<input type="text" name=birth[] id="birth_month" pattern="[0-9]*" value="12" label="생년월일" size=2 maxlength=2 placeholder="MM">
<span class="bar"><span>/</span></span>
<input type="text" name=birth[] id="birth_day" pattern="[0-9]*" value="09" label="생년월일" size=2 maxlength=2 placeholder="DD">
</div>
<p class="txt_guide">
<span class="txt bad"></span>
</p>
</td>
</tr>
<tr>
<td class="memberCols1">선택약관 동의 </td>
<td class="memberCols2 reg_agree">
<div class="bg_dim"></div>
<div class="check_view">
<input type="hidden" id="consentHidden" name="consent[1]" value="">
<label class="select_check check_agree ">
<input type="checkbox" name="hiddenCheck" class="styled-checkbox-black">
<span class="txt_checkbox no_pd">개인정보처리방침 <span class="sub">(선택)</span></span>
</label>
<a href="#none" class="link btn_link btn_link3 btn_choice">약관보기 </a>
</div>

<div class="layer layer_choice">
<div class="inner_layer">
<h4 class="tit_layer">개인정보 수집·이용 동의 (선택)</h4>
<div class="box_tbl">
<table cellpadding="0" cellspacing="0" width="100%">
<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
<colgroup>
<col width="40%">
<col width="25%">
<col width="35%">
</colgroup>
<thead>
<tr>
<th scope="row">수집 목적</th>
<th scope="row">수집 항목</th>
<th scope="row">보유 기간</th>
</tr>
</thead>
<tbody>
<tr>
<td>맞춤형 회원 서비스 제공</td>
<td>성별, 생년월일</td>
<td>회원 탈퇴 후 30일 내</td>
</tr>

</tbody>
</table>
</div>
<p class="txt_service">※ 동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.</p>
<button type="button" class="btn_ok">확인</button>
<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
</div>
</div>

</td>
</tr>
</table>
<div style="display:none">
<input id="nosendf" name="messge_time" fw-filter="isFill" fw-label="배송 시 받기" fw-msg="" value="0" type="hidden">
<input id="sendf" name="messge_time" fw-filter="isFill" fw-label="오전 7시에 받기" fw-msg="" checked value="1" type="hidden">
<input id="passwords" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="비밀번호" type="hidden">
<input id="calls" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="경비실호출" type="hidden">
<input id="send" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="경비실로배송" type="hidden">
<input id="callm" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="세대호출" type="hidden">
<input id="phonem" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="연락처로전화" type="hidden">
<input id="free" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="자유출입가능" type="hidden">
<input id="anys" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="기타사항" type="hidden">
<input id="means_inp" name="means" fw-filter="" fw-label="비밀번호 및 호출방법" fw-msg="" class="inputTypeText" maxlength="50" value=" " type="hidden" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="true">
<input id="no_means_inp" type="hidden">
<input id="pass" name="pass_type" fw-filter="isFill" fw-label="동의" fw-msg="" value="y" type="hidden">
<input id="nopass" name="pass_type" fw-filter="isFill" checked fw-label="동의안함" fw-msg="" value="n" type="hidden">
</div>
</div>
<div class="field_head head_type2">
<h3 class="tit">이용약관동의*</h3>
<p class="sub">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
</div>
<div class="reg_agree">
<div class="check_view">
<label class="select_check check_agree ">
<input type="checkbox" name="marketing" class="styled-checkbox-black">
<span class="txt_checkbox no_pd">무료배송, 할인쿠폰 등 혜택/정보 수신 <span class="sub">(선택)</span></span>
</label>
<div class="check_event email_sms">
<label class="select_check check_agree ">
<input type="checkbox" name="sms" class="styled-checkbox-black" value="n">
<span class="txt_checkbox no_pd">SMS</span>
</label>
<label class="select_check check_agree ">
<input type="checkbox" name="mailling" class="styled-checkbox-black" value="n">
<span class="txt_checkbox no_pd">이메일</span>
</label>
</div>
</div>
</div>
<div id=avoidDbl class="after" style="text-align:center; margin-top:20px;">
<span class=noline><a href="/shop/member/hack.php?&"><span class="bhs_button active" style="float:none;">탈퇴하기</span></a></span>
<span class=noline><input type="submit" class="bhs_button" value="회원정보수정" style="float:none; max-width:none;"></span>
</div>
</form>
</div>
</div>
<iframe id="ifrmRnCheck" name="ifrmRnCheck" style="display:none;"></iframe>
<iframe id="ifrmHpauth" name="ifrmHpauth" style="display:none;"></iframe>
<script src="https://www.kurly.com/shop/data/skin/designgj/js/pw_validate.js?ver=20191029144301"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/js/delivery_address.js?ver=20191029144301"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#avoidDbl .btn_submit").click(function(){
            $("input[type='text']").each(function(){
                var input_txt = $(this).val();
                var input_trim_txt = input_txt.replace(/(^\s*)|(\s*$)/gi, "");
                $(this).val(input_trim_txt);
            })
        });

        // PRDPJ-159 장차석 : 사용자 아이디와 추처인 아이디 중복 안되도록 처리
		var $nameRecommid = $('[name=recommid]');
		var $nameMId = $('[name=m_id]');
		$($nameRecommid , $nameMId).blur(function(){
			if ($.trim($nameMId.val()) !== '' && $.trim($nameRecommid.val()) !== '' &&
					($nameRecommid.val() === $nameMId.attr('data-id') || $nameRecommid.val() === $nameMId.val())) {
				$nameRecommid.val('');
				alert('추천인 아이디에는 본인 아이디를 입력할 수 없습니다.');
			}
		});

        //개인정보처리방침
        function getAgreement() {
           jQuery.ajax({
                url: "/shop/service/private.php",
                cache: false,
                dataType: "html",
                type: "GET",
                contentType: 'text/html; charset=euc-kr',
                success: function(data) {
                    jQuery(".agreement_box").html( jQuery(data).find('.hundred'));
                }
            });
        }
        getAgreement();

        // 레이어 열기,닫기
        $('.check_view .btn_link').on('click',function(e){
            e.preventDefault();
            var $layer1 = $(this).is('.btn_agreement');
            var $layer2 = $(this).is('.btn_essential');
            var $layer3 = $(this).is('.btn_choice');
            var bgDimd = $('.bg_dim');
            var $target = $(this).parents('.reg_agree').find('.layer');

            var $agreement = $(this).parents('.reg_agree').find('.layer_agreement');
            var $essential = $(this).parents('.reg_agree').find('.layer_essential');
            var $choice = $(this).parents('.reg_agree').find('.layer_choice');
            var topResult = null;

            if($layer1 == true){
                bgDimd.show();
                $agreement.show();
                $essential.hide();
                $choice.hide();
                topResult = $agreement;
            }else if($layer2 == true){
                bgDimd.show();
                $essential.show();
                $agreement.hide();
                $choice.hide();
                topResult = $essential;
            }else if($layer3 == true){
                bgDimd.show();
				$choice.show();
                $essential.hide();
                $agreement.hide();
                topResult = $choice;
            }
            topResult.css({
                /*top: $(window).scrollTop() - $('#content').offset().top + ($(window).height()/2) - (topResult.height()/2) - 50,*/
                'margin-top':-topResult.height() / 2
            });
        });
        $('.reg_agree .btn_ok,.reg_agree .btn_close').on('click',function(e){
            e.preventDefault();
            $(this).parents('.layer').hide();
            $('.bg_dim').hide();
        });

        // 이용약관전체동의
		var agree = $('.reg_agree');
        $('.check_agree input[name = agree_allcheck]').change(function(){
            if($(this).is(':checked') === true){
                $('.check_agree').addClass('checked')
                agree.find('input[type=checkbox]').attr('checked','checked');
                agree.find('input[type=checkbox]').prop('checked','checked');
                agree.find('input[type=checkbox]').val('y');
                $('#consentHidden').val('y');
            }else{
                $('.check_agree').removeClass('checked')
                agree.find('input[type=checkbox]').attr('checked','');
                agree.find('input[type=checkbox]').prop('checked','');
                agree.find('input[type=checkbox]').val('n');
                $('#consentHidden').val('n');
            }
        });
        $('.reg_agree').find('input[type=checkbox]').change(function(){
            if($(this).is(':checked')){
				$(this).parent().addClass('checked');
                $(this).attr('checked','checked');
                $(this).prop('checked','checked');
                $(this).val('y');
                if($(this).attr('name') == 'hiddenCheck') $('#consentHidden').val('y');
			}else{
                $(this).parent().removeClass('checked');
                $(this).attr('checked','');
                $(this).prop('checked','');
                $(this).val('n');
                if($(this).attr('name') == 'hiddenCheck') $('#consentHidden').val('n');
			}
            $('.reg_agree').find('input[type=checkbox]').each(function(){
                if($(this).is(':checked') === false){
                    $('.label_all_check').removeClass('checked');
                    return false;
                }
            });
            if($(this).attr('name') === 'marketing'){
                if($(this).is(':checked')){
                    $('.email_sms').find('.check_agree').addClass('checked');
                    $('.email_sms').find('input').attr('checked','checked');
                    $('.email_sms').find('input').prop('checked','checked');
                    $('.email_sms').find('input').val('y');
                }else{
                    $('.email_sms').find('.check_agree').removeClass('checked');
                    $('.email_sms').find('input').attr('checked','');
                    $('.email_sms').find('input').prop('checked','');
                    $('.email_sms').find('input').val('n');
                }
            }
            if($(this).attr('name') === 'mailling' || $(this).attr('name') === 'sms'){
                var emailSmsCount = 0;
                $(this).parents('.email_sms').find('input').each(function(){
                    if($(this).is(':checked')) emailSmsCount++;
                });
                if(emailSmsCount === 2){
                    $('input[name=marketing]').parent().addClass('checked');
                    $('input[name=marketing]').attr('checked','checked');
                    $('input[name=marketing]').prop('checked','checked');
                }else{
                    $('input[name=marketing]').parent().removeClass('checked');
                    $('input[name=marketing]').attr('checked','');
                    $('input[name=marketing]').prop('checked','');
                }
            }

            // 전체동의
            if($('.reg_agree').find('.checked').length >= 7){
                $('.check_agree input[name = agree_allcheck]').parent().addClass('checked');
                $('.check_agree input[name = agree_allcheck]').prop('checked','checked');
            }else{
                $('.check_agree input[name = agree_allcheck]').parent().removeClass('checked');
                $('.check_agree input[name = agree_allcheck]').prop('checked','');
			}
        });

        function inputFocus() {
            $('#form input').focus(function () {
                var element = $(this);
                if (element.offset().top - $(window).scrollTop() < 80)
                {
                    $('html, body').animate({
                        scrollTop: element.offset().top - 80
                    }, 0);
                }
            });
        }
        inputFocus();


        // 글자 갯수확인 + 문장조합확인
        var checkType1 = false;// 갯수
        var checkType2 = false;// 문자
        var checkType3 = false;// 문자만
        function check_confirm(characterReg, minNum){
            if(characterReg.length < minNum){
                checkType1 = false;
            }else{
                checkType1 = true;
            }

            var checkNumber = characterReg.search(/[0-9]/g); // 숫자
            var checkEnglish = characterReg.search(/[a-zA-Z]/ig); // 대소문자
            var checkSpecial = characterReg.search(/[~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig); // 특수문자
            var checkAscii = characterReg.search(/[^a-zA-Z0-9~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig); // 아스키 특수문자

            if(checkNumber >= 0 && checkEnglish >= 0 && checkAscii === -1) {
                checkType2 = true;
                checkType3 = true;
                if(checkSpecial !== -1) checkType3 = false;
            }else if(checkNumber >= 0 && checkSpecial !== -1 && checkAscii === -1){
                checkType2 = true;
                checkType3 = false;
            }else if(checkEnglish >= 0 && checkSpecial !== -1 && checkAscii === -1) {
                checkType2 = true;
                checkType3 = false;
            }else if( checkEnglish >= 0 && checkSpecial === -1 && checkAscii === -1) {
                checkType3 = true;
                if (checkNumber === -1) checkType2 = false;
            }else{
                checkType2 = false;
                checkType3 = false;
            }
        }


        // 아이디검증
        var saveId;
        $('[name=m_id]').on('focus',function(){
            saveId = $(this).val();
            $(this).parent().find('.txt_guide').show();
        });
        $('[name=m_id]').on('keyup', function(){
            var $target = $(this).parent().find('.txt_guide');
            var $chkVal =  $(this).val();
            var $numMin = 6;
            if(saveId !== $chkVal) class_change($target.eq(1),'bad');// 중복확인후 수정될때
            check_confirm($chkVal,$numMin);
            if(checkType1 === true && checkType3 === true){
                class_change($target.find('.txt_case1'), 'good');
                $(this).attr('data-validator',"true");
            }else{
                class_change($target.find('.txt_case1'),'bad');
                $(this).attr('data-validator',"false");
            }
        });

        // 비밀번호검증
        $('[name=password], [name=newPassword], [name=password2], [name=confirmPassword]').on('focus',function(){
            $(this).parent().find('.txt_guide').show();
        });
        $('[name=password], [name=newPassword], [name=password2], [name=confirmPassword]').on('blur', function () {
            if ($(this).parent().find('.txt').hasClass('bad') || $.trim($(this).val()) === "" ){
                if (!$(this).hasClass('bad')) $(this).addClass('bad');
            } else {
                if ($(this).hasClass('bad')) $(this).removeClass('bad')
            }
        });
        $('input[name=password2], [name=confirmPassword]').on('keyup', function(){
            var $target = $(this).parent().find('.txt_guide');

            if( ( $("[name=password]").val() === $('[name=password2]').val() && $.trim($("[name=password]").val()) != "") || ( $("[name=newPassword]").val() === $('[name=confirmPassword]').val() && $.trim($("[name=newPassword]").val()) != "") ) {
                class_change($target.find('.txt_case1'),'good');
            }else{
                class_change($target.find('.txt_case1'),'bad');
            }
        });

        $('input[name=password], [name=newPassword]').on('keyup', function(e){
            var $target = $(this).parent().find('.txt_guide');
            var $chkVal =  $(this).val();
            var $numMin = 10;

            check_confirm($chkVal,$numMin);

            if(checkType1 === false && checkType2 === false){
                class_change($target.find('.txt_case1'),'bad');
                class_change($target.find('.txt_case2'),'bad');
            }
            if(checkType1 === true && checkType2 === false){
                class_change($target.find('.txt_case1'),'good');
                class_change($target.find('.txt_case2'),'bad');
            }
            if(checkType1 === false && checkType2 === true){
                class_change($target.find('.txt_case1'),'bad');
                class_change($target.find('.txt_case2'),'good');
            }
            if(checkType1 === true && checkType2 === true){
                class_change($target.find('.txt_case1'),'good');
                class_change($target.find('.txt_case2'),'good');
            }

			var hasThreeOrMoreConsecutiveNumbers = pwValidate.hasThreeOrMoreConsecutiveNumbers($chkVal)
            if (hasThreeOrMoreConsecutiveNumbers) {
                class_change($target.find('.txt_case3'),'bad');
            } else {
                class_change($target.find('.txt_case3'),'good');
			}
            
            if($(this).attr('id') == 'newPassword'){
                if($('[name=originalPassword]').val() == $('[name=newPassword]').val() ){
                    class_change($target.find('.txt_case4'),'bad');
				}else{
                    class_change($target.find('.txt_case4'),'good');
				}
                $('[name=confirmPassword]').trigger('keyup');
                var newPasswordCheckNum = 0;
                $target.find('.txt').each(function(){
                   if($(this).hasClass('good')) newPasswordCheckNum++;
                   $('[name=newPasswordCheck]').val(newPasswordCheckNum);
				});
			}else{
                $('[name=password2]').trigger('keyup');    
			}
        });

        // ----모바일 인증 v2 start ----
        var checkCertBtn = false; // 인증 하기 버튼 활성화 여부
        var confirmCertBtn = false; // 인증 확인 버튼 활성화 여부
        var stopTimer = false; // 타이머 정지

        var mobile0 = $('input[name="mobile[]"]').eq(0);
        var mobile1 = $('input[name="mobile[]"]').eq(1);
        var mobile2 = $('input[name="mobile[]"]').eq(2);
        
        // 인증번호 받기 활성화
        $('[name=mobileInp]').on('keyup blur',function(e){
            var inputText = $(this).val();
            var number = inputText.replace(/[^0-9]/g,'');
            $(this).val(number);
            number = $(this).val();
			
            if($(this).val().length > 11){
                $(this).val(number.substring(0,11));
            }
            mobile0.val(number.substring(0,3));
            mobile1.val(number.substring(3,7));
            mobile2.val(number.substring(7,11));
            var checkNum = '010';
            if( ( mobile0.val().indexOf(checkNum) !== 0 && $(this).val().length >= 10) || (mobile0.val().indexOf(checkNum) === 0 && $(this).val().length >= 11) ){
                if(confirmCertBtn == false){
                    if($('#btn_cert span').hasClass('disabled')) $('#btn_cert span').removeClass('disabled');
                    checkCertBtn = true;
				}
            }else{
                if(!$('#btn_cert span').hasClass('disabled')) $('#btn_cert span').addClass('disabled');
                checkCertBtn = false;
            }
        });

        function countdown(elementId, seconds) {
            var element, endTime, hours, mins, msLeft, time;
            function updateTimer() {
                if (stopTimer == true) {
                    $('#countdown').hide();
                    return;
                }

                $('#countdown').show();
                msLeft = endTime - (+new Date);
                if (msLeft < 0) {
                    count_down_stop();
                    alert('인증 제한 시간이 지났습니다');
                } else {
                    time = new Date(msLeft);
                    hours = time.getUTCHours();
                    mins = time.getUTCMinutes();
                    element.innerHTML = (hours ? hours + ':' + ('0' + mins).slice(-2) : mins) + ' : ' + ('0' + time.getUTCSeconds()).slice(-2);
                    certifyTime = setTimeout(updateTimer, time.getUTCMilliseconds());

                    checkCertBtn = false;
                    confirmCertBtn = true;
                }
            }

            element = document.getElementById(elementId);
            endTime = (+new Date) + 1000 * seconds;
            updateTimer();
        }

        // 카운트 다운 시작
        function count_down_start(count_time) {
            stopTimer = false;
            checkCertBtn == false;
            confirmCertBtn = true;
            countdown('countdown', count_time);
            $('#btn_cert .bhs_button').addClass('disabled'); // [인증번호 받기] 비활성화
            $('#btn_cert_confirm .bhs_button').removeClass('disabled'); // [인증번호 확인] 활성화
            $('.inp_confirm').prop("disabled", false);
            $('[name=mobileInp]').attr('readonly',true);
        }

        // 카운트 다운 정지
        function count_down_stop() {
            stopTimer = true;
            checkCertBtn = true;
            confirmCertBtn = false;
            $('#countdown').hide();
            $('#btn_cert .bhs_button').removeClass('disabled'); // [인증번호 받기] 활성화
            $('#btn_cert_confirm .bhs_button').addClass('disabled'); // [인증번호 확인] 비활성화
            $('.inp_confirm').prop("disabled", true);
            $('[name=mobileInp]').attr('readonly',false);
        }

        // 인증 완료
        function mobile_auth_finished(showAlert)
        {
            stopTimer = true;
            checkCertBtn = true;
            confirmCertBtn = false;
            $('#btn_cert .bhs_button').removeClass('disabled'); // [인증번호 받기] 활성화
            $('#btn_cert_confirm .bhs_button').addClass('disabled'); // [인증번호 확인] 비활성화
            $('.inp_confirm').prop("disabled", true);
            $('#btn_cert .bhs_button').text('다른 번호 인증');
            $("[name=check_mobile]").val('1');

            $('[name=mobileInp]').attr("readonly", true);

            if (showAlert == true)
            {
                alert('인증이 완료 되었습니다.');
            }
        }

        // [인증 번호 확인] 버튼 클릭
        $('#btn_cert').on('click', function() {
            if (checkCertBtn == false) {
                return;
            }

            if ($('#btn_cert .bhs_button').text() == '다른 번호 인증')
            {
                $('#btn_cert .bhs_button').text('인증 번호 받기');
                $('#btn_cert .bhs_button').addClass('disabled');
                checkCertBtn = false;
            }

            mobile = mobile0.val() + "-" + mobile1.val() + "-" + mobile2.val();
            auth_code = $('input[name="auth_code"]');

            if ($("[name=check_mobile]").val() == 1) {
                $('#btn_cert .bhs_button').text('인증 번호 받기');
                $('[name=mobileInp]').val('').attr("readonly", false);
                mobile0.val('');
                mobile1.val('');
                mobile2.val('');
                auth_code.val('');
                $("[name=check_mobile]").val('');
                return;
            }

            if (mobile0.val() == "" || mobile1.val() == "" || mobile2.val() == "") {
                alert('정확한 휴대폰 번호를 입력해 주세요.');
                return;
            }

            // 인증 번호 요청
            $.ajax({
                url: '/shop/proc/auth_code.php',
                type: 'POST',
                data: {
                    "mode": "get_auth_code",
                    "mobile": mobile
                },
                dataType: 'json',
                async: false
            }).success(function(data) {
                if (data.result == false) {
                    alert(data.message);
                } else {
                    alert(data.message);
                    count_down_start(parseInt(data.data.count_time));
                }
            }).fail(function() {
                alert("일시적인 장애가 발생하였습니다.\n잠시후 다시시도해주세요.");
            });
        });

        // [인증 번호 확인] 버튼 클릭
        $('#btn_cert_confirm').on('click', function() {
            if (confirmCertBtn == false) {
                return;
            }

            mobile = mobile0.val() + "-" + mobile1.val() + "-" + mobile2.val();
            auth_code = $('input[name="auth_code"]').val();
            if( auth_code.length < 4){
                alert('잘못된 인증 코드 입니다. 확인 후 다시 시도 해 주세요.')
                return;
			}

            // 인증 번호 확인 요청
            $.ajax({
                url: '/shop/proc/auth_code.php',
                type: 'POST',
                data: {
                    "mode": "check_auth_code",
                    "mobile": mobile,
                    "auth_code": auth_code
                },
                dataType: 'json',
                async: false
            }).success(function(data) {
                if (data.result == false) {
                    alert(data.message);
                } else {
                    $('input[name="auth_finish_code"]').val(data.data.auth_finish_code);
                    mobile_auth_finished(true);
                }
            }).fail(function() {
                alert("일시적인 장애가 발생하였습니다.\n잠시후 다시시도해주세요.");
            });
        });

        mobile_auth_finished(false);
        // ----모바일 인증 v2 end ----

		$("#selectRecommend .label_radio").on('click', function (e) {
			e.preventDefault();
		    var target = $(e.target)
			var wrapper = target.closest('.group_radio')

			var inputOptions = wrapper.find('.label_radio')
			var targetInput = target.closest('.radio_wrapper').find('.label_radio')

            var selectOption = targetInput.find('input').attr('name')
			var inputWrapper = wrapper.siblings('.input_wrapper')
            var textBox = inputWrapper.find('input')
            var defaultMessage = {
                'recommendId': '추천인 아이디를 입력해주세요.',
                'eventName': '참여 이벤트명을 입력해주세요.'
            }
            var placeholderMessage = defaultMessage[selectOption]

            // 라디오버튼 토글
            inputOptions.not(targetInput).removeClass('checked')
            targetInput.addClass('checked')

			// 기존 텍스트 리셋
            textBox.val("")

            // placeholder 텍스트 변경
			textBox.attr('placeholder', placeholderMessage)

			// input name, value값 변경
			var nameOptions = {
                'recommendId': 'recommid',
                'eventName': 'ex2'
			}
			textBox.attr('name', nameOptions[selectOption])
            inputWrapper.addClass('selected')
        })

        // 라디오버튼 토글-성별
        $('.select_sex .group_radio .label_radio').on('click', function (e){
            e.preventDefault();
            var target = $(this);
            var radioTarget = target.find('input[name=radio]');
            var selectedVal = target.find('input').val();
            radioTarget.prop('checked',true);
            target.addClass('checked').siblings().removeClass('checked');
			target.siblings("input").val(selectedVal)
        });
    });

    // 클래스변경
    function class_change(obj,state){
        if(state === 'good') {
            if (obj.hasClass('bad')) obj.removeClass('bad');
            obj.addClass('good');
        }else{
            if(obj.hasClass('good')) obj.removeClass('good');
            obj.addClass('bad');
        }
    }

    function defaultRnCheckType() {
        var authtype = document.getElementsByName("RnCheckType");

        if (authtype.item(0) != null) {
            var div_jumin		= document.getElementById("div_RnCheck_jumin");
            var div_ipin		= document.getElementById("div_RnCheck_ipin");
            var div_hpauthDream = document.getElementById("div_RnCheck_hpauthDream");

            if (authtype.item(0).value == 'jumin')
            {
                div_jumin.style.display='';
            } else if(authtype.item(0).value == 'ipin') {
                div_ipin.style.display='';
            } else if(authtype.item(0).value == 'hpauthDream') {
                div_hpauthDream.style.display='';
            }
            authtype.item(0).checked = true;
        }
    }

    function selectRnCheckType(){
        var div_jumin		= document.getElementById("div_RnCheck_jumin");
        var div_ipin		= document.getElementById("div_RnCheck_ipin");
        var div_hpauthDream = document.getElementById("div_RnCheck_hpauthDream");

        var rdo_jumin		= document.getElementById("RnCheckType_jumin");
        var rdo_ipin		= document.getElementById("RnCheckType_ipin");
        var rdo_hpauthDream = document.getElementById("RnCheckType_hpauthDream");

        if(rdo_jumin && rdo_jumin.checked == true){
            if (div_jumin != null) { div_jumin.style.display=''; }
            if (div_ipin != null) { div_ipin.style.display='none'; }
            if (div_hpauthDream != null) { div_hpauthDream.style.display='none'; }
        }
        if(rdo_ipin && rdo_ipin.checked == true){
            if (div_jumin != null)	{ div_jumin.style.display='none'; }
            if (div_ipin != null)	{ div_ipin.style.display=''; }
            if (div_hpauthDream != null) { div_hpauthDream.style.display='none'; }
        }
        if(rdo_hpauthDream && rdo_hpauthDream.checked == true){
            if (div_jumin != null)	{ div_jumin.style.display='none'; }
            if (div_ipin != null)	{ div_ipin.style.display='none'; }
            if (div_hpauthDream != null) { div_hpauthDream.style.display=''; }
        }
    }

    function checkCurrentPassword(el) {
        var currentPassword = $(el).val();
        var errorMessage = $(el).parent().find(".txt_guide");
        if (currentPassword.trim() === "") {
            errorMessage.show();
            return false;
        }
        var req = {password:currentPassword};
        kurlyApi({
            method:'post',
            url:'/v1/users/check/password',
			data:req
        }).then(function (response) {
            if (response) {
                if (response.status === 200 && response.data.hasOwnProperty('data')) {
                    errorMessage.hide();
                    return true;
                }
            }
            errorMessage.show();
			return false;
        });
	}

    function chkId()
    {
        var alertMsg = "아이디는 6자 이상의 영문 혹은 영문과 숫자 조합만 가능합니다";
        var $target = $("[name='m_id']").parent().find('.txt_case2');
        var id_txt = $("[name='m_id']").val();
        var id_trim_txt = id_txt.replace(/(^\s*)|(\s*$)/gi, "");
        $("input[name='m_id']").val(id_trim_txt);
        var form = document.frmMember;
        if ($("input[name='m_id']").val() === "") {
            alert("아이디를 입력해 주세요.");
            return;
        }
        if($("input[name='m_id']").val().length < 6){alert("아이디는 6자 이상의 영문 혹은 영문과 숫자 조합만 가능합니다");return;}
        if (!chkText(form.m_id,form.m_id.value,"아이디를 입력해주세요")) return;
        var idPattern = /^[a-zA-Z0-9]{1}[^"']{3,15}$/; // chkPatten 메소드에서 가져옴
        var isValidId = eval(idPattern);
        if (!isValidId.test(form.m_id.value)) {
            alert(alertMsg);
			return;
        }
        var $idValidator = $("[name='m_id']").attr('data-validator');
        if($idValidator === "false"){
            $("[name=id_chk]").val('');
            alert(alertMsg);
            if($target.hasClass('good')) $target.removeClass('good');
            $target.addClass('bad');
        }else{
            ifrmHidden.location.href = "indb.php?mode=chkId&m_id=" + form.m_id.value;
		}
    }
    function chkId2(num){
        var $target = $("[name='m_id']").parent().find('.txt_case2');
        var id_txt = $("[name='m_id']").val();
        if(num == 1){
            if($target.hasClass('bad')) $target.removeClass('bad');
            $target.addClass('good');
            $("[name='m_id']").attr('data-id',id_txt);
        }else{
            if($target.hasClass('good')) $target.removeClass('good');
            $target.addClass('bad');
        }
    }

    function chkEmail()
    {
        var email_txt = $("input[name='email']").val();
        var trim_txt = email_txt.replace(/(^\s*)|(\s*$)/gi, "");
        var email_regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
        $("input[name='email']").val(trim_txt)
        if ($("input[name='email']").val() === "") {
            alert("이메일 주소를 입력해 주세요.");
            return false;
        }
		if(email_regex.test(trim_txt) === false) {
            alert("잘못된 이메일 형식입니다.");
            return false;
        }

        var form = document.frmMember;
        if (!chkText(form.email,form.email.value,"이메일을 입력해주세요")) return;
        if (!chkPatten(form.email,form.email.getAttribute('option'),"정상적인 이메일 주소를 입력해주세요.")) return;
        ifrmHidden.location.href = "indb.php?mode=chkEmail&email=" + form.email.value + "&m_id=" + form.m_id.value;

    }

    $("input[name='mobile[]']").change(function() {
        $("input[name='check_mobile']").val("0");
    });

    
	// 생년월일 입력시 폼 포커스 이벤트
	$('.birth_day input').focus(function(){
		$(this).parent().addClass('on');
		
	}).keyup(function(){
		var inputText = $(this).val();
		var number = $(this).val().replace(/[^0-9]/g,'');
		$(this).val(number);
	}).blur(function(){
		$(this).parent().removeClass('on');
		// KM-1261 회원가입 14세 인증
		birthCheckAction.validatorText();
	});
	

    function chkForm2(f) {
        if($('#originalPassword').val() != "" || $('#newPassword').val() != "" || $('#confirmPassword').val() != ""){
            if($('[name=newPasswordCheck]').val() < 4){
                alert('새 비밀번호를 확인해주세요');
                $("[name=newPassword]").focus();
                return false;
            }
            if($('#confirmPassword').val() != $('#newPassword').val()){
                alert('새 비밀번호 확인을 확인해주세요');
                $('#confirmPassword').focus();
                return false;
            }
        }
		
        if ($("input[name='check_mobile']").val() != "1")
        {
            alert("휴대폰 인증을 완료해 주세요.", function () {
                $('#btn_cert').focus();
            });
            return false;
        }

        
        if (document.getElementById('avoidDbl')) btn = document.getElementById('avoidDbl').innerHTML;

        var email_txt = $("input[name='email']").val();
        var trim_txt = email_txt.replace(/(^\s*)|(\s*$)/gi, "");
        var email_regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
        $("input[name='email']").val(trim_txt)
        if(email_regex.test(trim_txt) === false) {
            alert('잘못된 이메일 형식입니다.', function () {
                $('input[name=email]').focus();
            });
            return false;
        }


		// KM-1261 회원가입 14세 인증
		if(! birthCheckAction.validatorForm()){
			return false;
		}
        
        if (chkForm(f) === false) {
            return false;
        }
        return true;
    }

    function goIDCheckIpin() {

        return;
    }

</script>
</div>
</div>
</div>
</div>

<div id="layerDSR">
<div class="bg_dim"></div>
<div class="in_layer">
<div class="inner_layer layer_star">
<strong class="dsr_result">샛별배송 지역입니다.</strong>
<div class="ani">
<img src="https://res.kurly.com/mobile/img/1908/img_delivery_kurly.png" alt="샛별배송 이미지">
</div>
<p class="dsr_desc">
<strong class="emph">오늘 밤 11시 전</strong>까지 주문시<br>
<strong class="emph">다음날 아침 7시</strong> 이전 도착합니다!
</p>
<p class="dsr_notice">샛별배송은 휴무 없이 매일 배송 합니다</p>
</div>
<div class="inner_layer layer_normal">
<strong class="dsr_result">택배배송 지역입니다.</strong>
<div class="ani">
<img src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png" alt="택배배송 이미지">
</div>
<p class="dsr_desc">
<strong class="emph">밤 8시 전</strong>까지 주문시<br>
<strong class="emph">다음날</strong> 도착합니다!
</p>
<p class="dsr_notice">일요일은 배송 휴무로 토요일에는 주문 불가</p>
</div>
<div class="inner_layer layer_none">
<strong class="dsr_result">배송 불가 지역입니다.</strong>
<div class="ani">
<img src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png" alt="배송불가 이미지">
</div>
<p class="dsr_desc">
<strong class="emph">도로명 주소</strong>로 검색하셨다면,<br>
<strong class="emph">지번 주소(구 주소)</strong>로 다시 시도해 주세요.
</p>
<p class="dsr_notice">배송지역을 확장하도록 노력하겠습니다!</p>
</div>
<div class="layer_btn1">
<button type="button" class="btn_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();">확인</button>
</div>
<button type="button" class="layer_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
</div>
</div>
<div id="footer">
<div class="inner_footer">
<div class="footer_cc">
<h2 class="tit_cc">고객행복센터</h2>
<div class="cc_view cc_call">
<h3><span class="tit">1644-1107</span></h3>
<dl class="list">
<dt>365고객센터</dt>
<dd>오전 7시 - 오후 7시</dd>
</dl>
</div>
<div class="cc_view cc_kakao">
<h3><a class="tit" href="#none">카카오톡 문의</a></h3>
<script type="text/javascript">
	$('.cc_kakao .tit').on('click',function(e){
		e.preventDefault();
		$.ajax({
			type: "GET",
			url: apiDomain+'/v1/mypage/asks/confirm/kakao',
			dataType: 'json',
			success: function(data) {
				if(data.data.ok_button_action_url.indexOf('https://api.happytalk.io/') > -1){
					if(confirm('['+data.data.title+'] '+data.data.message)) window.open(data.data.ok_button_action_url,'_blank');
				}else{
					alert(data.data.title+'\n'+data.data.message);
				}
			}
		})
	});
</script>
<dl class="list">
<dt>365고객센터</dt>
<dd>오전 7시 - 오후 7시</dd>
</dl>
</div>
<div class="cc_view cc_qna">
<h3><a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="tit">1:1 문의</a></h3>
<dl class="list">
<dt>24시간 접수 가능</dt>
<dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
</dl>
</div>
</div>
<div class="company">
<ul class="list">
<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li>
<li><a class="link" href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&showinfo=0&wmode=opaque&enablejsapi=1" onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
<li><a class="link" href="https://marketkurly.recruiter.co.kr/appsite/company/index" target="_blank">인재채용</a></li>
<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
</ul>
법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 : 261-81-23567 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&apv_perm_no=" target="_blank" class="link">사업자정보 확인</a>
<br>
통신판매업 : 제 2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이지훈
<br>
주소 : 서울시 도산대로 16길 20, 이래빌딩 B1 ~ 4F <span class="bar">I</span> 대표이사 : 김슬아
<br>
입점문의 : <a href="https://forms.gle/NJNBNmtYeKQyX5Rn9" target="_blank" class="link">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
<br>
채용문의 : <a href="mailto:recruit@kurlycorp.com" class="link">recruit@kurlycorp.com</a>
<br>
팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>
<em class="copy">&copy; KURLY CORP. ALL RIGHTS RESERVED</em>
</div>
</div>
<div class="footer_link">
<div class="authentication">
<div class="mark">
<img src="https://res.kurly.com/mobile/service/common/1904/logo_isms.png" alt="isms 로고" class="logo">
<p class="txt">
[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br>
[유효기간] 2019.04.01 ~ 2022.03.31
</p>
</div>
<div class="mark lguplus">
<img src="https://res.kurly.com/pc/ico/1810/logo_lguplus_v2.png?v=1" alt="LG U+로고" class="logo">
<p class="txt">
고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한<br>
LG U+ 구매안전(에스크로) 서비스를 이용하실 수 있습니다. <a href="#none" target="_blank" onclick="popup('http://pgweb.uplus.co.kr/ms/escrow/s_escrowYn.do?mertid=go_thefarmers',460,520);return false;" class="emph">서비스 가입사실 확인</a>
</p>
</div>
</div>
<ul class="list_sns">
<li>
<a href="https://instagram.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_instagram.png" alt="마켓컬리 인스타그램 바로가기"></a>
</li>
<li>
<a href="https://www.facebook.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_fb.png" alt="마켓컬리 페이스북 바로가기"></a>
</li>
<li>
<a href="http://blog.naver.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_blog.png" alt="마켓컬리 네이버블로그 바로가기"></a>
</li>
<li>
<a href="https://m.post.naver.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png" alt="마켓컬리 유튜브 바로가기"></a>
</li>
<li>
<a href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg" class="link_sns lst" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_youtube.png" alt="마켓컬리 유튜브 바로가기"></a>
</li>
</ul>
</div>
</div>
</div>
</div>

<a href="#top" id="pageTop">맨 위로가기</a>
<script>
	$(document).ready(function(){
		var pageTop = {
			$target : $('#pageTop'),
			$targetDefault : 0,
			$scrollTop : 0,
			$window : $(window),
			$windowHeight : 0,
			setTime : 500,
			saveHeight : 0,
			init:function(){
			},
			action:function(){
				var $self = this;
				$self.$windowHeight = parseInt($self.$window.height());
				$self.$window.on('scroll', function(){
					$self.$scrollTop = parseInt($self.$window.scrollTop());
					if($self.$scrollTop >= $self.$windowHeight){
						if(!$self.$target.hasClass('on')){
							$self.position();
							$self.$target.addClass('on');
							$self.showAction();
						}
					}else{
						if($self.$target.hasClass('on')){
							$self.position();
							$self.$target.removeClass('on');
							$self.hideAction();
						}
					}
				});
                
				$self.$target.on('click', function(e){
					e.preventDefault();
					$self.topAction();
				});
			},
			showAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:1,
					bottom:$self.saveHeight
				}, $self.setTime);
			},
			hideAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:0,
					bottom:-$self.$target.height()
				}, $self.setTime);
			},
			topAction:function(){
				var $self = this;
				$self.hideAction();
				$('html,body').animate({
					scrollTop:0
				}, $self.setTime);
			},
			position:function(){
				var $self = this;
				$self.saveHeight = 15;
				if($('#sectionView').length > 0){
					$self.saveHeight = 25;
				}
				if($('#branch-banner-iframe').length > 0 && parseInt( $('#branch-banner-iframe').css('bottom') ) > 0){
					$('#footer').addClass('bnr_app');
					$self.saveHeight += $('#branch-banner-iframe').height();
				}
			}
		}
		pageTop.action();
	});
</script>

<script>
// 클릭인인경우(푸터에 있으나, 아직공용작업은 못함) => bgLoading 이부분 처리필요
var bodyScroll = {
	winScrollTop : 0,
	body : $('body'),
	gnb : $('#gnb'),
	bg : $('#bgLoading'),
	bodyFixed : function(){
		var $self = this;
		var gnbCheck = false;
		$self.gnb = $('#gnb');
		if($self.gnb.hasClass('gnb_stop')){
			gnbCheck = true;
		}
		$self.body = $('body');
		$self.bg = $('#bgLoading');
		$self.winScrollTop = $(window).scrollTop();
		$self.bg.show();
		$self.body.addClass('noBody').css({
			'top' : -$self.winScrollTop
		});
	},
	bodyDefault : function(type){
		var $self = this;
		$self.body.removeClass('noBody').removeAttr('style');
		$self.bg.hide();
		if(type === undefined){
			window.scrollTo(0, $self.winScrollTop);
		}
	}
}
</script>

<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank" style="display:none;width:100%;height:600px;"></iframe>
<script>
	(function (theFrame) {
	  theFrame.contentWindow.location.href = theFrame.src;
	}(document.getElementById("ifrmHidden")));
</script>
<script>
	var _nSA=(function(_g,_c,_s,_p,_d,_i,_h){
	if(_i.wgc!=_g){var _ck=(new Image(0,0)).src=_p+'//'+_c+'/?cookie';_i.wgc=_g;_i.wrd=(new Date().getTime());
	var _sc=_d.createElement('script');_sc.src=_p+'//sas.nsm-corp.com/'+_s+'gc='+_g+'&rd='+_i.wrd;
	var _sm=_d.getElementsByTagName('script')[0];_sm.parentNode.insertBefore(_sc, _sm);_i.wgd=_c} return _i;
	})('TR10082304856','ngc1.nsm-corp.com','sa-w.js?',location.protocol,document,window._nSA||{},location.hostname);
</script>
<noscript><img src="//ngc1.nsm-corp.com/?uid=TR10082304856&je=n&" border=0 width=0 height=0></noscript>

</body>
</html>