package com.happy.world.usage.apache.commons;

import org.apache.commons.lang3.StringUtils;

import com.happy.world.utils.Out;

public class StringUtilsUsage {
	static String emptyStr ="";
	static String spaceStr = " ";
	static String nullStr = null;
	public static void empty() {
		Out.print(StringUtils.isEmpty(nullStr));
		Out.print(StringUtils.isEmpty(emptyStr));
		Out.print(StringUtils.isEmpty(spaceStr));	
	}
	public static void blank() {
		Out.print(StringUtils.isBlank(nullStr));
		Out.print(StringUtils.isBlank(emptyStr));
		Out.print(StringUtils.isBlank(spaceStr));
	}
	
	public static void notBlank() {
		Out.print(StringUtils.isNotBlank(nullStr));
		Out.print(StringUtils.isNotBlank(emptyStr));
		Out.print(StringUtils.isNotBlank(spaceStr));
		Out.print(StringUtils.isNotBlank("abc"));
	}
	public static void main(String[] args) {
		StringUtilsUsage.empty();
		Out.cutLine();
		StringUtilsUsage.blank();
		Out.cutLine();
		StringUtilsUsage.notBlank();
	}
}
