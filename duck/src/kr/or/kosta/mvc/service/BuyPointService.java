package kr.or.kosta.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dto.S_mileageVO;
import dto.Sc_listVO;
import dto.Study_listVO;
import kr.or.kosta.mvc.dao.ClassDao;
import kr.or.kosta.mvc.dao.Ms_mileageDAO;
import kr.or.kosta.mvc.dao.StudyDAOInter;

@Transactional(rollbackFor=Exception.class,readOnly=true)
@Service
public class BuyPointService {
	
	@Autowired
	private ClassDao cDao;
	
	@Autowired
	private StudyDAOInter sDao;
	
	@Autowired
	private Ms_mileageDAO msDao;
	
	// ��ٱ��Ͽ��� ���±���
	public boolean classBuyPoint(int sc_num,int sc_buy,int c_price,int my_point,String ms_id) throws Exception{
		System.out.println("Ŭ���� ���� ���񽺴� �Լ�");
		boolean gourl=false;
		if(my_point >= c_price) {
			S_mileageVO smvo = new S_mileageVO();
			smvo.setMs_id(ms_id);
			smvo.setMath_point(c_price);
			msDao.s_classBuyUpdate(smvo);
			
			Sc_listVO scvo = new Sc_listVO();
			scvo.setSc_num(sc_num);
			scvo.setSc_buy(sc_buy);
			cDao.updateClassList(scvo);
			gourl=true;
		}else {
			gourl=false;
			System.out.println("�ʴ� ���� ���� �ȳ�~~~~~~~����~~~~~~``");
		}		
		System.out.println("Service gourl : "+gourl);
		return gourl;
	}
	
	// ��ٱ��Ͽ��� ���͵� ����
	public void studyBuyPoint(int sl_num,int sl_buy,int s_price,int my_point,String ms_id) throws Exception{
		System.out.println("���͵� ���� ���񽺴� �Լ�");
		
		if(my_point >= s_price) {
			S_mileageVO smvo = new S_mileageVO();
			smvo.setMs_id(ms_id);
			smvo.setMath_point(s_price);
			msDao.s_classBuyUpdate(smvo);
			
			Study_listVO slvo = new Study_listVO();
			slvo.setSl_num(sl_num);
			slvo.setSl_buy(sl_buy);
			sDao.updateStudyList(slvo);
		}else {
			System.out.println("�� ���� ��� ���͵� �������� ����");
		}
	}
	
	public void classOnebuyPoint(String ms_id,int my_point,int sc_buy,String c_title,int c_price) {
		System.out.println("�󼼿��� ���� �Ը� ���񽺴� �Լ�");
		
		if(my_point >= c_price) {
			S_mileageVO smvo = new S_mileageVO();
			smvo.setMs_id(ms_id);
			smvo.setMath_point(c_price);
			msDao.s_classBuyUpdate(smvo);
			
			Sc_listVO scvo = new Sc_listVO();
			scvo.setC_title(c_title);
			scvo.setMs_id(ms_id);
			scvo.setSc_buy(sc_buy);
			cDao.insertClassList(scvo);
		}else {
			System.out.println("�� ���� ��� ���¸� ������ ����!!!!!!!!!!");
		}
	}

}
