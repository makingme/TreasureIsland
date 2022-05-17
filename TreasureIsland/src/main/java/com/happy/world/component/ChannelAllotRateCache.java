package com.happy.world.component;

import java.util.ArrayList;
import java.util.List;

import com.happy.world.vo.ProviderVo;

public class ChannelAllotRateCache {
	List<ProviderVo> providerList = new ArrayList<ProviderVo>(2);
	
	
	
	public ChannelAllotRateCache() {
		providerList.add(new ProviderVo("SMS", 70l, 0.7f, "KT"));
		providerList.add(new ProviderVo("SMS", 30l, 0.3f, "LGU"));
		
	}
	public boolean isExpiry(String channel) {
		boolean isExpiry = false;
		
		return isExpiry;
	}
	public void refreshProvider(String channel) {
		providerList = new ArrayList<ProviderVo>(2);
		providerList.add(new ProviderVo("SMS", 70l, 0.7f, "KT"));
		providerList.add(new ProviderVo("SMS", 30l, 0.3f, "LGU"));
	}
	
	public List<ProviderVo> getProviders(String channel) {
		return providerList;
	}
}
