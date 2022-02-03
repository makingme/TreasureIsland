package com.happy.world.usage.apache.commons;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;

import com.google.gson.Gson;
import com.happy.world.utils.Out;
import com.happy.world.vo.company.CompanyVo;

public class ObjectUtilsUsage {
	
	public static void main(String[] args) {
		// 신규 VO가 빈 오브젝트인지 확인
		CompanyVo company =new CompanyVo();
		Out.print(ObjectUtils.isEmpty(company));
		
		// 신규 Map이 빈 오프젝트인지 확인
		Map<String, String> map =new HashMap<String, String>();
		Out.print(ObjectUtils.isEmpty(map));
		
	}
}
