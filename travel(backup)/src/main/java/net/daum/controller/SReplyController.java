package net.daum.controller;



import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import net.daum.service.SReplyService;
import net.daum.vo.ShareReplyVO;

@RestController
@Controller
@RequestMapping("/sreply")
public class SReplyController {

	@Autowired
	private SReplyService sreplyService;
	
	@PostMapping("/addReply") //post방식으로 접근하는 addReply 매핑주소 처리
	public ModelAndView addreply(ShareReplyVO vo, HttpServletResponse response) throws Exception{
		
		this.sreplyService.insertSReply(vo);
		
		ModelAndView sr = new ModelAndView();
		sr.addObject("replytext", vo.getReplytext());
		sr.setViewName("/jsp/plan_share");
		return sr;
		
	}//addreply()
}