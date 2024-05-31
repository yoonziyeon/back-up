package net.daum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.daum.dao.ShareSquareDAO;

import net.daum.vo.ShareSquareVO;

@Service
public class ShareSquareServiceImpl implements ShareSquareService {

	@Autowired
	private ShareSquareDAO sharesquareDao;

	@Override
	public void insertShare(ShareSquareVO s) {
		this.sharesquareDao.insertShare(s);
	}
	
	//@Override
	//public int getListCount(PageVO p) {
	//	return this.sharesquareDao.getListCount(p);
	//}


	@Override
	public List<ShareSquareVO> getshareSquareList(ShareSquareVO s) {
		return sharesquareDao.getshareSquareList(s);
	}

	

		


}
