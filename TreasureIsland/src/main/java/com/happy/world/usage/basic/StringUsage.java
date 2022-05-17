package com.happy.world.usage.basic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.happy.world.utils.Out;

public class StringUsage {
	public static void substring() {
		final String dummy="1234567";
		final String dummy1="123.json";
		Out.print(dummy.substring(dummy.length()-1));
		Out.print(dummy.substring(dummy.length()-2, dummy.length()-1));
		Out.print(dummy1.substring(0, dummy1.lastIndexOf(".")));
		Out.print();
	}
	
	public static void throwOutBoundException() {
		final String dummy = "";
		Out.print(dummy.substring(dummy.length()-1));
	}
	
	public static void insert() {
		String dummy = "12S";
		Out.print(new StringBuffer(dummy).insert(2, "P").toString()); 
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
	
	public static void capitalize() {
		String lower = "abc";
		String upper = "ABC";
		Out.print(StringUtils.capitalize(lower));
	}
	
	public static void split() {
		String dummy = "0000P";
		String dummy1 = "0000P>0000A";
		String dummy2 = "test ";
		String[] array = dummy.split("");
		String[] array1 = dummy.split(">");
		String[] array2 = dummy1.split(">");
		String[] array3 = dummy2.split(" ");
		Out.print(array.length);
		Out.print(array1.length);
		Out.print(array2.length);
		Out.print(array3.length);
		for(String s:array3) {
			Out.print(s);
		}
		
	}
	
	public static void format() {
		String num ="0101234";
		for(int i =0; i<1000; i++) {
			Out.print(num+String.format("%04d", i));
		}
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
		Out.cutLine();
		StringUsage.capitalize();
		Out.cutLine();
		StringUsage.split();
		Out.cutLine();
		//StringUsage.insert();
		Out.cutLine();
		//StringUsage.format();
		System.out.println(999/1000);
	}
}



