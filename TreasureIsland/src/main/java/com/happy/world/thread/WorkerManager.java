package com.happy.world.thread;

import java.util.ArrayList;
import java.util.List;

import com.happy.world.component.AllotterManager;

public class WorkerManager {
	
	private AllotterManager allotterManager = new AllotterManager();;
	
	List<Worker> workers = new ArrayList<Worker>(5);
	static final int THREAD_CNT =5;
	
	public void startWork() {
		for(int i =0; i<THREAD_CNT; i++ ) {
			Worker w = new Worker(i+"-Thread", this);
			w.start();
			workers.add(w);
			try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
	public String getProvider(String channel, String identify) {
		return allotterManager.getProvider(channel, identify);
	}
	
	public long getTotalCnt() {
		return allotterManager.getTotalCnt(null);
	}
	
}
