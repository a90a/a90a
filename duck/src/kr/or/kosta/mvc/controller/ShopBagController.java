package kr.or.kosta.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.ShopBag_Class_listDTO;
import dto.ShopBag_Stuudy_listDTO;
import kr.or.kosta.mvc.dao.ShopBagDAO;

@Controller
public class ShopBagController {
	
	@Autowired
	private ShopBagDAO sbdao;
	
	@RequestMapping("/shopbag")
	public ModelAndView shopbag(String sl_id){
		ModelAndView mav = new ModelAndView("shopbag");
		List<ShopBag_Stuudy_listDTO> slvolist = sbdao.readStudyList(sl_id);
		List<ShopBag_Class_listDTO> scvolist = sbdao.readClassList(sl_id);
		mav.addObject("slvolist",slvolist);
		mav.addObject("scvolist",scvolist);
		return mav;
	}

}
