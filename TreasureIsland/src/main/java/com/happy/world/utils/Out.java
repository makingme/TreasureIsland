package com.happy.world.utils;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

public class Out {
	final static int padSize =30;
	final static String padStr ="=";
	final static String delStr ="@";
	
	public static void cutLine() {
		System.out.println(StringUtils.leftPad("", padSize, delStr));
	}
	
	public static void print() {
		System.out.println(StringUtils.leftPad("", padSize, padStr));
	}
	
	public static void print(boolean o) {
		System.out.println(StringUtils.leftPad("", padSize, padStr));
		System.out.println(o);
	}
	
	public static void print(String o) {
		System.out.println(StringUtils.leftPad("", padSize, padStr));
		System.out.println(o);
	}
	
	public static void print(int o) {
		System.out.println(StringUtils.leftPad("", padSize, padStr));
		System.out.println(o);
	}
	
	public static void print(long o) {
		System.out.println(StringUtils.leftPad("", padSize, padStr));
		System.out.println(o);
	}
	
	public static void print(Object o) {
		System.out.println(StringUtils.leftPad("", padSize, padStr));
		System.out.println(o);
	}
	
	public static void print(Map o) {
		System.out.println(StringUtils.leftPad("", padSize, padStr));
		System.out.println(o);
	}
	public static void print(List o) {
		System.out.println(StringUtils.leftPad("", padSize, padStr));
		System.out.println(o);
	}
}
