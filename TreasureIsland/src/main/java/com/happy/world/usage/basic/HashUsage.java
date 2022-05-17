package com.happy.world.usage.basic;

import java.util.LinkedHashMap;
import java.util.Map;

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

	public static void main(String[] args) {
		HashUsage.getHashCode();
	}
}
