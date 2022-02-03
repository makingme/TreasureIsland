package com.happy.world.vo.extend;

import lombok.Data;

@Data
public class Student extends Person{
	
	public Student() {}
	
	public Student(String group, String grade) {
		this.group = group;
		this.grade = grade;
	}
	
	String group;
	String grade;
}
