package kr.or.kosta.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.StudyVO;
import dto.Study_listVO;

// StudyVO�� DAO
@Repository
public class StudyDAO implements StudyDAOInter {
	
	@Autowired
	private SqlSessionTemplate ss;

	// �ۼ�
	@Override
	public void createStudy(StudyVO svo) {
		System.out.println("svo ����: " + svo);
		ss.insert("study.createStudy", svo);
	}
	// ��û�� ���͵� ��� ����
	@Override
	public StudyVO readOneStudy(int num) {
		System.out.println("num : �б�" + num);
		return ss.selectOne("study.selectOne", num);
	}
	// ���͵� ��� ����
	@Override
	public List<StudyVO> readListStudy() {
		System.out.println("list : ���" );
		return ss.selectList("study.selectList");
	}
	// ���͵� ����
	@Override
	public void updateStudy(StudyVO svo) {
		System.out.println("svo : ����" + svo);
		ss.update("study.updateStudy",svo);
	}
	// ���͵� ����
	@Override
	public void deleteStudy(int num) {
		System.out.println("num : ����" + num);
		ss.delete("study.deleteStudy", num);
	}
	// ���͵� ����Ʈ �Է�
	@Override
	public void insertStudyList(Study_listVO slvo) {
		ss.insert("study.insertStudyList",slvo);
	}
	// ���͵� ����Ʈ ������Ʈ
	@Override
	public void updateStudyList(Study_listVO slvo) {
		ss.update("study.updateClassList",slvo);
	}
	// ���͵� ����Ʈ ����
	@Override
	public void deleteStudyList(int sl_num) {
		ss.delete("study.deleteStudy_list",sl_num);
	}
	
}
