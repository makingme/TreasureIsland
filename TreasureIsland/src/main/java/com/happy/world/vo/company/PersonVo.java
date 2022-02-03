package com.happy.world.vo.company;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class PersonVo {
	private String name;
	private String age;
	private Date birthDay;
	private String address;
	private List<String> contactNumber;
	private CompanyVo company;
	private DepartmentVo department;
	
}
