package com.dfocus.bi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dfocus.bi.common.DTO;
import com.dfocus.bi.dao.UserDao;

@Service
public class UserSvcImpl implements UserSvc {
	@Autowired
	private UserDao userDao;
	@Override
	public int do_insert(DTO dto) {
		// TODO Auto-generated method stub
		return userDao.do_insert(dto);
	}

	@Override
	public List<?> do_search() {
		// TODO Auto-generated method stub
		return userDao.do_search();
	}

	@Override
	public int do_delete(DTO dto) {
		// TODO Auto-generated method stub
		return userDao.do_delete(dto);
	}

	@Override
	public int do_update(DTO dto) {
		// TODO Auto-generated method stub
		return userDao.do_update(dto);
	}

	@Override
	public DTO do_selectOne(DTO dto) {
		// TODO Auto-generated method stub
		return userDao.do_searchOne(dto);
	}

}
