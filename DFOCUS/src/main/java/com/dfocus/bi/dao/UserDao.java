package com.dfocus.bi.dao;

import java.util.List;

import com.dfocus.bi.common.DTO;
import com.dfocus.bi.vo.UserVo;

public interface UserDao {
		// 유저 리스트 
		public List<?> do_search();
		
		// 단일 유저 정보 
		public UserVo do_searchOne(DTO dto);
		
		
		// 유저 등록
		public int do_insert(DTO dto);
		
		// 유저 업데이트
		public int do_update(DTO dto);
		
		// 유저 삭제
		public int do_delete(DTO dto);
}
