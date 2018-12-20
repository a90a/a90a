package kr.or.kosta.mvc.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.M_studentVO;
import dto.Student_natureVO;

@Repository
public class M_studentDAO implements M_studentDAOInter {

	@Autowired
	private SqlSessionTemplate ss;

	// �л� ȸ������
	@Override
	public void createM_studentInfo(M_studentVO smvo) {
		System.out.println("smvo : " + smvo);
		ss.insert("m_student.infoCreate", smvo);
	}

	@Override
	public void createStudent_natureInfo(Student_natureVO snvo) {
		System.out.println("snvo : " + snvo);
		ss.insert("m_student.natureCreate", snvo);
	}

	// �л� ȸ�� �α����ϱ�
	@Override
	public M_studentVO readLoginM_studentInfo(String ms_id, String ms_pwd) {
		Map<String, Object> m_studentMap = new HashMap<>();
		m_studentMap.put("ms_id", ms_id);
		m_studentMap.put("ms_pwd", ms_pwd);

		return ss.selectOne("m_student.readLogin", m_studentMap);
	}

	// �л�ȸ������ pk�� ���̵�� �о����
	@Override
	public M_studentVO readMs_id(String ms_id) {
		return ss.selectOne("m_student.readMsInfo", ms_id);
	}

	// �л�ȸ������ �����ϱ�
	@Override
	public void updateMsInfo(M_studentVO msvo) {
		ss.update("m_student.updateMsInfo", msvo);
	}

	// �л�ȸ������ �����ϱ�
	@Override
	public void deleteMsInfo(String ms_id) {
		ss.delete("m_student.deleteMsInfo", ms_id);
	}
	
	// ���̵� �ߺ� Ȯ�� �޼ҵ�
	@Override
	public int idChk(String ms_id) {
		return ss.selectOne("m_student.idChk", ms_id);
	}

}
