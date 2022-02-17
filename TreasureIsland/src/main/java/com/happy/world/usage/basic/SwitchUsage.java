package com.happy.world.usage.basic;

public class SwitchUsage {
	public static void duplicateExecute() {
		int number = 1;
		String result ="";
		switch(number) {
		case 1:
			result += number; 
		case 2:
			result += number;
		case 3:
			result += number;
			
		default :
			result += "NULL";
			break;
		}
	}
	public static void main(String[] args) {
		
	}
}
