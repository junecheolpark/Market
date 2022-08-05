package com.market.chatting;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.market.member.MemberDTO;

@Repository
public class ChattingDAO{    
	@Autowired
	private SqlSession session;
    @Autowired
    SqlSessionTemplate sqlSession;
    
 
    public ChattingRoomDTO selectChatRoom(String roomId) {
        return sqlSession.selectOne("chattingMapper.selectChattingRoom", roomId);
    }
    
    public int insertMessage(ChattingMessageDTO chatMessage) {
        return sqlSession.insert("chattingMapper.insertMessage", chatMessage);
    }
    
    public List<ChattingMessageDTO> messageList(String roomId) {
        return sqlSession.selectList("chattingMapper.messageList", roomId);
    }
 
    public int createChat(ChattingRoomDTO room) {
        return sqlSession.insert("chattingMapper.createChatting", room);
    }
 
    public ChattingRoomDTO searchChatRoom(ChattingRoomDTO room) {
        return sqlSession.selectOne("chattingMapper.searchChattingRoom", room);
    }
 
    public List<ChattingRoomDTO> chatRoomList(String userEmail) {
        return sqlSession.selectList("chattingMapper.chattingRoomList", userEmail);
    }
 
    public int selectUnReadCount(ChattingMessageDTO message) {
        return sqlSession.selectOne("chattingMapper.selectUnReadCount",message);
    }
 
    public int updateCount(ChattingMessageDTO message) {
        return sqlSession.update("chattingMapper.updateCount", message);
    };
    //룸쪽
    //준철
    public void chat_insert(ChattingRoomDTO room) {
        sqlSession.insert("chattingMapper.chat_insert", room);
    }
    //있는지 확인
    public boolean overlapping(String masterName, int post_seq) throws Exception {
		System.out.println(masterName+ post_seq);
    	Map<String, Object> map = new HashMap<String, Object>();
		map.put("masterName", masterName);
		map.put("post_seq", post_seq);
    	return sqlSession.selectOne("chattingMapper.overlapping", map);
	}
    public int chatCount(int post_seq) throws Exception {
    	return sqlSession.selectOne("chattingMapper.chatCount", post_seq);
	}
 // 프로파일,채팅룸 불러오기
 	public List<Map<String,Object>> chat_mamberJoin(String masterName) throws Exception{ 
 		return sqlSession.selectList("chattingMapper.chat_mamberJoin",masterName);
 	}
 	//insert시 같이업데이트
 	public void roomUpdate(ChattingMessageDTO dto) {
        sqlSession.update("chattingMapper.roomUpdate", dto);
    }
 	
 	//메세지쪽
 	public List<ChattingMessageDTO> chat_m_select(int roomId) throws Exception{
		System.out.println(roomId);
 		return session.selectList("chattingMapper.chat_m_select",roomId);
	}
 	public void chat_m_insert(ChattingMessageDTO dto) {
        sqlSession.insert("chattingMapper.chat_m_insert", dto);
    }
 	//채팅방나가기
 	public void chat_m_exit(int roomId) {
        sqlSession.delete("chattingMapper.chat_m_exit", roomId);
    }
}