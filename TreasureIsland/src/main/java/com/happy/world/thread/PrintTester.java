package com.happy.world.thread;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class PrintTester extends Thread{
	static int count = 0;
	static int countb = 0;
	List<String> list = new ArrayList<String>();
	@Override
	public void run() {
		while(true) {
			try {
				sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			//System.out.println("list ="+list.size());
			//System.out.println("count ="+count);
		}
	}
	
	public synchronized void a() {
		//System.out.println("a call..");
//		list.add("1");
		count +=1;
		System.out.println("A - count"+count+", bcount"+countb);
	}
	
	public synchronized void b() {
		//System.out.println("b call..");
		//list.add("1");
		countb +=1;
		System.out.println("B - count"+count+", bcount"+countb);
	}
	
	public void startWorker() {
		for(int i =0; i<5; i++){
			new Acall(this).start();			
			new Bcall(this).start();			
		}
	}
	
	class Acall extends Thread{
		@Override
		public void run() {
//			while(true) {
//				t.a();
//				try {
//					sleep(100);
//				} catch (InterruptedException e) {
//					e.printStackTrace();
//				}
//			}
			for(int i =0; i<10; i++){
				t.a();
				t.b();
				try {
					sleep(100);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}
		
		final PrintTester t;
		public Acall(PrintTester t) {
			this.t = t;
		}
		
		
	}
	
	class Bcall extends Thread{
		@Override
		public void run() {
//			while(true) {
//				t.b();
//				try {
//					sleep(100);
//				} catch (InterruptedException e) {
//					e.printStackTrace();
//				}
//			}
			for(int i =0; i<10; i++){
				t.a();
				t.b();
				try {
					sleep(100);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}
		final PrintTester t;
		public Bcall(PrintTester t) {
			this.t = t;
		}
		
		
	}
	
	
	public static void main(String[] args) {
		PrintTester t = new PrintTester();
//		t.start();
//		t.startWorker();
		
		String path = "D:\\URACLE\\CHANNEL\\네이버톡\\MTS\\test.exe";
		System.out.println(path.substring(path.lastIndexOf(File.separator)+1));
		
	}

}
