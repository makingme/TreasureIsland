package com.happy.world.usage.basic;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

import com.happy.world.utils.Out;

public class HashUsage {
	public static void getHashCode() {
		String n = "";
		for (int i = 1; i <= 12; i++) {
			n = n + i;
			int hash = n.hashCode();
			// Out.print(n+":"+hash);
		}
		String d1 = "01012345678";
		String d2 = "01012345678";
		Out.print(d1.hashCode());
		Out.print(d2.hashCode());
	}

	public static void removeHash() {
		final int MAX = 3;
		LinkedHashMap<Integer, String> linkMap = new LinkedHashMap<Integer, String>();
		linkMap.put(121331, "KT");
		linkMap.put(121332, "LGU");
		linkMap.put(121333, "KT");

		final int maxSize = 4;
		final LinkedHashMap<String, String> cache = new LinkedHashMap<String, String>() {
			@Override
			protected boolean removeEldestEntry(final Map.Entry eldest) {
				return size() > maxSize;
			}
		};

	}

	public static void loopUpdate() {
		HashMap<Long, String> map = new HashMap<Long, String>();
		map.put( 1L, "1");
		map.put( 2L, "1");
		map.put( 3L, "1");
		map.put( 4L, "1");
		
//		for(Entry<Long, String> element: map.entrySet()) {
//			Long key = element.getKey();
//			String data = element.getValue();
//			map.remove(key);
//		}
//		
		 Iterator<Entry<Long, String>> iter =  map.entrySet().iterator();
		 while(iter.hasNext()) {
			 Entry<Long, String> entry = iter.next();
			 System.out.println("key:"+entry.getKey()+", value:"+ entry.getValue());
			 iter.remove();
		 }
		 System.out.println(map.size());
	}
	
	public static void main(String[] args) {
		//args..getHashCode();
		loopUpdate();
	}
}
