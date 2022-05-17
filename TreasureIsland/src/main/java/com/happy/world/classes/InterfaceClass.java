package com.happy.world.classes;

import java.util.LinkedHashMap;
import java.util.Map;

public interface InterfaceClass {
	final int HISTORY_MAX = 4000;
	final LinkedHashMap<String, String> allotNumberHistory = new LinkedHashMap<String, String>(HISTORY_MAX, .75f, true){
		protected boolean removeEldestEntry(Map.Entry<String, String> eldest) {
			return size() >= HISTORY_MAX;
		}
	};
	public int diff(int a, int b) ;
}
