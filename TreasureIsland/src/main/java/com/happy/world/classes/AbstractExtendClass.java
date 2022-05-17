package com.happy.world.classes;


import lombok.Data;

@Data
public class AbstractExtendClass extends AbstractClass{

	int test =0;
	
	
	@Override
	protected int diff(int a, int b) {
		System.out.println(this.getClass().getName()+"수행");
		return a-b;
	}

	public int getT() {
		return test;
	}
	
	public AbstractExtendClass() {}
	public AbstractExtendClass(int test) { 
		
		this.test = test; 
		
	}

}
