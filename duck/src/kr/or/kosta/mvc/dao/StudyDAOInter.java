package kr.or.kosta.mvc.dao;

import java.util.List;

import dto.StudyVO;
import dto.Study_listVO;

public interface StudyDAOInter {

	// 작성
	public void createStudy(StudyVO svo);
	// 신청한 스터디 목록 보기
	public StudyVO readOneStudy(int num);
	// 스터디 전체 목록 보기
	public List<StudyVO> readListStudy();
	// 스터디 수정
	public void updateStudy(StudyVO svo);
	// 스터디 삭제
	public void deleteStudy(int num);
	//스터디 리스트 입력
	public void insertStudyList(Study_listVO slvo);
	//스터디 리스트 업데이트
	public void updateStudyList(Study_listVO slvo);
	//스터디 리스트 삭제
	public void deleteStudyList(int sl_num);
}
