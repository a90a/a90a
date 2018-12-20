package kr.or.kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dto.Teacher_natureVO;
import kr.or.kosta.mvc.dao.Teacher_natureDAOInter;

@Controller
public class Teacher_natureController {

	private static final Logger logger = LoggerFactory.getLogger(M_teacherController.class);
	
	@Autowired
	private Teacher_natureDAOInter teacher_natureDAOInter;
	
	//�����Է� ������ �̵�
	@GetMapping("/natureInsert")
	public String m_teacherReg() {
		return "teacher_nature_Form";
	}
	
	//�����Է� ������ �Է��� ������ �߰�
	@PostMapping("/natureCreate")
	public String m_teacherCreate(HttpSession session, Teacher_natureVO tnvo, HttpServletRequest request, Model m) throws Exception{
		/*if (session.getAttribute("mt_id") != null) {
			String mt_id = (String) session.getAttribute("mt_id");
			request.getAttribute(tn_my);
			request.getAttribute(tn_you);
			request.getAttribute(tn_category);
			System.out.println(mt_id);
			System.out.println(tn_my);
			System.out.println(tn_you);
			System.out.println(tn_category);
			
			Teacher_natureVO tnvo = new Teacher_natureVO();
			tnvo.setMt_id(mt_id);
			tnvo.setTn_my(tn_my);
			tnvo.setTn_you(tn_you);
			tnvo.setTn_category(tn_category);
		}*/
		System.out.println(tnvo.getMt_id()+"  �� �о�   ");
		System.out.println(tnvo.getTn_category());
		teacher_natureDAOInter.createTeacher_natureVO(tnvo);			
		return "redirect:/";		
	}
	
	//������� ������ �̵�
	@GetMapping("/characterModify_teacher")
	public String m_teacherModify(HttpSession session, HttpServletRequest request, Model m) throws Exception{
		String mt_id = (String) session.getAttribute("mt_id");
		System.out.println(mt_id);
		
		Teacher_natureVO tnvo = teacher_natureDAOInter.readMt_id(mt_id);
		/*if (mt_id != null) {
			tnvo = teacher_natureDAOInter.readMt_id(mt_id);
		} 
		request.setAttribute("tnvo", tnvo);
		System.out.println(tnvo.getTn_my());
		System.out.println(tnvo.getTn_you());
		*/
		m.addAttribute("tnvo",tnvo);
		return "teacher_nature_updete_Form";
	}
	
	//���� ����
	@PostMapping("/natureModify_teacher")
	public String m_teacherModifySend(HttpSession session, 
			HttpServletRequest request, Model m, Teacher_natureVO tnvo) throws Exception{
		if (session.getAttribute("mt_id") != null) {
			String mt_id = (String) session.getAttribute("mt_id");
			System.out.println(mt_id);
			String tn_my = request.getParameter("tn_my");
			String tn_you = request.getParameter("tn_you");
			String tn_category = request.getParameter("tn_category");
			System.out.println(tn_my);
			System.out.println(tn_you);
			System.out.println(tn_category);
			
			tnvo.setMt_id(mt_id);
			tnvo.setTn_my(tn_my);
			tnvo.setTn_you(tn_you);
			tnvo.setTn_category(tn_category);
			teacher_natureDAOInter.updateTeacher_natureVO(tnvo);
		}
		request.setAttribute("tnvo", tnvo);
		return "redirect:./";
	}
	@RequestMapping(value="mtnatureCreate")
	public String m_teacherCreateNature(HttpSession session,Teacher_natureVO tnvo) throws Exception { //Teacher_natureVO tnvo,HttpSession session
		String mt_id = (String) session.getAttribute("mt_id");
//		tnvo.setMt_id(mt_id);
		System.out.println("�޴¾��̴�: "+mt_id);
		System.out.println("���� ����: "+tnvo.getTn_my());
		System.out.println("���� ����: "+tnvo.getTn_you());
		System.out.println("���� ����: "+tnvo.getTn_category());
		System.out.println("����");
		tnvo.setMt_id(mt_id);
		teacher_natureDAOInter.createTeacher_natureVO(tnvo);		
		return "redirect:./";
	}
	
	//�������
	@PostMapping("/mtnatureDelete")
	public String m_teacherDelete(HttpSession session) throws Exception{
		if (session.getAttribute("mt_id") != null) {
			String mt_id = (String) session.getAttribute("mt_id");
			System.out.println(mt_id);
			teacher_natureDAOInter.deleteTeacher_natureVO(mt_id);
		}
		return "redirect:./";		
	}	
}
