package com.happy.world.component;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.happy.world.utils.Out;

public class CaseExtract {
	// 중간 중간에 파일에 저장하여 메모리를 비우면 out of memory  극복할수 있을거 같다.
	public static void main(String[] args) {
		CaseExtract e = new CaseExtract();
		List<String> list = e.generateTwoDepthMutiSendChannel();
		Out.print(list.size());
		for(String c : list) {
			Out.print(c);
		}
		Out.print(list.size());
		
	}
	public static final Map<String,String> CHANNEL_SHORTKEY_MAP = Stream.of(new String[][] { 
		{ "P", "PUSH"},
		{ "W", "WPUSH"},
		{ "A", "KKOALT"},
		{ "F", "KKOFRT"},
		{ "0", "RCS_FREE"},
		{ "1", "RCS_SMS"},
		{ "2", "RCS_LMS"},
		{ "3", "RCS_MMS"},
		{ "4", "RCS_CELL"},
		{ "5", "RCS_DESC"},
		{ "N", "NAVERTOK"},
		{ "S", "SMS"},
		{ "M", "MMS"}
	 }).collect(Collectors.toMap(data ->  data[0], data ->  data[1], (x, y) -> y, LinkedHashMap::new));
	
	
	
	public static List<String> generateTwoDepthMutiSendChannel(){
		List<String> multiSendChannelList = new ArrayList<String>();
		
		for(Entry<String, String> e : CHANNEL_SHORTKEY_MAP.entrySet()) {
			String root = e.getKey();

			for(Entry<String, String> ee : CHANNEL_SHORTKEY_MAP.entrySet()) {
				String subChannel = ee.getKey();
				if(subChannel.equals(root)) continue;
				multiSendChannelList.add(root+subChannel);
			}

		}
		
		return multiSendChannelList;
	}
	
	
	public static List<String> generateAllMutiSendChannel(){
		List<String> multiSendChannelList = new ArrayList<String>();
		
		for(Entry<String, String> e : CHANNEL_SHORTKEY_MAP.entrySet()) {
			String root = e.getKey();

			for(Entry<String, String> ee : CHANNEL_SHORTKEY_MAP.entrySet()) {
				String subChannel = ee.getKey();
				if(subChannel.equals(root)) continue;
				multiSendChannelList.add(root+subChannel);
			}

		}
		int index =0;
		for(int i =0; i<CHANNEL_SHORTKEY_MAP.size()-1; i++) {
			List<String> temp = new ArrayList<String>();
			int size = multiSendChannelList.size();
			for(int j = index; j< size; j++) {
				String c = multiSendChannelList.get(j);
				for(Entry<String, String> e : CHANNEL_SHORTKEY_MAP.entrySet()) {
					String channel = e.getKey();
					if(c.contains(channel))continue;
					temp.add(c+channel);
				}
			}
			multiSendChannelList.addAll(temp);
			index = size;
		}
			
		return multiSendChannelList;
	}

}
