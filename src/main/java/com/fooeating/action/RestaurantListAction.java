package com.fooeating.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fooeating.commons.Action;
import com.fooeating.commons.ActionForward;
import com.fooeating.db.PublicDAO;
import com.fooeating.db.RestaurantDTO;

public class RestaurantListAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" UserInfoListAction_execute() 호출");
		
		// 세션 제어
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("user_id");
		
		ActionForward forward = new ActionForward();
		if(user_id == null || !user_id.equals("real_admin")) {
			forward.setPath("./Main.foo");
			forward.setRedirect(true);
			return forward;
		}
		
		// 가게 정보 저장
		PublicDAO dao = new PublicDAO();


		// 페이징 처리 -----------------
		int count = dao.getRestaurantCount(); 		// 전체 가게 수
		System.out.println("가게 수 : " + count);
		
		int pageSize = 10;							// 한 페이지에 출력할 가게 수
		
		String pno = request.getParameter("pno");
		if(pno == null) {
			pno = "1";
		}				// 현재 페이지 정보 체크
		
		int currentPage = Integer.parseInt(pno);
		int startRow = (currentPage - 1) * pageSize + 1;	// 시작행 번호 계산
		int endRow = currentPage * pageSize;				// 끝행 번호 계산
		// 페이징 처리 -----------------
		
		List<RestaurantDTO> restList = dao.getRestaurantList(startRow, pageSize);
		
		request.setAttribute("restList", restList);
		request.setAttribute("count", count);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("pno", pno);
		

		// 연결된 view에 출력
		forward.setPath("./admin/restaurantList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
