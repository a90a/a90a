package kr.or.kosta.mvc.dao;

import java.util.List;

import dto.StudyVO;
import dto.Study_listVO;

public interface StudyDAOInter {

	// �ۼ�
	public void createStudy(StudyVO svo);
	// ��û�� ���͵� ��� ����
	public StudyVO readOneStudy(int num);
	// ���͵� ��ü ��� ����
	public List<StudyVO> readListStudy();
	// ���͵� ����
	public void updateStudy(StudyVO svo);
	// ���͵� ����
	public void deleteStudy(int num);
	//���͵� ����Ʈ �Է�
	public void insertStudyList(Study_listVO slvo);
	//���͵� ����Ʈ ������Ʈ
	public void updateStudyList(Study_listVO slvo);
	//���͵� ����Ʈ ����
	public void deleteStudyList(int sl_num);
}
