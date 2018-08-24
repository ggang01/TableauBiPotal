package com.dfocus.bi.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dfocus.bi.common.DTO;
import com.dfocus.bi.common.TableauTicket;
import com.dfocus.bi.service.UserSvc;
import com.dfocus.bi.vo.UserVo;



@Controller
public class LoginCtr {
	private Logger logger = Logger.getLogger(this.getClass());
	public final static String TABLEAU_SERVER = "bi.dfocus.net";
	String resultReason = "";
	@Autowired 
	UserSvc userSvc;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest req, Model model) {
		HttpSession session =req.getSession(true);
		String ticket = null;
		UserVo userVo=new UserVo();
		String userId=req.getParameter("userId");
		String userPwd=req.getParameter("userPwd");
		logger.info("id: "+userId);
		logger.info("pwd: "+userPwd);
		userVo.setUserId(userId);
		userVo.setUserPwd(userPwd);
		userVo=(UserVo) userSvc.do_selectOne(userVo);
		logger.info("로그인후id: "+userVo.getUserId());
		logger.info("로그인후pwd: "+userVo.getUserPwd());
		logger.info("로그인후pwd: "+userVo.getPm());
		try {
			ticket = TableauTicket.getTableauTicket(TABLEAU_SERVER, userId);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.info("!!!!!!!!!!!!!!!!!<" + ticket + ">!!!!!!!!!!!!!!!!!!");
		if(userVo.getCheck()==0) {
			model.addAttribute("message", "아이디와 비밀번호를 확인해 주세요." );
			return "home";
		}
		else if(ticket=="-1" || ticket==null ) {
			 model.addAttribute("message", "인증되지 않은 사용자입니다." );
			 return "home";
		}
		session.setAttribute("id", userVo.getUserId());
		model.addAttribute("userVo", userVo );
		model.addAttribute("ticket", ticket );
		return "common/main";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req){
		HttpSession session = req.getSession(false);
		if(session!=null) {
			session.invalidate();
		}
		logger.info("세선종료");
		
		return "home";
		
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(HttpServletRequest req){
		
		return "common/main";
		
	}
	@RequestMapping(value = "/CreateUser", method = RequestMethod.POST)
	public String createUser(HttpServletRequest req){
		String userId= req.getParameter("userId");
		String userPwd=req.getParameter("userPwd");
		String userEmail=req.getParameter("userEmail");
		String userNm=req.getParameter("userNm");
		String pm=req.getParameter("pm");
		logger.info(userId);
		return "admin/userMg";
		
	}

}
