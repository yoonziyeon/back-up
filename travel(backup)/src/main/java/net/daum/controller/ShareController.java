package net.daum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ShareController {


	
	@GetMapping(value="/plan_share")
	public String plan_share() {
		return "jsp/plan_share";
	}
	
	@GetMapping(value="/ShareSquare")
	public String ShareSquare() {
		return "jsp/ShareSquare";
	}
	
	@GetMapping(value="/WishList")
	public String WishList() {
		return "jsp/WishList";
	}
	
	@GetMapping(value="/Best")
	public String Best() {
		return "jsp/Best";
	}
}