package com.happy.world.usage.basic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.happy.world.utils.Out;

public class StringUsage {
	public static void substring() {
		final String dummy="1234567";
		Out.print(dummy.substring(dummy.length()-1));
		Out.print(dummy.substring(dummy.length()-2, dummy.length()-1));
		Out.print();
	}
	
	public static void throwOutBoundException() {
		final String dummy = "";
		Out.print(dummy.substring(dummy.length()-1));
	}
	
	public static void typeToString() {
		String[] strs = {"a", "b"};
		List<String> list = new ArrayList<String>(2);
		list.add("a");list.add("b");
		Integer i = new Integer(10);
		
		Object s1 = strs;
		Object s2 = list;
		Object s3 = i;
		
		Out.print(strs);
		Out.print(strs.toString());
		Out.print(Arrays.asList(strs));
		Out.print(list);
		Out.print(i);
		Out.cutLine();
		Out.print(s1.toString());
		Out.print(s2.toString());
		Out.print(s3.toString());
	}
	
	
	public static void replace() {
		String str1 = "#{이름}님 안녕하세요. #{이름}님께 드리는 이벤트";
		String str2 = "홍길동";
		Out.print(str1.replace("#{이름}", str2));
		//Out.print(str1.replaceAll("#{이름}", str2));
		
	}
	
	public static void withs() {
		String str1 = "abcde/";
		if(str1.endsWith("/"))Out.print("withs");
	}
	public static void main(String[] args) {
		StringUsage.substring();
		//StringUsage.throwOutBoundException();
		Out.cutLine();
		StringUsage.typeToString();
		Out.cutLine();
		StringUsage.replace();
		Out.cutLine();
		StringUsage.withs();
	}
}

