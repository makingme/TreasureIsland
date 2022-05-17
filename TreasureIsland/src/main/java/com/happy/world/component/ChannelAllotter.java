package com.happy.world.component;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.ObjectUtils;

import com.happy.world.vo.ProviderVo;

public class ChannelAllotter {
	final String channel;
	final ChannelAllotRateCache channelAllotRateCache;
    
	// 중계사 분배건수
	long channelTotalCnt = 0;
	// 중계사 구간 분배건수(캐싱 초기화때 같이 클렌징함)
	long channelSectionTotalCnt = 0;
	
	final static int HISTORY_MAX = 4000;
	
	final LinkedHashMap<String, String> allotNumberHistory = new LinkedHashMap<String, String>(HISTORY_MAX, .75f, true){
		protected boolean removeEldestEntry(Map.Entry<String, String> eldest) {
			return size() >= HISTORY_MAX;
		}
	};
    
	public ChannelAllotter(String channel) { this.channel = channel;   channelAllotRateCache= new ChannelAllotRateCache();}
	
    private void refresh() { channelAllotRateCache.refreshProvider(channel); channelSectionTotalCnt=0;}
    public String getProvider(String identifyKey) {
    	// 갱신필요 여부 확인
		boolean isExpiry = channelAllotRateCache.isExpiry(channel);
		if(isExpiry) refresh();
		
		// SMS 프로바이더 가져오기
		List<ProviderVo> pVoList = channelAllotRateCache.getProviders(channel);
		
		// 프로바이더 없다면 AS-IS 방식으로 프로바이더 서비스 리턴
		if(ObjectUtils.isEmpty(pVoList))return null;
		
		// 분배 프로바이더 가져오기
		ProviderVo pVo = allot(identifyKey, pVoList, allotNumberHistory);
		
		// 분배할 프로바이더가 없다면 첫번째 프로바이더로 지정
		if(pVo == null) pVo = pVoList.get(0);
		
		// 분배 이력 기록 - 동일번호 동일 공급사 분배 기능
		String providerName = pVo.getPROVIDER();
		recordHistory(identifyKey, providerName);
		
		// 분배 프로바이더에 맞게 프로바이더 서비스 리턴
		return providerName;
    }

    public synchronized ProviderVo allot(String identifyKey, List<ProviderVo> list, Map<String, String> allotHistory) {
    	
    	if(allotHistory != null && identifyKey != null) {
    		String sentProviderName = allotHistory.get(identifyKey);
    		if(sentProviderName != null) {
    			for(ProviderVo p :list) {
    				if(p.getPROVIDER().equalsIgnoreCase(sentProviderName)) {
    					// 프로바이더 건수 증가, 채널 전체건수 증가, 구간 채널 전체 건수 증가
    					p.increaseSentCnt(1); increaseChannleTotalCnt(channel); increaseChannleSectionTotalCnt(channel);
    					return p;
    				}
    			}
    		}    		
    	}
    	
		// 기존 채널 총 건수 + 현재 건수
		long totalCnt = channelSectionTotalCnt+1;
		for(ProviderVo target :list) {
			// 공급사 발송 건수
			long sentCnt = target.getSENTCNT();
			// 공급사 발송 비율
			float rate = target.getRATE();
			// 음수일 경우 제외
			if(rate < 0)continue;
			// 발송 기대 건수 추출
			float estimateCnt = (float)totalCnt * rate;
			// 현재건수가 기대 건수 보다 작을 시 대상
			if(sentCnt < estimateCnt) {
				// 프로바이더 건수 증가, 채널 전체건수 증가, 구간 채널 전체 건수 증가
				target.increaseSentCnt(1); increaseChannleTotalCnt(channel); increaseChannleSectionTotalCnt(channel);
				return target; 
			}
		}
		return null;
	}
	
    private synchronized void recordHistory(String phoneNumber, String providerName) {allotNumberHistory.put(phoneNumber, providerName);}
    private long increaseChannleTotalCnt(String channel) { return channelTotalCnt=channelTotalCnt+1; }
    private long increaseChannleSectionTotalCnt(String channel) { return channelSectionTotalCnt=channelSectionTotalCnt+1; }
    public Long getTotalCnt(String channel) {return channelTotalCnt;}
}
