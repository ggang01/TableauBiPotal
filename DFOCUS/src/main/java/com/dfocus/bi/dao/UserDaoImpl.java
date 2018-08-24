package com.dfocus.bi.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dfocus.bi.common.DTO;
import com.dfocus.bi.common.PmToString;
import com.dfocus.bi.vo.UserVo;

@Repository
public class UserDaoImpl implements UserDao {
	Logger log = Logger.getLogger(this.getClass());

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// myBatis.xml 경로
	private final String namespace = "com.dfocus.bi.mappers.user";
	
	
	@Override
	public List<?> do_search() {
		String statement = this.namespace+".do_ListSearch";
		return this.sqlSessionTemplate.selectList(statement);
	}


	@Override
	public UserVo do_searchOne(DTO dto) {
		// TODO Auto-generated method stub
		String statement = this.namespace+".do_logincheck";
		UserVo inVo = (UserVo)dto;
		UserVo pan  = (UserVo)dto;
		int check=this.sqlSessionTemplate.selectOne(statement, inVo);
		//로그인시 아이디와 비밀번호를 체크해서 count가 1이라면 사용자정보를 가져오고 아니라면 check에 0을 넣어서 전송. 
		if(check==1) {
			statement = this.namespace+".do_login";
			pan = this.sqlSessionTemplate.selectOne(statement, inVo);
			pan.setCheck(check);
		}
		else {
			pan.setCheck(check);
		}
		
		return pan;
	}

	@Override
	public int do_insert(DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int do_update(DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int do_delete(DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
