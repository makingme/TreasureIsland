package com.happy.world.usage.basic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
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
	
	public static void remove() {
		List<String> list = new ArrayList<String>(3);
		list.add("1");list.add("2");list.add("3");
		Out.print(list.get(0));
		String d = list.remove(0);
		Out.print(d);
		for(String s : list) {
			//if(s.equals("1"))list.remove(s);
		}
	}
	
	public static void sort() {
		List<String> list = new ArrayList<String>(3);
		list.add("1_abc");
		list.add("109_test");
		list.add("9_1213");
		list.add("10_1213");
		list.add("108_1213");
		list.add("2_1213");
		list.add("9_1213");
		list.add("sdafds_3813");
		Collections.sort(list, new Comparator<String>() {

			@Override
			public int compare(String o1, String o2) {
				long num1 = 0;
				long num2 = 0;
				try {
					num1 = Long.parseLong(o1.split("_")[0]);
					num2 = Long.parseLong(o2.split("_")[0]);
					
				}catch(Exception e) {
					return 1;
				}
				return num1>num2?1:-1;
			}
		});
		
		for(int i=0; i<list.size(); i++) {
			System.out.println(i+"번째 :"+list.get(i));
		}
	}
	
	public static void main(String[] args) {
		//addList();
		sort();
		//ListUsage.remove();
		
	}
}


