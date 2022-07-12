package com.happy.world.usage.basic;

import java.util.regex.Pattern;

import com.happy.world.utils.Out;

public class RegularUsage {
	
	public static void include() {
		String pattern =".+[\\.]csv$";
		String pattern2 =".+";
		String s1 ="aaaabc.csv";
		String s2 = "abcd.txt";
		String s3 ="김aaaabc.csv";
		String s4 ="aaaabccsv";
		String s5 ="";
//		Out.print(Pattern.matches(pattern, s1));
//		Out.print(Pattern.matches(pattern, s2));
//		Out.print(Pattern.matches(pattern, s3));
//		Out.print(Pattern.matches(pattern, s4));
		
		Out.print(Pattern.matches(pattern2, s1));
		Out.print(Pattern.matches(pattern2, s2));
		Out.print(Pattern.matches(pattern2, s3));
		Out.print(Pattern.matches(pattern2, s4));
		Out.print(Pattern.matches(pattern2, s5));
		
	}
	
	public static void main(String[] args) {
		include();
	}
}

