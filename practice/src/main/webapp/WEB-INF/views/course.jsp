<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<span id="count"></span>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
//https://cmelcmel.tistory.com/104

$(document).ready(function(){
		send_message();

});

var webSocket = new WebSocket("ws://localhost/practice/count");
function send_message() {
    websocket.onopen = function(evt) {
		onOpen(evt);
    };

    websocket.onmessage = function(evt) {
     	onMessage(evt);
    };

    websocket.onerror = function(evt) {
        onError(evt);
    };

}



function onOpen(evt) {
   websocket.send("홍길동");

}

function onMessage(evt) {
		$('#count').append(evt.data);

}

function onError(evt) {
}

//출처: https://simsimjae.tistory.com/25 [104%]
</script>
</html>