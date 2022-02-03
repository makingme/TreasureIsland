package com.happy.world.usage.basic;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map.Entry;
import java.util.Properties;

import com.happy.world.utils.Out;

public class PropertiesUsage {
	private final static String PATH ="db1.properties";
	
	
	public static void entry() throws FileNotFoundException, IOException {
    	Properties pro = new Properties();
    	String rootPath = Thread.currentThread().getContextClassLoader().getResource("").getPath();
    	String appConfigPath = rootPath + PATH;
    	pro.load(new FileInputStream(appConfigPath));
    	
    	for(Entry<Object, Object> d: pro.entrySet()) {
    		Out.print(d.getKey().toString() +":"+d.getValue().toString());
    	}
    	
	}
	public static void main(String[] args) throws FileNotFoundException, IOException {
		PropertiesUsage.entry();
	}
}
