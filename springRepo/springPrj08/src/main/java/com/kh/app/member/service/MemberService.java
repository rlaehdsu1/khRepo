package com.kh.app.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kh.app.member.dao.MemberDao;
import com.kh.app.member.vo.MemberVo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	
	private final SqlSessionTemplate sst;
	private final MemberDao dao;

	public int join(MemberVo vo) {
		return dao.join(sst , vo);
	}

	public MemberVo login(MemberVo vo) {
		return dao.login(sst, vo);
	}

}//class























