package com.happy.world.usage.basic;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import com.happy.world.utils.Out;

public class MapUsage {
	public static void mergeMap() {
		Map<String, Integer> map = new HashMap<String, Integer>(10);
		map.put("SMS", 1);
		map.put("RCS", 1);
		Iterator<String> iter = map.keySet().iterator();
		while(iter.hasNext()) {
			String key = iter.next();
			Out.print(key+":"+map.get(key));
		}
		Out.cutLine();
		int cnt = map.merge("SMS", 3, Integer::sum);
		System.out.println(cnt);
		iter = map.keySet().iterator();
		while(iter.hasNext()) {
			String key = iter.next();
			Out.print(key+":"+map.get(key));
		}
		
	}
	public static void main(String[] args) {
		MapUsage.mergeMap();
	}
}
