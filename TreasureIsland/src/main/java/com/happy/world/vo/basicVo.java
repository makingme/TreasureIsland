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
	
	
	
	@Override
	public String toString() {
		String msg= "RCSTemplateVo INFO\n";
		Field[] fields = this.getClass().getDeclaredFields();
		for(Field f : fields) {
			try {
				String value = f.get(this) == null?"": f.get(this)+"=\n";
				msg+=f.getName()+":"+f.get(value);
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
				return "";
			} catch (IllegalAccessException e) {
				e.printStackTrace();
				return "";
			}
		}
		return msg;
	}
}
