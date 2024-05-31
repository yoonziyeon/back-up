package net.daum.dao;

import java.util.List;


import net.daum.vo.ShareSquareVO;

public interface ShareSquareDAO {

	void insertShare(ShareSquareVO s);
	//int getListCount(PageVO p);
	List<ShareSquareVO> getshareSquareList(ShareSquareVO s);
	

	

}
