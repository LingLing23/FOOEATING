package com.fooeating.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fooeating.commons.Action;
import com.fooeating.commons.ActionForward;
import com.fooeating.db.PublicDAO;

public class RestaurantInfoHeartAdd implements Action{

    @Override
    public ActionForward execute(HttpServletRequest request, 
            HttpServletResponse response) throws Exception {
    	
    	System.out.println(" M : IdCheckAction_execute 실행");
        
        // 인코딩
        request.setCharacterEncoding("UTF-8");
        
        // 아이디 저장
        String user_id = request.getParameter("user_id");
        String rest_id = request.getParameter("rest_id");
        
        PublicDAO dao = new PublicDAO();
        
        dao.userHeartAdd(user_id, rest_id);
        
        int heartNo = dao.getHeart(rest_id);
        
        response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(heartNo);
        
        return null;
        
    }
    
} 
