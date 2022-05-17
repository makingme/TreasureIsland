package com.happy.world.classes;

public class InterfaceImplClass1 implements InterfaceClass{

	int x =0;
	
	
	public InterfaceImplClass1(Integer x) {
		this.x = x;
	}
	
	public void putData() {
		allotNumberHistory.put("1", "1");
	}


	@Override
	public int diff(int a, int b) {
		System.out.println(this.getClass().getName()+"수행");
		return a-b;
	}

}
