package com.dfocus.bi.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dfocus.bi.common.DTO;
import com.dfocus.bi.service.UserSvc;
import com.dfocus.bi.vo.UserVo;
@Controller
public class UserCtr {
	private Logger logger = Logger.getLogger(this.getClass());
	public final static String TABLEAU_SERVER = "bi.dfocus.net";
	@Autowired 
	UserSvc userSvc;
	@RequestMapping(value="/userList",method = RequestMethod.GET )
	public String getUserList(HttpServletRequest req
			,Model model) {
		ArrayList <UserVo> list=new ArrayList<>();
		list=(ArrayList<UserVo>) userSvc.do_search();
		model.addAttribute("list", list);
		return "admin/userMg";
	}
	@RequestMapping(value="/DeleteUser",method = RequestMethod.GET )
	public String deleteUser(HttpServletRequest req
			,Model model) {
		UserVo userVo=new UserVo();
		String userId=req.getParameter("userId");
		String pm=req.getParameter("pm");
		logger.info("삭제할 데이터"+userId+"   "+pm);
		userSvc.do_delete(userVo);
		ArrayList <UserVo> list=new ArrayList<>();
		list=(ArrayList<UserVo>) userSvc.do_search();
		model.addAttribute("list", list);
		return "admin/userMg";
	}
	
}
