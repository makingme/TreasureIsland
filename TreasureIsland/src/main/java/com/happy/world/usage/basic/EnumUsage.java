package com.happy.world.usage.basic;

import com.happy.world.utils.Out;

public class EnumUsage {
	enum RequestType{
		save, read;
	}
	
	public static void emumCheck() {
		final String s = "save";
		Out.print(s.equals(RequestType.save));
		Out.print(s.equals(RequestType.save.toString()));
	}
	
	public static void vaueOfUsage() {
		final String s = "save";
		final String t = "load";
		Out.print(RequestType.valueOf(s));
		try {			
			Out.print(RequestType.valueOf(t));
		}catch(IllegalArgumentException e) {
			Out.print(t+"는 지원하지 않는 타입입니다.");
		}
		
	}
	
	public static void main(String[] args) {
		EnumUsage.emumCheck();
		EnumUsage.vaueOfUsage();
	}
}

