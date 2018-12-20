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
		
	// Dao�� ����
	@Autowired
	private StudyDAOInter StudyDAOInter;
	@Autowired
	private Ms_mileageDAO msDao;
	@Autowired
	private BuyPointService bps;
	
	// ���͵� ���� ������ �̵�
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
		System.out.println("���ϸ� : " + oriFn);
		System.out.println("����ũ�� : " + size);
		System.out.println("Type : " + contentType);
		
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\")
		.append(oriFn);
		System.out.println(path);
		
		File f = new File(path.toString());
		System.out.println(f.exists());
		
		// ���� ���ε� ����
		
		// �̹����� �̸��� ���� Database�� �����ϱ� ���ؼ�
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
	//����������
	@RequestMapping(value="/updateStudyForm")
	public String updateStudyForm(Model m, int num) {
		StudyVO svo = StudyDAOInter.readOneStudy(num);
		m.addAttribute("svo",svo);
		return "study_update_Form";
	}
	//�����ϱ�
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
		System.out.println("���ϸ� : " + oriFn);
		System.out.println("����ũ�� : " + size);
		System.out.println("Type : " + contentType);
		
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\")
		.append(oriFn);
		System.out.println(path);
		
		File f = new File(path.toString());
		System.out.println(f.exists());
		
		// ���� ���ε� ����
		
		// �̹����� �̸��� ���� Database�� �����ϱ� ���ؼ�
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
	
	
	//�����ϱ�
	@RequestMapping(value="/deleteStudy")
	public String deleteStudy(int num) {
		StudyDAOInter.deleteStudy(num);
		return "redirect:/selectListStudy";
		
	}
	
	//���͵� ����Ʈ �Է�
	@RequestMapping(value="/insertStudyList_l")
	public String insertStudyList(HttpServletRequest req,HttpSession session,String num,String buynum,String msid) {
		String sl_id = (String) session.getAttribute("ms_id");
		System.out.println("�����л� ���̵� ����?  "+ sl_id);
		String ms_id = req.getParameter("msid");
		System.out.println("�����л� ���̵� ����?  "+ ms_id);
		int s_num = Integer.parseInt(req.getParameter("num"));
		System.out.println("���͵� ��ȣ => " + s_num);
		int sl_buy = Integer.parseInt(req.getParameter("buynum"));
		System.out.println("���� �б� ��ȣ => " + sl_buy);
		
		Study_listVO slvo = new Study_listVO();
		slvo.setS_num(s_num);
		slvo.setSl_id(sl_id);
		slvo.setMs_id(ms_id);
		slvo.setSl_buy(sl_buy);
		
		
		StudyDAOInter.insertStudyList(slvo);
		return "redirect:/";
	}
	
	//���͵� ����Ʈ ���ź��� => ���� ����
	@RequestMapping(value="/updateStudy_list")
	public String updateStudyForm(HttpSession session,HttpServletRequest req,int num,int buynum,int price)throws Exception {
		//�������� id �� �ޱ�
		String ms_id = (String) session.getAttribute("ms_id");
		System.out.println("���͵� Id => "+ms_id);
		// ������Ʈ �˾ƿ���
		S_mileageVO getsmvo = msDao.selectOneS_mileage(ms_id);
		System.out.println(getsmvo.getSm_point()+"Point");
		int my_point = getsmvo.getSm_point(); 
		
		// �����Ϸ��� ���͵� ����,list�� ��ȣ,�б��ȣ �Ͼƿ���
		int s_price = Integer.parseInt(req.getParameter("price"));
		int sl_num = Integer.parseInt(req.getParameter("num"));
		int sl_buy = Integer.parseInt(req.getParameter("buynum"));
		System.out.println("���͵� ���� ������Ʈ ����"+sl_num+sl_buy);
		
		
		bps.studyBuyPoint(sl_num, sl_buy, s_price, my_point, ms_id);
		System.out.println("�ڡڡڡڡڡڡڡڱ��� �Ϸ�ڡڡڡڡڡڡڡڡڡ�");
		return "redirect:/";
	}
	
	//���͵� ����Ʈ delete
	@RequestMapping(value="deleteStudy_list")
	public String deleteStudy_List(HttpServletRequest req,int num) {
		System.out.println("���͵� �����Ҳ���~~~!!!!");
		int sc_num = Integer.parseInt(req.getParameter("num"));
		StudyDAOInter.deleteStudyList(sc_num);
		return "redirect:/";
	}
	
	
	
}
	
