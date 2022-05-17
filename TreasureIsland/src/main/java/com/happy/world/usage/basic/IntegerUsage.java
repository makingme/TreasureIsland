package com.happy.world.usage.basic;

import com.happy.world.utils.Out;

public class IntegerUsage {
	public static void devide() {
		int num1 = 1000;
		int num2 = 1243;
		int num3 = 3;
		int num4 = 0;
		int numerator = 5;
		int numerator1 = 0;
		Out.print(num1/numerator);
		Out.print(num2/numerator);
		Out.print(num3/numerator);
		Out.print(num4/numerator);
		System.out.println(System.currentTimeMillis()/1000000);
	}
	public static void main(String[] args) {
		IntegerUsage.devide();
	}
}
