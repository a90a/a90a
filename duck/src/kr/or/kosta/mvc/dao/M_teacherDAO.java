package kr.or.kosta.mvc.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.M_teacherVO;
import dto.Teacher_natureVO;

@Repository
public class M_teacherDAO implements M_teacherDAOInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	//����
	@Override
	public void createM_teacher(M_teacherVO tvo) throws Exception{
		System.out.println("tvo");
		ss.insert("teacher.create", tvo);
	}

	//�ش� ������
	@Override
	public M_teacherVO readM_teacher(String mt_id) throws Exception {
		System.out.println("read");
		return ss.selectOne("teacher.read", mt_id);
	}

	//����
	@Override
	public void updateM_teacher(M_teacherVO mtvo) throws Exception {
		System.out.println("update");
		ss.update("teacher.update", mtvo);
	}

	//����
	@Override
	public void deleteM_teacher(String mt_id) throws Exception {
		System.out.println("delete");
		ss.delete("teacher.delete", mt_id);
	}

	//��������
	@Override
	public M_teacherVO readM_teacherLogin(String mt_id, String mt_pwd) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("mt_id", mt_id);
		map.put("mt_pwd", mt_pwd);
		System.out.println("login");
		return ss.selectOne("teacher.readLogin_T", map);
	}

	//�����Է�
	@Override
	public void createTeacher_nature(Teacher_natureVO tnvo) {
		System.out.println(tnvo);
		ss.insert("teacher.natureCreate", tnvo);
	}
	
	/*public void deletetest(int num){
		System.out.println("M_teacherDAO���� 65���� ���ΰ� ���ڰ�!"+num);
		ss.delete("teacher.delete2", num);
	}*/
/*
	@Override
	public M_teacherVO readM_teacher(String mt_id, String mt_pwd) throws Exception {
		Map<String, Object> m_teacherMap = new HashMap<>();`
		m_teacherMap.put("mt_id", mt_id);
		m_teacherMap.put("mt_pwd", mt_pwd);
		return ss.selectOne("teacher.readLogin", m_teacherMap);
	}*/
}
