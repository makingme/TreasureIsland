package com.happy.world.H2MVStore;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.h2.mvstore.MVMap;
import org.h2.mvstore.MVStore;

public class MemoryCheck extends Thread{
	boolean isRun =true;
	@Override
	public void run() {
		int MB = 1024*1024;
		Runtime runtime = Runtime.getRuntime();
		System.out.println("Init Used Memory:"  + (runtime.totalMemory() - runtime.freeMemory()) / MB);
		System.out.println("Thread Start!!");
		String fileName = "D:\\TEST\\sample_test\\h2.fileq";
		
		List<Integer> keyList = new ArrayList<Integer>();
		Path p = Paths.get(fileName);
		if(Files.exists(p) == false)
			try {
				Files.createFile(p);
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		System.out.println("STORE OPEN TRY"+System.currentTimeMillis());
		MVStore s = new MVStore.Builder().
    		    fileName(fileName).
    		    encryptionKey("URACLE".toCharArray()).
    		    autoCommitDisabled().
    		    compress().
    		    open();
		System.out.println("STORE OPENED"+System.currentTimeMillis());
		MVMap<Integer, String> map = s.openMap("sample");
		System.out.println("MAP OPENED"+System.currentTimeMillis());
		System.out.println(map.size());
		System.out.println("MAP SIZE GET"+System.currentTimeMillis());
//		map.clear();
//		s.commit();
//		System.out.println("Store Open Used Memory:"  + (runtime.totalMemory() - runtime.freeMemory()) / MB);
//		String data ="";
//		for(int i=0; i<400; i++) {
//			data +="12345678890";
//		}
//		System.out.println("DATA SIZE:" + data.getBytes().length + "byte");
//		int loopCnt = 1;
//		long startTime = System.currentTimeMillis();
//		while(isRun) {
//			if(loopCnt > 1000000) break;
//			if(loopCnt%100000 ==0) System.out.println(loopCnt+"th Used Memory:"  + (runtime.totalMemory() - runtime.freeMemory()) / MB);
//			//map = s.openMap("sample");
//			map.put(loopCnt, data);
//			s.commit();
//			keyList.add(loopCnt);
//			loopCnt+=1;
//		}
//		System.out.println("Final Used Memory:"  + (runtime.totalMemory() - runtime.freeMemory()) / MB);
//		System.out.println("소요시간:"+(System.currentTimeMillis() -startTime));
//		System.out.println("Thread End");
	}
	
	
	public static void main(String[] args) {
		MemoryCheck c = new MemoryCheck();
		c.start();
	}
}
