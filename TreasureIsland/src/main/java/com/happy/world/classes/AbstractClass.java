package com.happy.world.classes;

import com.happy.world.utils.Out;

public abstract class AbstractClass {
	public void printX() {
		Out.print(this.getClass().getName());
	}
	
	public int sum(int a, int b) {
		return a+b;
	}
	
	abstract protected int diff(int a, int b);
}
