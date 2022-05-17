package com.happy.world.classes;

public class InterfaceImplClass2 implements InterfaceClass{

	int x =0;
	
	
	public InterfaceImplClass2(Integer x) {
		this.x = x;
	}

	public void putData() {
		allotNumberHistory.put("2", "2");
	}

	@Override
	public int diff(int a, int b) {
		System.out.println(this.getClass().getName()+"수행");
		return a-b;
	}

}
