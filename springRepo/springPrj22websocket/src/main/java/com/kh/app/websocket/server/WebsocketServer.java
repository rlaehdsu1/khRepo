package com.kh.app.websocket.server;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;

import lombok.extern.slf4j.Slf4j;

@Slf4j
//public class WebsocketServer implements WebSocketHandler {
public class WebsocketServer extends TextWebSocketHandler {
	
	private Set<WebSocketSession> sessionSet = new HashSet<WebSocketSession>();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		log.info("afterConnectionEstablished 호출됨 ...");
		sessionSet.add(session);
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		log.info("afterConnectionClosed 호출됨 ...");
		sessionSet.remove(session);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		log.info("handleTextMessage 호출됨 ...");
		
		String nick = (String) session.getAttributes().get("loginMember");
		
		Gson gson = new Gson();
		
		HashMap<String, String> msgVo = new HashMap<String, String>();
		msgVo.put("nick", nick);
		msgVo.put("msg", message.getPayload());
		msgVo.put("time", new Date() + "");
		
		System.out.println(msgVo);
		
		String jsonStr = gson.toJson(msgVo);
		
		for (WebSocketSession s : sessionSet) {
			s.sendMessage(new TextMessage(jsonStr));
		}
	}
	

}







