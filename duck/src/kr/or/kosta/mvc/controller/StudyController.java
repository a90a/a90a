package kr.or.kosta.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dto.S_mileageVO;
import dto.StudyVO;
import dto.Study_listVO;
import kr.or.kosta.mvc.dao.Ms_mileageDAO;
import kr.or.kosta.mvc.dao.StudyDAOInter;
import kr.or.kosta.mvc.service.BuyPointService;

@Controller
public class StudyController {
		
	// Dao를 주입
	@Autowired
	private StudyDAOInter StudyDAOInter;
	@Autowired
	private Ms_mileageDAO msDao;
	@Autowired
	private BuyPointService bps;
	
	// 스터디 개설 폼으로 이동
	@GetMapping("/create_study")
	public String studyCreate() {
		return "study_Form";
	}


	@PostMapping("/createStudy")
	@ResponseBody
	public ModelAndView createStudyOpenAop(@ModelAttribute("svo") StudyVO svo, HttpSession session , 
			HttpServletRequest request) {
		
		String img_path ="resources\\images";
		System.out.println("img_path"+img_path);
		String r_path = request.getRealPath("/");
		
		MultipartFile mfile = svo.getMf_img();
		
		String oriFn = mfile.getOriginalFilename();
		long size = mfile.getSize();
		String contentType = mfile.getContentType();
		
		System.out.println(r_path);
		System.out.println("파일명 : " + oriFn);
		System.out.println("파일크기 : " + size);
		System.out.println("Type : " + contentType);
		
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\")
		.append(oriFn);
		System.out.println(path);
		
		File f = new File(path.toString());
		System.out.println(f.exists());
		
		// 파일 업로드 진행
		
		// 이미지의 이름만 따로 Database에 저장하기 위해서
		svo.setS_img(oriFn);
		StudyDAOInter.createStudy(svo);
		
		try {
			mfile.transferTo(f);
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		String ms_id = (String) session.getAttribute("ms_id");	
		System.out.println(ms_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("svo", svo);
		mav.setViewName("redirect:/selectListStudy");
		return mav;//"redirect:create_study";
	}
	
	@RequestMapping(value="/selectListStudy")//?
	public ModelAndView selectListStudy() {
		ModelAndView mav = new ModelAndView();
		List<StudyVO> list = StudyDAOInter.readListStudy();
		mav.setViewName("study_list");
		mav.addObject("list", list);
		return mav;
	}
	
	//selectOneStudy
	@RequestMapping(value="/selectOneStudy")
	public ModelAndView selectOneStudy(int num) {
		ModelAndView mav = new ModelAndView();
		StudyVO svo = StudyDAOInter.readOneStudy(num);
		mav.setViewName("study_listOne");
		mav.addObject("svo", svo);
		return mav;
	}
	//수정폼가기
	@RequestMapping(value="/updateStudyForm")
	public String updateStudyForm(Model m, int num) {
		StudyVO svo = StudyDAOInter.readOneStudy(num);
		m.addAttribute("svo",svo);
		return "study_update_Form";
	}
	//수정하기
	@PostMapping("/updateStudy")
	public ModelAndView updateStudy(@ModelAttribute("svo") StudyVO svo, HttpSession session , 
			HttpServletRequest request) {
		String img_path ="resources\\images";
		String r_path = request.getRealPath("/");
		
		MultipartFile mfile = svo.getMf_img();
		
		String oriFn = mfile.getOriginalFilename();
		long size = mfile.getSize();
		String contentType = mfile.getContentType();
		
		System.out.println(r_path);
		System.out.println("파일명 : " + oriFn);
		System.out.println("파일크기 : " + size);
		System.out.println("Type : " + contentType);
		
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\")
		.append(oriFn);
		System.out.println(path);
		
		File f = new File(path.toString());
		System.out.println(f.exists());
		
		// 파일 업로드 진행
		
		// 이미지의 이름만 따로 Database에 저장하기 위해서
		svo.setS_img(oriFn);
		StudyDAOInter.updateStudy(svo);
		try {
			mfile.transferTo(f);
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		String ms_id = (String) session.getAttribute("ms_id");	
		System.out.println(ms_id);
		ModelAndView mav = new ModelAndView("redirect:selectOneStudy?num="+svo.getS_num());
		return mav;
	}
	
	
	//삭제하기
	@RequestMapping(value="/deleteStudy")
	public String deleteStudy(int num) {
		StudyDAOInter.deleteStudy(num);
		return "redirect:/selectListStudy";
		
	}
	
	//스터디 리스트 입력
	@RequestMapping(value="/insertStudyList_l")
	public String insertStudyList(HttpServletRequest req,HttpSession session,String num,String buynum,String msid) {
		String sl_id = (String) session.getAttribute("ms_id");
		System.out.println("참여학생 아이디가 뭔가?  "+ sl_id);
		String ms_id = req.getParameter("msid");
		System.out.println("개설학생 아이디가 뭔가?  "+ ms_id);
		int s_num = Integer.parseInt(req.getParameter("num"));
		System.out.println("스터디 번호 => " + s_num);
		int sl_buy = Integer.parseInt(req.getParameter("buynum"));
		System.out.println("구매 분기 번호 => " + sl_buy);
		
		Study_listVO slvo = new Study_listVO();
		slvo.setS_num(s_num);
		slvo.setSl_id(sl_id);
		slvo.setMs_id(ms_id);
		slvo.setSl_buy(sl_buy);
		
		
		StudyDAOInter.insertStudyList(slvo);
		return "redirect:/";
	}
	
	//스터디 리스트 구매변경 => 단일 구매
	@RequestMapping(value="/updateStudy_list")
	public String updateStudyForm(HttpSession session,HttpServletRequest req,int num,int buynum,int price)throws Exception {
		//세션으로 id 값 받기
		String ms_id = (String) session.getAttribute("ms_id");
		System.out.println("스터디 Id => "+ms_id);
		// 내포인트 알아오기
		S_mileageVO getsmvo = msDao.selectOneS_mileage(ms_id);
		System.out.println(getsmvo.getSm_point()+"Point");
		int my_point = getsmvo.getSm_point(); 
		
		// 구매하려는 스터디 가격,list의 번호,분기번호 일아오기
		int s_price = Integer.parseInt(req.getParameter("price"));
		int sl_num = Integer.parseInt(req.getParameter("num"));
		int sl_buy = Integer.parseInt(req.getParameter("buynum"));
		System.out.println("스터디 구매 업데이트 진입"+sl_num+sl_buy);
		
		
		bps.studyBuyPoint(sl_num, sl_buy, s_price, my_point, ms_id);
		System.out.println("★★★★★★★★구매 완료★★★★★★★★★★");
		return "redirect:/";
	}
	
	//스터디 리스트 delete
	@RequestMapping(value="deleteStudy_list")
	public String deleteStudy_List(HttpServletRequest req,int num) {
		System.out.println("스터디 삭제할꺼야~~~!!!!");
		int sc_num = Integer.parseInt(req.getParameter("num"));
		StudyDAOInter.deleteStudyList(sc_num);
		return "redirect:/";
	}
	
	
	
}
	
