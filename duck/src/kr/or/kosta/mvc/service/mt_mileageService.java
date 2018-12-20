package kr.or.kosta.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dto.ClassVO;
import dto.T_mileageVO;
import kr.or.kosta.mvc.dao.ClassDao;
import kr.or.kosta.mvc.dao.Mt_mileageDaoInter;

@Service
public class mt_mileageService {

	@Autowired
	private Mt_mileageDaoInter mtinter;
	
	@Autowired
	private ClassDao cdao;
	
	public void classMileage(ClassVO cvo, T_mileageVO tmvo) {
		
		cdao.createClass2(cvo);
			
		mtinter.t_mileageupdate(tmvo);
		
	}
}
