package com.happy.world.usage.basic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.happy.world.utils.Out;

public class ListUsage {
	public static void arrayLength() {
		String[] s = new String[0];
		String[] ss = new String[100];
		List<String> list = new ArrayList<String>(100);
		Out.print(s.length);
		Out.print(ss.length);
		Out.print(list.size());
	}
	
	public static void addList() {
		List<String> list1 = new ArrayList<String>(10);
		list1.add("1");
		list1.add("2");
		List<String> list2 = new ArrayList<String>(10);
		list2.add("3");
		list2.add("4");
		List<String> list3 = new ArrayList<String>(10);
		list3.add("5");
		list3.add("6");
		
		list1.addAll(list2);
		list1.addAll(list3);
		
		Out.print(list1.toString());
	}
	
	public static void initList() {
		Map<String, String> map = new HashMap<String, String>(5);
		map.put("1", "1");
		map.put("2", "2");
		List<Map<String, String>> list1 = new ArrayList<Map<String,String>>(List.of(map));
		List<Map<String, String>> list2 = new ArrayList<Map<String,String>>(Arrays.asList(map));
		Out.print(list1.toString());
		Out.print(list2.toString());
	}
	
	public static void main(String[] args) {
		ListUsage.arrayLength();
		ListUsage.addList();
		ListUsage.initList();
	}
}

