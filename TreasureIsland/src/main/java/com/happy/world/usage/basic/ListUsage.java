package com.happy.world.usage.basic;

import java.util.ArrayList;
import java.util.List;

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
	
	public static void main(String[] args) {
		ListUsage.arrayLength();
		ListUsage.addList();
	}
}

