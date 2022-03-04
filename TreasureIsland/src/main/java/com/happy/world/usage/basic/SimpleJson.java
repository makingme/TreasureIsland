package com.happy.world.usage.basic;

import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.happy.world.utils.Out;

public class SimpleJson {
	public static final Gson gson = new Gson();
	public static JSONObject jobj = new JSONObject();
	public static JSONArray jarray = new JSONArray();
	
	@SuppressWarnings("unchecked")
	public static void getStringValue() {
		JSONObject json= new JSONObject();
		json.put("NAME", "홍길동");
		
		Out.print(json.get("NAME"));
		Out.print((String)json.get("NAME"));
		Out.print(json.get("NAME").toString());
		
		JSONObject urlJson= new JSONObject();
		urlJson.put("url", "http://example.com");
		
		JSONObject openUrlJson= new JSONObject();
		openUrlJson.put("openUrl", urlJson);
	
		JSONObject action= new JSONObject();
		action.put("displayText", "연결하기" );
		action.put("urlAction", openUrlJson);
				
		JSONObject btn1= new JSONObject();
		btn1.put("action", action);
		
		JSONObject btn2= new JSONObject();
		btn2.put("action", action);
				
		JSONArray array = new JSONArray();
		array.add(btn1);
		array.add(btn2);
		
		JSONObject btns1= new JSONObject();
		btns1.put("suggestions", array);
		JSONObject btns2= btns1;
		
		jarray.add(btns1);
		jarray.add(btns2);
		Out.print(jarray.toJSONString());
		
		
	}
	
	public static void trans() {
		List<Map<String, List<Object>>> list = gson.fromJson(jarray.toJSONString(), new TypeToken<List<Map<String, List<Object>>>>(){}.getType());
		Out.print("List Size = "+ list.size());
		int btnCount = 0;
		for(Map<String, List<Object>> suggestionsMap : list) {
			List<Object> btnt = suggestionsMap.get("suggestions");
			Out.print("btn Size = "+btnt.size());
			btnCount += btnt.size();
		}
		Out.print("Button total = "+btnCount);
	}
	
	public static void main(String[] args) {
		SimpleJson.getStringValue();
		SimpleJson.trans();
	}
}
