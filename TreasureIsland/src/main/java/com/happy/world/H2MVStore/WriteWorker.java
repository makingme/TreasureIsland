package com.happy.world.H2MVStore;

public class WriteWorker extends Thread{
	
	private int maxCnt = 100000;
	
	private final StroeManger manager;
	
	public WriteWorker(String name, StroeManger manager) {
		this.manager = manager;
		setName(name);
//		setDaemon(false);
	}
	
	@Override
	public void run() {
		for(int i =1; i<=maxCnt; i++) {
//			try {
//				sleep(100);
//			} catch (InterruptedException e) {
//				e.printStackTrace();
//			}
			String data = getName()+"_"+i;
			manager.putWork(data);
			if(i%2 == 1 ) manager.removeWork(data);
		}
		System.out.println(getName()+" 입력 완료="+ System.currentTimeMillis());
	}

}
