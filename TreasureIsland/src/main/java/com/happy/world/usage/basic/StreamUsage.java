package com.happy.world.usage.basic;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.happy.world.utils.Out;

public class StreamUsage {
	public static void listToString() {
		List<String> list = new ArrayList();
		list.add("A");list.add("B");
		String str = list.stream().collect(Collectors.joining(",","{","}"));
		Out.print(str);
	}
	
	public static void main(String[] args) {
		StreamUsage.listToString();
	}
}
