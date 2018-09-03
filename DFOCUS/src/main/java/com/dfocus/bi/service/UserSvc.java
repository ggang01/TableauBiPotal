package com.dfocus.bi.service;

import java.util.List;

import com.dfocus.bi.common.DTO;

public interface UserSvc {
	public int do_insert(DTO dto); /** �궫�엯*/
	
	public List<?> do_search(); /** 寃��깋*/
	
	public int do_delete(DTO dto);/** �궘�젣*/
	
	public int do_update(DTO dto);/** �닔�젙*/
	public DTO do_selectOne(DTO dto);/** �닔�젙*/
}
