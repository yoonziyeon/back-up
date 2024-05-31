package net.daum.service;

import java.util.List;


import net.daum.vo.ShareSquareVO;

public interface ShareSquareService {

	void insertShare(ShareSquareVO s);
	//int getListCount(PageVO p);
	List<ShareSquareVO> getshareSquareList(ShareSquareVO s);


	

	


		

}
