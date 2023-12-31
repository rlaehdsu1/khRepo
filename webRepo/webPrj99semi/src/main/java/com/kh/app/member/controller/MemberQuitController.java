package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@WebServlet("/member/quit")
public class MemberQuitController extends HttpServlet {
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			//데꺼
			HttpSession session = req.getSession();
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//데뭉
			
			//서비스
			MemberService ms = new MemberService();
			int result = ms.quit(no);
			
			//화면
			if(result == 1) {
				session.invalidate();
				req.getSession().setAttribute("alertMsg", "회원탈퇴 성공 ...");
				resp.sendRedirect(req.getContextPath() + "/home");
			}else {
				throw new Exception();
			}
			
		}catch(Exception e) {
			System.out.println("[ERROR] quit errr....");
			e.printStackTrace();
			
			req.setAttribute("errorMsg", "member quit fail ...");
			req.getRequestDispatcher("/WEB-INF/views/common/error-page.jsp").forward(req, resp);
		}
		
	}

}//class




















