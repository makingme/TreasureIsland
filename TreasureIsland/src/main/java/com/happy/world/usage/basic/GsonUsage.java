package com.happy.world.usage.basic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.happy.world.utils.Out;
import com.happy.world.vo.basicVo;

public class GsonUsage {
	
	public static final Gson gson = new Gson();
	public static void fromJsonException() {
		String str1 = "abc";
		try {
			Map list2 = gson.fromJson(str1, Map.class);			
		} catch (JsonSyntaxException e) {
			Out.print("exception 발생");
		}
		
		String[] array = {"a","b","c"};
		String str2 = Arrays.toString(array);
		String str3 = gson.toJson(str2).toString();
		basicVo b = new basicVo(str3, str3);
		Map<String, List<String>> sendUsersMap = gson.fromJson(b.getName(), Map.class); 
	}
	
	public static void toJson() {
		String[] array = {"a","b","c"};
		List<String> list = new ArrayList<String>(5);
		list.add("a");list.add("b");list.add("c");
		JsonObject json = new JsonObject();
		json.addProperty("a", "b");
		
		String str1 = list.toString();
		JsonArray jarray = gson.fromJson(str1, JsonArray.class);
				
		String str2 = Arrays.toString(array);
		String str3 = jarray.toString();
		Out.print(str1);
		Out.print(str2);
		Out.print(jarray.toString());
		
		String str4 = gson.toJson(jarray).toString();
		String str5 = gson.toJson(str2).toString();
		Out.print(str4);
		Out.print(str5);
		JsonArray jarray2 = gson.fromJson(str4, JsonArray.class);
		Out.print(jarray2.toString());
		JsonArray jarray3 = gson.fromJson(str5, JsonArray.class);
		Out.print(jarray3.toString());
	}
	
	public static void main(String[] args) {
		GsonUsage.fromJsonException();
		GsonUsage.toJson();
	}
}
