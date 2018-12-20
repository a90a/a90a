package kr.or.kosta.mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dto.ClassVO;
import dto.StudyVO;
import kr.or.kosta.mvc.dao.SearchDaoInter;

@Controller
public class SearchController {

	@Autowired
	private SearchDaoInter searchDaoInter;

	// index.jsp ���� post ������� searchField action���� ���ؼ�
	// searchview()�޼ҵ�� ������.
	// searchType�� select�±��� �������̰�,
	// searchName�� input="text"�� id����.
	@RequestMapping("/searchField")
	public String searchview(@RequestParam String searchType, 
			@RequestParam String searchName, Model m) {
		System.out.println(searchName + " : " + searchType);
		// Map���� searchType�� searchName�� ��� ������.
		Map<String, String> map = new HashMap<>();
		map.put("searchType", searchType);
		map.put("searchName", searchName);
		String viewName = "";
		// select �±׿��� ����� option value�� ���� ���Ͽ� switch������ ������.
		// value�� 1,2,3,4 ������ ����.
		switch (searchType) {
		case "1": // ���հ˻� (case 2, 3, 4)�� ��� ����� ������.
			List<ClassVO> classList = searchDaoInter.readClassSearch(map);
			List<ClassVO> teacherList = searchDaoInter.readTeacherSearch(map);
			List<StudyVO> studyList = searchDaoInter.readStudySearch(map);
			m.addAttribute("classList", classList);
			m.addAttribute("teacherList", teacherList);
			m.addAttribute("studyList", studyList);
			viewName = "searchAll";
			break;
		case "2": // ���Ǹ� ���� ���ǰ˻�
			List<ClassVO> clist = searchDaoInter.readClassSearch(map);
			m.addAttribute("clist", clist);
			viewName = "searchClass";
			break;
		case "3": // ����� ���� ���ǰ˻�
			List<ClassVO> mlist = searchDaoInter.readTeacherSearch(map);
			m.addAttribute("mlist", mlist);
			viewName = "searchTeacher";
			break;
		case "4": // ���͵�� ���� ���͵�˻�
			List<StudyVO> slist = searchDaoInter.readStudySearch(map);
			m.addAttribute("slist", slist);
			viewName = "searchStudy";
			break;
		}
		return viewName;
	}
}
