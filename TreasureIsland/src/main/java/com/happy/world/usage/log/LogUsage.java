package com.happy.world.usage.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogUsage {
	final static Logger log = LoggerFactory.getLogger(LogUsage.class); 
	 
	public static void main(String[] args) {
		log.info("INFO---------------");
		log.debug("DEBUG--------------");
	}
}
