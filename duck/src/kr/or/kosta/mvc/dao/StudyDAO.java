package kr.or.kosta.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.StudyVO;
import dto.Study_listVO;

// StudyVO의 DAO
@Repository
public class StudyDAO implements StudyDAOInter {
	
	@Autowired
	private SqlSessionTemplate ss;

	// 작성
	@Override
	public void createStudy(StudyVO svo) {
		System.out.println("svo 생성: " + svo);
		ss.insert("study.createStudy", svo);
	}
	// 신청한 스터디 목록 보기
	@Override
	public StudyVO readOneStudy(int num) {
		System.out.println("num : 읽기" + num);
		return ss.selectOne("study.selectOne", num);
	}
	// 스터디 목록 보기
	@Override
	public List<StudyVO> readListStudy() {
		System.out.println("list : 목록" );
		return ss.selectList("study.selectList");
	}
	// 스터디 수정
	@Override
	public void updateStudy(StudyVO svo) {
		System.out.println("svo : 수정" + svo);
		ss.update("study.updateStudy",svo);
	}
	// 스터디 삭제
	@Override
	public void deleteStudy(int num) {
		System.out.println("num : 삭제" + num);
		ss.delete("study.deleteStudy", num);
	}
	// 스터디 리스트 입력
	@Override
	public void insertStudyList(Study_listVO slvo) {
		ss.insert("study.insertStudyList",slvo);
	}
	// 스터디 리스트 업데이트
	@Override
	public void updateStudyList(Study_listVO slvo) {
		ss.update("study.updateClassList",slvo);
	}
	// 스터디 리스트 삭제
	@Override
	public void deleteStudyList(int sl_num) {
		ss.delete("study.deleteStudy_list",sl_num);
	}
	
}
