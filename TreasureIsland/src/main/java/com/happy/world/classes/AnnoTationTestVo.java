package com.happy.world.classes;

public class AnnoTationTestVo {
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@FieldStandard(required = true, MAX = 10, MIN = 5)
	String name;
	
	public static void main(String[] args) {
		AnnoTationTestVo vo = new AnnoTationTestVo();
		System.out.println("============");
		AnnoTationValidation.validationVoClass(vo);
	}
	
}
