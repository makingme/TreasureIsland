package com.happy.world.usage.basic;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.happy.world.utils.Out;

public class CastingUsage {
	
	public static void mapGeneric() {
		Map<String, Date> sMap= new HashMap<String, Date>();
		sMap.put("date", new Date());
		Object sObject=(Object)sMap;
		
		Map<String, String> tMap=(Map<String,String>)sObject;
		
		for(Map.Entry<String, String> set:tMap.entrySet()) {
			Object key=set.getKey();
			Object value=set.getValue();
			if( key instanceof String) {
				Out.print("String key type");
			}
			
			if( value instanceof String) {
				Out.print("String value type");
			}
			if( value instanceof Date) {
				Out.print("Date value type");
			}
		}
	}
	
	public static void strToBoolean() {
		final String a="test" ,b="true", c="TruE", d="TruE  ", e="true  ";
		Out.print(Boolean.parseBoolean(a));
		Out.print(Boolean.parseBoolean(b));
		Out.print(Boolean.parseBoolean(c));
		Out.print(Boolean.parseBoolean(d));
		Out.print(Boolean.parseBoolean(e));
	}
	
	public static void objectCasting() {
		int a =1;
		Object o = a;
		Out.print(o);
		int b = (int)o;
		Out.print(b);
	}
	
	public static void main(String[] args) {
		CastingUsage.mapGeneric();
		CastingUsage.strToBoolean();
		CastingUsage.objectCasting();
	}
}
