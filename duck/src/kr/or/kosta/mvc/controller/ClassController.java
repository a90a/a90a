package kr.or.kosta.mvc.controller;


import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dto.C1_reviewVO;
import dto.ClassVO;
import dto.S_mileageVO;
import dto.Sc_listVO;
import dto.Tc_listVO;
import kr.or.kosta.mvc.dao.C1_ReviewDao;
import kr.or.kosta.mvc.dao.ClassDao;
import kr.or.kosta.mvc.dao.Ms_mileageDAO;
import kr.or.kosta.mvc.service.BuyPointService;


@Controller
public class ClassController {
	
	// DAO ����
	@Autowired
	private ClassDao classdao;
	@Autowired
	private C1_ReviewDao c1dao;
	@Autowired
	private Ms_mileageDAO msDao;
	@Autowired
	private BuyPointService bps;
	
	@RequestMapping(value="createclass")
	public String movecreateclass() {
		return "class_Form";
	}
	
	@RequestMapping(value="classcreate")
	public String createclassOpenAop(ClassVO vo,@RequestParam String mt_id) {
		System.out.println("���̵� : "+mt_id);
		classdao.createClass2(vo);
		return "redirect:/showclasslist?page=1";
	}
	
	@RequestMapping(value="/showclasslist",method=RequestMethod.GET)
	public ModelAndView list(int page, String searchType, String searchValue) {
		dto.PageVO pageInfo = new dto.PageVO();
		int rowsPerPage = 5; // �� �������� ������ ��� �� 
		int pagesPerBlock = 5; // �� ��ϴ� ������ ������ ��
	
		int currentPage = page;
		int currentBlock = 0;
		if(currentPage % pagesPerBlock == 0) {
			currentBlock = currentPage / pagesPerBlock;
		} else {
			currentBlock = currentPage / pagesPerBlock + 1;
		}
		int startRow = (currentPage - 1) * rowsPerPage + 1;
		int endRow = currentPage * rowsPerPage;
		dto.SearchVO svo = new dto.SearchVO();
		svo.setBegin(String.valueOf(startRow));
		svo.setEnd(String.valueOf(endRow));
		svo.setSearchType(searchType);
		svo.setSearchValue(searchValue);
		// ��ü ���ڵ� ��
		int totalRows = classdao.getTotalCount(svo);
		System.out.println("totalRows: "+totalRows);
		int totalPages = 0;
		// ��ü �������� ���ϴ� ����
		if(totalRows % rowsPerPage == 0) {
			totalPages = totalRows / rowsPerPage;
		} else {
			totalPages = totalRows / rowsPerPage + 1;
		}
		// ��ü ����� ���ϴ� ����
		int totalBlocks = 0;
		if(totalPages % pagesPerBlock == 0) {
			totalBlocks = totalPages / pagesPerBlock;
		} else {
			totalBlocks = totalPages / pagesPerBlock + 1;
		}
		// PageVo�� setter�� ���� ����
		pageInfo.setCurrentPage(currentPage);
		pageInfo.setCurrentBlock(currentBlock);
		pageInfo.setRowsPerPage(rowsPerPage);
		pageInfo.setPagesPerBlock(pagesPerBlock);
		pageInfo.setStartRow(startRow);
		pageInfo.setEndRow(endRow);
		pageInfo.setTotalRows(totalRows);
		pageInfo.setTotalPages(totalPages);
		pageInfo.setTotalBlocks(totalBlocks);
		
		// ---------------------------------------
		ModelAndView mav = new ModelAndView();
		mav.setViewName("class_list");
//		mav.setViewName("index");
		// Map�� Dao�� ����
		List<ClassVO> list = classdao.readClass2(svo);
		
		mav.addObject("pageInfo",pageInfo);
		mav.addObject("searchType",searchType);
		mav.addObject("searchValue",searchValue);
		mav.addObject("list",list); 	// ���⿡ ��Ƽ� ����
		return mav;
	}
	
	@RequestMapping(value="selectoneclass",method=RequestMethod.GET)
	public String selectoneclass(int num,HttpServletRequest req, HttpServletResponse resp) {
		ClassVO cvo = classdao.readoneClass(num);
		List<C1_reviewVO> c1list = c1dao.readC1_Review(num);
		req.setAttribute("cvo", cvo);
		req.setAttribute("c1list", c1list);
		return "class_listOne";
	}
	
