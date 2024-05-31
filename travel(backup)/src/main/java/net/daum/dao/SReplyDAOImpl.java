package net.daum.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.daum.vo.ShareReplyVO;

@Repository
public class SReplyDAOImpl implements SReplyDAO {
	
	@Autowired
	private SReplyRepository sreplyRepo;

	@Override
	public void insertSReply(ShareReplyVO vo) {
		System.out.println(" \n 댓글 저장(JPA)=============>");
		this.sreplyRepo.save(vo);		
	}//댓글 저장
	

}