package com.happy.world.usage.basic;

import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.happy.world.utils.Out;

public class GsonUsage {
	
	public static final Gson gson = new Gson();
	public static void fromJsonException() {
		String str1 = "abc";
		try {
			Map list2 = gson.fromJson(str1, Map.class);			
		} catch (JsonSyntaxException e) {
			Out.print("exception 발생");
		}
	}
	
	public static void main(String[] args) {
		GsonUsage.fromJsonException();
	}
}
