package com.happy.world.component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import lombok.Data;

public class Allotter {
	
	@Data
	public class Provider{
		public Provider(String name, float percent, float ratio) { this.name = name; this.percent = percent; this.ratio =ratio; }
		String name;
		float percent;
		float ratio;
	}
	
	final static List<String> providers = (List<String>) Stream.of("KT:70", "LGU:30").collect(Collectors.toList());
	final static Map<Provider, Integer> allotSummary = new HashMap<Provider, Integer>(5);
	final static Map<Integer, Provider> allotHistory = new HashMap<Integer, Provider>(2);
	
	
	
	final static int clearMils = 30000;
	static int totalCnt = 0;
	static int modeNum = 0;
	
	public static void main(String[] args) {
		Allotter at = new Allotter();
		modeNum = providers.size();
		for(String provider : providers) {
			String[] info = provider.split(":");
			String name = info[0];
			float ratio =  Float.parseFloat(info[1]);
			allotSummary.put(at.new Provider(info[0], ratio, ratio/100), 0);
		}
		
		String prefixNumber ="010";
		int surfixNumber = 0;
		String number = prefixNumber+ String.format("%08d", surfixNumber);
		for(int i=1; i<=10000; i++) {
			surfixNumber = i;
			number = prefixNumber+ String.format("%08d", surfixNumber);
			Provider target= at.allot(number);
			allotSummary.put(target, allotSummary.get(target)+1);
			int modValue = number.hashCode();
			allotHistory.put(modValue, target);
			totalCnt++;
		}
		
		System.out.println("==============================================================");
		for(Entry<Provider, Integer> e :allotSummary.entrySet()) {
			Provider p = e.getKey();
			int sentCnt = e.getValue();
			System.out.println("Total CNT:"+totalCnt+", target:"+p.getName()+", SENT CNT:"+sentCnt);
		}
	}
	
	
	
	public Provider allot(String number) {
		Provider target = null;
		int modValue = number.hashCode();
		if(allotHistory.get(modValue) != null) {
			return allotHistory.get(modValue);
		}
		for(Entry<Provider, Integer> e :allotSummary.entrySet()) {
			target = e.getKey();
			int sentCnt = e.getValue();
			float fRatio = target.getRatio();
			float estimateCnt = totalCnt * fRatio;
			if(sentCnt <= estimateCnt) {
				return target;
			}
		}
		return target;
	}
}
