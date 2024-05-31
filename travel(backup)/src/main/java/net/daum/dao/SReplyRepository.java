package net.daum.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import net.daum.vo.ShareReplyVO;

public interface SReplyRepository extends JpaRepository<ShareReplyVO, Integer> {

}
