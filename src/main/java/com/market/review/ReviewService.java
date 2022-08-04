package com.market.review;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;

	public void review_modify(String review_comment,int review_seq) throws Exception{
		reviewDAO.review_modify(review_comment,review_seq);
	}
	
	public void review_delete(int review_seq) throws Exception{
		reviewDAO.review_delete(review_seq);
	}
	
	
	public List<ReviewDTO> selectAll(int start,int end,String reviewed_id) throws Exception{
		return reviewDAO.selectAll(start,end,reviewed_id);
		
	}
	
	public HashMap<String,Object> getPageNavi(int curPage,String reviewed_id) throws Exception{
		int totalCnt = reviewDAO.getPageNavi(reviewed_id); //전체 게시글의 개수
		int recordCntPerPage=10; //한페이지에 몇개의 데이터(게시글)을 띄워줄지
		int naviCntPerPage=5; //네비바에 몇개 단위로 페이징을 구성할지
		int pageTotalCnt =0;// 총 몇 페이지가 나올지			
		if(totalCnt % recordCntPerPage >0) {
			pageTotalCnt =totalCnt/recordCntPerPage +1;
		}else {
			pageTotalCnt =totalCnt/ recordCntPerPage;
		}				
		if(curPage<1) {
			curPage=1;		
		}else if(curPage>pageTotalCnt) {

		}						
		int startNavi =((curPage-1)/naviCntPerPage)*naviCntPerPage+1;
		int endNavi =startNavi + naviCntPerPage -1;
	
		if(pageTotalCnt < endNavi) {
			endNavi =pageTotalCnt; 							
		}		
		boolean needPrev = true;	
		boolean needNext = true;
		if(startNavi==1) {
			needPrev =false;			
		}
		if(endNavi ==pageTotalCnt) {
			needNext =false;
		}
		HashMap<String,Object> map =new HashMap<>();
		map.put("startNavi",startNavi);
		map.put("endNavi", endNavi);
		map.put("needPrev", needPrev);
		map.put("needNext", needNext);		
		return map;
				
	}
	
	public void insert(ReviewDTO dto) throws Exception{
		reviewDAO.insert(dto);
	}
	
	//준철
		public int reviewCnt(String user_id) throws Exception {
			return reviewDAO.reviewCnt(user_id);
		}
}
