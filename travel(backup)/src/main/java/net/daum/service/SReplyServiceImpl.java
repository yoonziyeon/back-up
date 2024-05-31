package net.daum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.daum.dao.SReplyDAO;
import net.daum.vo.ShareReplyVO;

@Service
public class SReplyServiceImpl implements SReplyService {
	
	@Autowired
	private SReplyDAO sreplyDao;

	@Override
	public void insertSReply(ShareReplyVO vo) {
		this.sreplyDao.insertSReply(vo);		
	}//댓글저장



}