package com.happy.world.usage.basic;

import com.happy.world.classes.AbstractClass;
import com.happy.world.utils.Out;

public class AbstractUsage {
	public static void create() {
		AbstractClass ab = new AbstractClass() {
			
			@Override
			protected int diff(int a, int b) {
				// TODO Auto-generated method stub
				return 0;
			}
		};
		ab.printX();
		Out.cutLine();
	}
	public static void main(String[] args) {
		AbstractUsage.create();
	}
}
