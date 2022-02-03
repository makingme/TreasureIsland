package com.happy.world.vo.company;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CompanyVo {
	private String name;
	private Date foundationDay;
	private String address;
	private String mainNumber;
	private List<DepartmentVo> departments;
	private List<PersonVo> members;
}

