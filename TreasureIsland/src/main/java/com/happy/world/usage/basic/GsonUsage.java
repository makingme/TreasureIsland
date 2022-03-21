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
import com.happy.world.vo.BasicVo;

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
		BasicVo b = new BasicVo(str3, str3);
		Map<String, List<String>> sendUsersMap = gson.fromJson(b.getName(), Map.class); 
	}
	
	public static void toJson() {
		List<String> list0 = new ArrayList<String>(5);	
		BasicVo vo1 = new BasicVo("anna", "11");
		BasicVo vo2 = new BasicVo("anna", "11");
		String str0 = gson.toJson(vo1);
		list0.add(str0);
		str0 = gson.toJson(vo2);
		list0.add(str0);
		Out.print(list0.toString());
		
		List<BasicVo> list00 = new ArrayList<BasicVo>(5);	
		BasicVo vo11 = new BasicVo("anna", "11");
		BasicVo vo22 = new BasicVo("anna", "11");
		list00.add(vo11);
		list00.add(vo22);
		String str00 = gson.toJson(list00);
		Out.print(str00);
		
		
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
		try {			
			GsonUsage.fromJsonException();	
		}catch(Exception e) { Out.print(e.getMessage()); }
		try {				
			GsonUsage.toJson();
		}catch(Exception e) { Out.print(e.getMessage()); }
		
	}
}
