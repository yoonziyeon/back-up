package net.daum.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import net.daum.vo.ShareSquareVO;

@Repository
public class ShareSqauareDAOImpl implements ShareSquareDAO {

	@Autowired
	private ShareSquareRepository shareaquareRepo;
	

	
	@Override
	public void insertShare(ShareSquareVO s) {
		System.out.println("/n 공유 후기 저장(JPA)=====>");		
		this.shareaquareRepo.save(s);		
	}
	
	//@Override
	//public int getListCount(PageVO p) {
	//	return this.sqlsession.selectOne("ss_count",p);
//	}

	@Override
	public List<ShareSquareVO> getshareSquareList(ShareSquareVO s) {
		System.out.println("/n 공유 후기 목록 리스트(JPA)=====>");
		return this.shareaquareRepo.findAll();
	}




}
