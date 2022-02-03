package com.happy.world.usage.basic;

import org.json.simple.JSONObject;

import com.happy.world.utils.Out;

public class SimpleJson {
	@SuppressWarnings("unchecked")
	public static void getStringValue() {
		JSONObject json= new JSONObject();
		json.put("NAME", "홍길동");
		
		Out.print(json.get("NAME"));
		Out.print((String)json.get("NAME"));
		Out.print(json.get("NAME").toString());
	}
	
	public static void main(String[] args) {
		SimpleJson.getStringValue();
	}
}
