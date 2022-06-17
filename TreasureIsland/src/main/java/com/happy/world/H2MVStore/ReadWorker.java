package com.happy.world.H2MVStore;



public class ReadWorker extends Thread{
	
	private final StroeManger manager;
	
	private boolean isRun = true;
	
	public ReadWorker(String name, StroeManger manager) {
		this.manager = manager;
		setName(name);
//		setDaemon(false);
	}

	@Override
	public void run() {
		while(isRun) {
			String data = manager.takeWork();
			if(data == null) {
				continue;
			}			
		}
		
	}
	

}
