package com.happy.world.usage.basic;

import com.happy.world.classes.InterfaceImplClass1;
import com.happy.world.classes.InterfaceImplClass2;
import com.happy.world.utils.Out;

public class InterfaceUsage {
	public static void sharedResource() {
		InterfaceImplClass1 a = new InterfaceImplClass1(1);
		a.putData();
		InterfaceImplClass2 b = new InterfaceImplClass2(2);
		b.putData();
		Out.print(a.allotNumberHistory.size());
		Out.print(b.allotNumberHistory.size());
	
	}
	
	public static void main(String[] args) {
		InterfaceUsage.sharedResource();
	}
}
