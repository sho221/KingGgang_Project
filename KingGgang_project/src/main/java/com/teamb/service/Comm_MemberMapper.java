package com.teamb.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamb.model.Comm_MemberDTO;
import com.teamb.model.MemberDTO;

@Service
public class Comm_MemberMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int comm_loginOk(Comm_MemberDTO dto){
		String dbPass = sqlSession.selectOne("comm_loginOk", dto);
		if (dbPass != null)
			return dto.OK;
		return dto.ERROR;
	}
	
	public int comm_insertMember(Comm_MemberDTO dto){
		int res = sqlSession.insert("comm_insertMember",dto);
		return res;
	}
	
	public List<Comm_MemberDTO> comm_memberList(){
		List<Comm_MemberDTO> list = sqlSession.selectList("comm_memberList");
		return list;
	}
	
	public Comm_MemberDTO comm_getMember(int comm_memberNum){
		return sqlSession.selectOne("comm_getMember",comm_memberNum);
	}
	
	
	public int comm_updateMember(Comm_MemberDTO dto) {
		int res = sqlSession.update("comm_updateMember", dto);
		return res;
	}
	
	public int comm_deleteMember(int comm_memberNum) {
		int res = sqlSession.delete("comm_deleteMember",comm_memberNum);
		return res;
	}
	


}

