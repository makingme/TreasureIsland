package com.happy.world.component;

public class AllotterManager {
	private static ChannelAllotter smsAllotter = new ChannelAllotter("SMS");
	private static ChannelAllotter mmsAllotter = new ChannelAllotter("MMS");
	private static ChannelAllotter kkoAllotter = new ChannelAllotter("KKO");
	private static ChannelAllotter rcsAllotter = new ChannelAllotter("RCS");
	private static ChannelAllotter naverAllotter = new ChannelAllotter("NAVER");

	public String getProvider(String channel, String identifyKey) {
		String providerName = null;
		ChannelAllotter alloter = null;
		switch(channel) {
    	case "SMS":
    		alloter = smsAllotter;	
    		break;
    	case "LMS": case "MMS":
    		alloter = mmsAllotter;	
    		break;
    	case "RCS_SMS": case "RCS_LMS": case "RCS_MMS": case "RCS_FREE": case "RCS_CELL": case "RCS_DESC":
    		alloter = rcsAllotter;	
    		break;
    	case "KKOALT": case "KKOFRT":
    		alloter = kkoAllotter;	
    		break;
    	case "NAVERT":
    		alloter = naverAllotter;	
    		break;
    	}
		providerName = alloter.getProvider(identifyKey);
		return providerName;
	}
	
	public long getTotalCnt(String channel) {
		return smsAllotter.getTotalCnt(channel);
	}
}
