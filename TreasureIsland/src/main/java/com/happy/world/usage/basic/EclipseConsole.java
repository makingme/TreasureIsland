package com.happy.world.usage.basic;

public class EclipseConsole {
	public static void main(String[] args) throws InterruptedException {
		String dummy = "12345";
		System.out.print(dummy);
		System.out.print("\b");
		System.out.printf("%s","6");
		System.out.print("\b\b");
		System.out.printf("%s","66");
		
		System.out.print("\b\b\b\b\b\b");
		for(int i=1; i<=100;i++) {
			System.out.printf("%s",i+"%   ");
			System.out.print("\b\b\b\b\b\b\b");
			Thread.sleep(50);
		}
//		System.out.print(dummy);
//		System.out.print("\b\b");
//		System.out.printf("%s","10%");
//		for(int i=10; i<=100;i++) {
//			Thread.sleep(500);
//			
//			System.out.print("\b\b\b");
//			System.out.printf("%s",i);
//			
//		}
			
		
;		
//		for(int i=0; i<1000; i++) {
//			System.out.print("[- ]");
//			Thread.sleep(30);
//			System.out.print("\b\b");
//			System.out.printf("%s"," -]");
//			Thread.sleep(30);
//		}
	}
}
