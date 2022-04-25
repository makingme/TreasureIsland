package com.happy.world.usage.basic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.happy.world.utils.Out;
import com.happy.world.vo.BasicVo;

public class ListUsage {
	
	public static final Gson gson = new Gson();
	public static void arrayLength() {
		String[] s = new String[0];
		String[] ss = new String[100];
		List<String> list = new ArrayList<String>(100);
		Out.print(s.length);
		Out.print(ss.length);
		Out.print(list.size());
	}
	
	public static void addList() {
		List<String> list1 = new ArrayList<String>(10);
		list1.add("1");
		list1.add("2");
		List<String> list2 = new ArrayList<String>(10);
		list2.add("3");
		list2.add("4");
		List<String> list3 = new ArrayList<String>(10);
		list3.add("5");
		list3.add("6");
		
		list1.addAll(list2);
		list1.addAll(list3);
		
		Out.print(list1.toString());
	}
	
	public static void addObjectList() {
		List<BasicVo> list1 = new ArrayList<BasicVo>(2);

		BasicVo vo = new BasicVo("1","0");
		list1.add(vo);
		vo.setAge("100");
		list1.add(vo);
		int index =0;
		for(BasicVo v : list1) {
			index++;
			ReflectionUsage.printField(v, "vo"+index);
		}
	}
	
	public static void initList() {
		Map<String, String> map = new HashMap<String, String>(5);
		map.put("1", "1");
		map.put("2", "2");
		List<Map<String, String>> list1 = new ArrayList<Map<String,String>>(List.of(map));
		List<Map<String, String>> list2 = new ArrayList<Map<String,String>>(Arrays.asList(map));
		Out.print(list1.toString());
		Out.print(list2.toString());
	}
	
	
	public static void stringToList() {
		JSONArray jarray = new JSONArray();
		JSONObject jobj1 = new JSONObject();
		JSONObject jobj2 = new JSONObject();
		jobj1.put("1", "1");
		jobj1.put("2", "2");
		jobj2.put("10", "10");
		jobj2.put("20", "20");
		jarray.add(jobj1);
		jarray.add(jobj2);
		String sArray = jarray.toJSONString();
		Out.print(sArray);
		List<String> list1 = Arrays.asList(sArray);
		Out.print(list1.size());
		for(String item : list1) {
			Out.print(item);
		}
		JsonArray jsonArray= gson.fromJson(sArray,  new TypeToken<JsonArray>(){}.getType());
		Out.print(jsonArray.size());
		for(JsonElement item : jsonArray) {
			Out.print(item.toString());
		}
		List<Object> list2 = gson.fromJson(sArray,   new TypeToken<List<Object>>(){}.getType());
		Out.print(list2.size());
		for(Object item : list2) {
			Out.print(item.toString());
		}
		
		List list3 = gson.fromJson(sArray, List.class);

		Out.print(list3.size());
		for(Object item : list3) {
			Out.print(item.toString());
		}
	}
	
	public static void main(String[] args) {
		ListUsage.arrayLength();
		ListUsage.addList();
		ListUsage.initList();
		Out.cutLine();
		//ListUsage.stringToList();
		Out.cutLine();
		ListUsage.addObjectList();
		
	}
}


