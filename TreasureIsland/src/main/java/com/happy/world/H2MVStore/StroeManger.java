package com.happy.world.H2MVStore;

import java.util.ArrayList;
import java.util.List;

import org.h2.mvstore.MVMap;
import org.h2.mvstore.MVStore;



public class StroeManger extends Thread{
	
	List<String> memoryDb = new ArrayList<String>();
	
	String fileName = "D:\\TEST\\sample_test\\h2.fileq";
	
	boolean isRun =true;
	
	long startReaderTime =0;
	
	int takeCnt =0;
	
	MVStore s = null;
	
	public StroeManger() {	
		
	}
	public void init() {
		s = MVStore.open(fileName);
	}
	
	
	public synchronized void removeWork(String data) {
		try {
			
			if(memoryDb.remove(data)) {
				MVMap<String, String> map = s.openMap("data");
				map.remove(data);				
			}
		}catch(Exception e) {
			try {
				wait();
			} catch (InterruptedException e1) {
				e1.printStackTrace();
			}
			
		}
		notifyAll();
	}
	
	
	public synchronized void putWork(String data) {
		try {
			
			MVMap<String, String> map = s.openMap("data");
			map.put(data, data);
			memoryDb.add(data);
			
		}catch(Exception e) {
			try {
				wait();
			} catch (InterruptedException e1) {
				e1.printStackTrace();
			}
			
		}
		notifyAll();
	}
	
	public synchronized String takeWork() {
		String data = null;
		if(memoryDb.size() <= 0) {
			try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}

		try {
			
			MVMap<String, String> map = s.openMap("data");
			data = memoryDb.remove(0);
			//map.remove(data);
			
			takeCnt +=1;
			if(takeCnt%10000 ==0)System.out.println("처리 갯수 "+takeCnt+", 총 소요시간:"+(System.currentTimeMillis()));
			
		}catch(Exception e) {
			try {
				wait();
			} catch (InterruptedException e1) {
				e1.printStackTrace();
			}
		}
		notifyAll();
		return data;
	}
		
	@Override
	public void run() {
		System.out.println("Shut Down");
		if(s!=null)s.close();
	}
	
	private void startWriter() {
		System.out.println("Writer Start Time :"+System.currentTimeMillis());
		for(int i=1; i<=10; i++) {
			new WriteWorker("W"+i, this).start();
		}
	}
	
	private void startReader() {
		startReaderTime =System.currentTimeMillis();
		System.out.println("Reader Start Time :"+startReaderTime);
		for(int i=1; i<=10; i++) {
			new ReadWorker("R"+i, this).start();
		}
	}
	public static void main(String[] args) {
		try {
			Thread.sleep(1000);
			System.out.println("시작");
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
		}
		StroeManger m = new StroeManger();
		Runtime.getRuntime().addShutdownHook(m);
		m.init();
		m.startWriter();
		//m.startReader();
		
	}
}
