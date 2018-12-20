package kr.or.kosta.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.ShopBag_Class_listDTO;
import dto.ShopBag_Stuudy_listDTO;
import dto.Student_natureVO;
import dto.StudyVO;
import kr.or.kosta.mvc.dao.ShopBagDAO;
import kr.or.kosta.mvc.dao.Student_natureDAOInter;

@Controller
public class MypageController {
	
	@Autowired
	private ShopBagDAO sbdao;
	
	@Autowired
	private Student_natureDAOInter sninter;
	
	@RequestMapping(value="mypage_class_study_list")
	public ModelAndView mypage_ClassStudy_list(String sl_id){
		ModelAndView mav = new ModelAndView("mypage_class&study_list");
		List<ShopBag_Stuudy_listDTO> slvolist = sbdao.readStudyList(sl_id);
		List<ShopBag_Class_listDTO> scvolist = sbdao.readClassList(sl_id);
		mav.addObject("slvolist",slvolist);
		mav.addObject("scvolist",scvolist);
		return mav;
	}
	
	@RequestMapping("matching_study")
	public ModelAndView matching_study(Student_natureVO snvo) {
		ModelAndView mav = new ModelAndView("student_nature_listOne");
		StudyVO svo = sninter.natureMatchingStudy(snvo);
		mav.addObject("svo",svo);
		return mav;
	}
	
}
