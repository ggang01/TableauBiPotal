package com.dfocus.bi.common;

public class PmToString {
	public static String conv(int pm) {
		String pm_name = "";
		switch(pm){
		case 1: pm_name= "뷰어";
		case 2: pm_name= "인터랙터";
		case 3: pm_name= "관리자";
		}
		return pm_name;
	}
}