	@RequestMapping(value="updateview",method=RequestMethod.GET)
	public String updateview(int num,HttpServletRequest req, HttpServletResponse resp) {
		ClassVO cvo = classdao.readoneClass(num);
		req.setAttribute("cvo", cvo);
		return "class_update_Form"; //������ �̵� Ȱ���ϱ�
	}
	
	@RequestMapping(value="updateclass")
	public String updateoneclass(HttpServletRequest req, HttpServletResponse resp,ClassVO vo) {
		int num = Integer.parseInt(req.getParameter("c_num"));
		System.out.println("����: "+num);		
		classdao.updateClass2(vo);
		ClassVO cvo = classdao.readoneClass(num);
		req.setAttribute("cvo", cvo);
		return "class_listOne";
	}
	
	@RequestMapping(value="deleteclass",method=RequestMethod.GET)
	public ModelAndView deleteclass(int num,HttpServletRequest req, HttpServletResponse resp,
			int page, String searchType, String searchValue) {
		classdao.deleteClass(num);
		dto.PageVO pageInfo = new dto.PageVO();
		int rowsPerPage = 5; // �� �������� ������ ��� �� 
		int pagesPerBlock = 5; // �� ��ϴ� ������ ������ ��
	
		int currentPage = page;
		int currentBlock = 0;
		if(currentPage % pagesPerBlock == 0) {
			currentBlock = currentPage / pagesPerBlock;
		} else {
			currentBlock = currentPage / pagesPerBlock + 1;
		}
		int startRow = (currentPage - 1) * rowsPerPage + 1;
		int endRow = currentPage * rowsPerPage;
		dto.SearchVO svo = new dto.SearchVO();
		svo.setBegin(String.valueOf(startRow));
		svo.setEnd(String.valueOf(endRow));
		svo.setSearchType(searchType);
		svo.setSearchValue(searchValue);
		// ��ü ���ڵ� ��
		int totalRows = classdao.getTotalCount(svo);
		System.out.println("totalRows: "+totalRows);
		int totalPages = 0;
		// ��ü �������� ���ϴ� ����
		if(totalRows % rowsPerPage == 0) {
			totalPages = totalRows / rowsPerPage;
		} else {
			totalPages = totalRows / rowsPerPage + 1;
		}
		// ��ü ����� ���ϴ� ����
		int totalBlocks = 0;
		if(totalPages % pagesPerBlock == 0) {
			totalBlocks = totalPages / pagesPerBlock;
		} else {
			totalBlocks = totalPages / pagesPerBlock + 1;
		}
		// PageVo�� setter�� ���� ����
		pageInfo.setCurrentPage(currentPage);
		pageInfo.setCurrentBlock(currentBlock);
		pageInfo.setRowsPerPage(rowsPerPage);
		pageInfo.setPagesPerBlock(pagesPerBlock);
		pageInfo.setStartRow(startRow);
		pageInfo.setEndRow(endRow);
		pageInfo.setTotalRows(totalRows);
		pageInfo.setTotalPages(totalPages);
		pageInfo.setTotalBlocks(totalBlocks);
		
		// ---------------------------------------
		ModelAndView mav = new ModelAndView();
		mav.setViewName("class_list");
//		mav.setViewName("index");
		// Map�� Dao�� ����
		List<ClassVO> list = classdao.readClass2(svo);
		
		mav.addObject("pageInfo",pageInfo);
		mav.addObject("searchType",searchType);
		mav.addObject("searchValue",searchValue);
		mav.addObject("list",list); 	// ���⿡ ��Ƽ� ����
		return mav;
	}
	
	//class List insert
	@RequestMapping(value="insertClassList")
	public String insertClassList(HttpServletRequest req,HttpSession session,int buynum,String title,int price) {
		System.out.println("��Ʈ�� ��");
		// �������� id�� �ޱ�
		String ms_id = (String) session.getAttribute("ms_id");
		// ������Ʈ �˾ƿ���
		S_mileageVO getsmvo = msDao.selectOneS_mileage(ms_id);
		int my_point = getsmvo.getSm_point(); 
		
		// �����Ϸ��� ���� ����,�̸�,list�� �б���� �˾ƿ���
		int c_price = Integer.parseInt(req.getParameter("price"));
		String c_title = (String) req.getParameter("title");
		int sc_buy = Integer.parseInt(req.getParameter("buynum"));
		
		bps.classOnebuyPoint(ms_id, my_point, sc_buy, c_title, c_price);
		System.out.println("��Ʈ�� ����");
		return "redirect:/";
	}
	
