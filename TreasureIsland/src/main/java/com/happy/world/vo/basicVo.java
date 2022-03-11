package com.happy.world.vo;

import java.lang.reflect.Field;

public class basicVo {
	
	
	public basicVo(String name, String age) {
		this.name = name;
		this.age = age;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getAge() {
		return age;
	}



	public void setAge(String age) {
		this.age = age;
	}



	private String name;
	
	private String age;
		
}
