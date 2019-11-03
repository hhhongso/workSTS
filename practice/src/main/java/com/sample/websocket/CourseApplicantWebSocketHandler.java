package com.sample.websocket;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class CourseApplicantWebSocketHandler extends TextWebSocketHandler{
	private Set<WebSocketSession> sessions = Collections.synchronizedSet(new HashSet<WebSocketSession>());
	//WebSocketSession은 클라이언트와 서버 간의 전이중 통신을 담당하는 객체로, jdbc의 Connection 과 유사하다. 
	//클라이언트의 최초 웹소켓 요청 시 생성. 
	
	//수강신청과목의 신청자 수가 변경되면, 과목코드와 신청자 수를 모든 클라이언트에게 통지하는 메소드. 
	public void noticeCourseApplicant(CourseDTO courseDTO) throws Exception{
		Iterator<WebSocketSession> iterator = sessions.iterator();
		
		while(iterator.hasNext()) {
			WebSocketSession session = iterator.next();
			
			try {
				TextMessage message = new TextMessage(courseDTO.getCourseCode() + ": " + courseDTO.getApplicant());
				session.sendMessage(message);
			} catch (Exception e) {
				e.printStackTrace();
				iterator.remove();
			}
		}
	}
	
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// 클라이언트로부터 메세지가 도착하면 실행된다. 
	}
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		//클라이언트와 연결이 완료되고, 통신할 준비가 되면 실행한다.
		//연결 요청 접수 -> 해당 클라이언트와 통신을 담당하는 WebSocketSession 객체가 전달된다. 
		//WebSocketSession 객체를 Set 에 담아둔다. 
		sessions.add(session);		
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		//클라이언트와 연결이 종료되면 실행된다. 
		//연결이 해제되면 통신을 담당하는 객체를 hashSet에서 제거한다. 
		sessions.remove(session);
	}
	
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		//메세지 전송 중 에러가 발생하면 실행된다. 
		// 에러가 발생하면, 해당 클라이언트와 통신을 담당하는 객체를 HashSet에서 제거한다. 
		sessions.remove(session);
	}
	


}
