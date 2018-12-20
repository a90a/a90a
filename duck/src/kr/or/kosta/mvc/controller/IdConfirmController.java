package kr.or.kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.or.kosta.mvc.dao.M_studentDAOInter;

// @RestController�� JSP�� ���� �並 ����� ���� �ʰ�,
// ������ ��ü�� ��ȯ��.
@RestController
@RequestMapping("/idconfirm")
public class IdConfirmController {

	// Dao�� ����
	@Autowired
	private M_studentDAOInter m_studentDAOInter;

	// http://localhost/springproject/idconfirm/idcheck?ms_id=s_park
	// ���� ���������� �����Ͽ� �����Ͱ� ����� ��µǴ��� ���� Ȯ��!!
	// pom.xml�� jackson-databind �߰��ؾ���!!
	// ���̵� �ߺ� Ȯ��
	@GetMapping("/idcheck")
	public String idConfirmid(@RequestParam("ms_id") String ms_id, 
			HttpServletRequest req, HttpServletResponse resp) {
		int cnt = m_studentDAOInter.idChk(ms_id);
		req.setAttribute("cnt", cnt);
		return String.valueOf(cnt);
	}
}
