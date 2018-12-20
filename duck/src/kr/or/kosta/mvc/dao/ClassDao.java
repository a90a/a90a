package kr.or.kosta.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.ClassVO;
import dto.Sc_listVO;

@Repository
public class ClassDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	public void createClass() {
//		ss.insert("class.test");
		ss.insert("class.createclass");
//		ss.insert("class.createclass",vo);
	}
	
	public void createClass2(ClassVO vo) {
		ss.insert("class.createclass2",vo);
	}
	
	// 페이지 카운트에 개수 사용할 dao
	public int getTotalCount(dto.SearchVO svo) {
		return ss.selectOne("class.count",svo);
	}
	
	public List<ClassVO> readClass() {
		List<ClassVO> list = ss.selectList("class.selectlistclass");
		return list;
	}
	// 페이징 처리 리스트를 뿌려 줄 dao
	public List<ClassVO> readClass2(dto.SearchVO svo){
		return ss.selectList("class.selectlistclass2",svo);
	}
	
	// 원하는 글을 뿌려줄 dao
	public ClassVO readoneClass(int num) {
		return ss.selectOne("class.selectoneclass",num);
	}
	public void updateClass() {
		ss.update("class.updateclass");
	}
	public void updateClass2(ClassVO vo) {
		ss.update("class.updateclass2",vo);
	}
	public void deleteClass(int num) {
		ss.delete("class.deleteclass",num);
	}
	//class_list insert
	public void insertClassList(Sc_listVO scvo) {
		ss.insert("class.insertClassList",scvo);
	}
	//class_list update
	public void updateClassList(Sc_listVO scvo) {
		ss.update("class.updateClassList",scvo);
	}
	//class_list delete
		public void deleteclass_list(int sc_num) {
			ss.delete("class.deleteclass_list",sc_num);
		}
	
}
