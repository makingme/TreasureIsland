package com.happy.world.vo.company;

import java.util.List;

import lombok.Data;

@Data
public class DepartmentVo {
	private String name;
	private String address;
	private List<String> contactNumber;
	private List<PersonVo> members;
}