	//class List update
	@RequestMapping(value="updateClass_list")
	public String updateClass_List(HttpSession session,HttpServletRequest req, int num,int buynum,int price) throws Exception {
		// �������� id�� �ޱ�
		String ms_id = (String) session.getAttribute("ms_id");
		System.out.println(ms_id+"ID");
		// ������Ʈ �˾ƿ���
		S_mileageVO getsmvo = msDao.selectOneS_mileage(ms_id);
		
		int my_point = getsmvo.getSm_point(); 
		
		// �����Ϸ��� ���� ����,list�� ��ȣ,�б���� �˾ƿ���
		int c_price = Integer.parseInt(req.getParameter("price")); 
		int sc_num = Integer.parseInt(req.getParameter("num")); 
		int sc_buy = Integer.parseInt(req.getParameter("buynum")); 
		
		boolean gourl = bps.classBuyPoint(sc_num,sc_buy,c_price,my_point,ms_id);
		System.out.println("Controller gourl : "+gourl);
		String gourlString="";
		if(gourl == true) {
			System.out.println(getsmvo.getSm_point()+" : ���� �ܾ� Point");
			gourlString += "redirect:/";
		}else if(gourl == false){
			System.out.println(getsmvo.getSm_point()+" : ���� �ܾ� Point");
			gourlString += "error_point";
		}
		return gourlString;
		
	}
	
	//class List delete
	@RequestMapping(value="deleteClass_list")
	public String deleteClass_List(HttpServletRequest req,int num) {
		System.out.println("����Ʈ���� ������������");
		int sc_num = Integer.parseInt(req.getParameter("num"));
		classdao.deleteclass_list(sc_num);
		return "redirect:/";
	}
	
	
	
	@RequestMapping(value="createc1_review")
	public String createc1_review(HttpServletRequest req, HttpServletResponse resp,C1_reviewVO c1vo) {
		resp.setContentType("text/html;charset=euc-kr");
		int c_num = Integer.parseInt(req.getParameter("c_num"));
		c1vo.setC1_num(c_num);	
		c1dao.createreview(c1vo);
		ClassVO cvo = classdao.readoneClass(c_num);
		List<C1_reviewVO> c1list = c1dao.readC1_Review(c_num);
		req.setAttribute("cvo", cvo);
		req.setAttribute("c1list", c1list);
		return "class_listOne";
	}
	
	@RequestMapping(value="updatec1_review")
	public String updatec1_review(int c1_num,int c_num, String c1_reply, int c1_stars,
			HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
		resp.setContentType("text/html;charset=euc-kr");
		req.setCharacterEncoding("euc-kr");
//		System.out.println("�Ķ���Ͱ� Ȯ��: "+c1_reply+
//				"����: "+c1_stars);
		C1_reviewVO c1vo = new C1_reviewVO();
		c1vo.setC1_num(c1_num);
		c1vo.setC_num(c_num);
		c1vo.setC1_reply(c1_reply);
		c1vo.setC1_stars(c1_stars);
		c1dao.updateview(c1vo);
		ClassVO cvo = classdao.readoneClass(c_num);
		List<C1_reviewVO> c1list = c1dao.readC1_Review(c_num);
		req.setAttribute("cvo", cvo);
		req.setAttribute("c1list", c1list);
		return "class_listOne";
	}
	
	@RequestMapping(value="deletec1_review")
	public String deletec1_review(int c1_num,int c_num,HttpServletRequest req, HttpServletResponse resp) {
		c1dao.deletereview(c1_num);
		ClassVO cvo = classdao.readoneClass(c_num);
		List<C1_reviewVO> c1list = c1dao.readC1_Review(c_num);
		req.setAttribute("cvo", cvo);
		req.setAttribute("c1list", c1list);
		return "class_listOne";
	}
	
}
