package com.happy.world.vo.extend;

import lombok.Data;

@Data
public class Person {
	
	public Person() {}
	public Person(String name, String age) {
		this.name = name;
		this.age = age;
	}
	String name;
	String age;
}
