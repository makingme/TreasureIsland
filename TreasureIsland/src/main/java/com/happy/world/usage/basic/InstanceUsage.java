package com.happy.world.usage.basic;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.commons.lang3.ObjectUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class InstanceUsage extends Thread{
	protected final Logger log = LoggerFactory.getLogger(this.getClass());
	
	private long monitTime = 15*1000;
	
	private boolean isRun = true;
	
	private final String TARGET_PATH = "D:\\TEST\\PITCHER\\SUCCESS";
	
	private Map<File, Long> fileHistory = new HashMap<File, Long>();
	
	@Override
	public void run() {
		Path path = Paths.get(TARGET_PATH);
		while(isRun) {
			try {
				List<Path> list = Files.walk(path).filter(p -> p.toFile().isFile()).collect(Collectors.toList());
				if(ObjectUtils.isEmpty(list)) {
					log.info("{} 파일 없음", TARGET_PATH);
				}
				Iterator<Path> iter = list.iterator();
				long now = System.currentTimeMillis();
				while(iter.hasNext()) {
					Path p = iter.next();
					Long regTime = fileHistory.get(p.toFile());
					if(regTime != null && regTime != 0) {
						if(now-regTime > monitTime) {
							log.info("대상 파일:{}", p.toString() );
							iter.remove();
						}
					}else {
						log.info("신규 파일 등록: {}", p.toString());	
						fileHistory.put(p.toFile(), now);
					}
					sleep(3000);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		InstanceUsage ins = new InstanceUsage();
		ins.start();
	}
	
}
