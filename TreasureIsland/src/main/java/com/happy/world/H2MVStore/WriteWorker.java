package com.happy.world.H2MVStore;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.h2.mvstore.MVMap;
import org.h2.mvstore.MVStore;

public class WriteWorker extends Thread{
	
	private int maxCnt = 10000;
	
	private final StroeManger manager;
	
	public WriteWorker(String name, StroeManger manager) {
		this.manager = manager;
		setName(name);
//		setDaemon(false);
	}
	
	@Override
	public void run() {
		for(int i =1; i<=maxCnt; i++) {
			try {
				sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			String data = getName()+"_"+i;
			manager.putWork(data);
			//if(i%2 == 1 ) manager.removeWork(data);
		}
		System.out.println(getName()+" 입력 완료="+ System.currentTimeMillis());
	}
	
	public static void main(String[] args) throws Exception {
		System.out.println("시작");
		String fileName = "D:\\TEST\\sample_test\\h2.fileq";
		
		Path p = Paths.get(fileName);
		if(Files.exists(p) == false) Files.createFile(p);
		System.out.println("파일 생성:"+Files.size(p));
		MVStore s = MVStore.open(fileName);
		System.out.println("오픈 생성:"+Files.size(p));
		MVMap<String, String> map = s.openMap("sample");
		System.out.println("데이터 오픈:"+Files.size(p));
		System.out.println("오픈 완료");
		Thread.sleep(10000);
		String data = "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890";
		map.put("1", data);
		System.out.println("입력:"+Files.size(p));
		System.out.println("입력 완료");
		Thread.sleep(30000);
		System.out.println("종료");
	}

}
