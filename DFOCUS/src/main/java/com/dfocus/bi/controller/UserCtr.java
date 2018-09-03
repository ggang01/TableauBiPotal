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
		logger.info("UserCtr.getUserList Start>>>>>>>>>>>>>>>>>>>>>");
		ArrayList <UserVo> list=new ArrayList<>();
		list=(ArrayList<UserVo>) userSvc.do_search();
		model.addAttribute("list", list);
		logger.info("UserCtr.getUserList End>>>>>>>>>>>>>>>>>>>>>");
		return "admin/userMg";
	}
	@RequestMapping(value="/deleteUser",method = RequestMethod.GET )
	public String deleteUser(HttpServletRequest req
			,Model model) {
		UserVo userVo=new UserVo();
		String userId=req.getParameter("userId");
		logger.info("삭제할 데이터"+userId);
		userVo.setUserId(userId);
		userSvc.do_delete(userVo);
		ArrayList <UserVo> list=new ArrayList<>();
		list=(ArrayList<UserVo>) userSvc.do_search();
		model.addAttribute("list", list);
		return "redirect:userList";
	}
	@RequestMapping(value = "/insertUser", method = RequestMethod.POST)
	public String createUser(HttpServletRequest req,Model model,UserVo uservo){
		logger.info(uservo.getUserNm());
		userSvc.do_insert(uservo);
		return "redirect:userList";
		
	}
	@RequestMapping("/updateUser")
	public String updateUser(HttpServletRequest req,Model model,UserVo uservo){
		String userId=req.getParameter("userId");
		String pm=req.getParameter("pm");
		UserVo userVo=new UserVo();
		userVo.setUserId(userId);
		userVo.setPm(Integer.parseInt(pm));
		userSvc.do_update(userVo);
		
		return "redirect:userList";
		
	}
	
}
