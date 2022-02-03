package com.happy.world.usage.basic;

import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import com.happy.world.utils.Out;

public class EnvUsage {
	public static void showJVMOption() {
		Properties prop=System.getProperties();
		Set<Object> set=prop.keySet();
		Iterator<Object> itor = set.iterator();
		while(itor.hasNext()) {
			String key=itor.next().toString();
			Out.print("key: "+key+" value: "+prop.getProperty(key));
		}
	}
	
	public static void showEnvVariable() {
		Map<String,String> map =System.getenv();
		Set<String> keyset=map.keySet();
		Iterator<String> keyItor =keyset.iterator();
		while (keyItor.hasNext()) {
			String key=keyItor.next();
			Out.print("key: "+key+" value: "+map.get(key));
		}
	}
	
	public static void main(String[] args) {
		EnvUsage.showJVMOption();
		Out.cutLine();
		EnvUsage.showEnvVariable();
	}
}
