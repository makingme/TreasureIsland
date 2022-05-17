package com.happy.world.thread;

public class Worker extends Thread{
	
	private final WorkerManager manager;
	public Worker(String threadName, WorkerManager allotterManager) { 
		this.setName(threadName);
		this.manager = allotterManager;
	}

	@Override
	public void run() {
		for(int i =1; i<=10000; i++) {
			String number = "0100000"+String.format("%04d", i);
			String provider = manager.getProvider("SMS", number);
			//System.out.println("["+this.getName()+"]\t"+number+"\t"+provider);
			try {
				//sleep(10);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		System.out.println("["+this.getName()+"]\t"+ manager.getTotalCnt());
		
	}
	
}
