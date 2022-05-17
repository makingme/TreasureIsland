package com.happy.world.thread;

public class MainThread {
	public static void main(String[] args) {
		WorkerManager manager = new WorkerManager();
		manager.startWork();
	}
	
}
