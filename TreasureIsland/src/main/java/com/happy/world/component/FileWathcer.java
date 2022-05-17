package com.happy.world.component;

import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;

public class FileWathcer {
	public static void main(String[] args) throws Exception {
		Path path = Paths.get("D:\\TEST\\FETCHER\\RCV\\");
		WatchService watchService = FileSystems.getDefault().newWatchService();
		path.register( watchService, StandardWatchEventKinds.ENTRY_CREATE);
		WatchKey watchKey;
		
	}
}
