package com.happy.world.vo;

public class ProviderVo {
	// 발송 채널명 
	private String CHANNEL;
	// 발송 비율(백분율)
	private Long RATIO=0l;
	// 발송 비율(/100)
	private float RATE=0f;
	// 실제 발송비율(백분율)
	private float REALRATE=0f;
	// 공급(중계)사
	private String PROVIDER;
	// 공급사 발송 건수
	private long SENTCNT=0l;
	
	public ProviderVo(String cHANNEL, Long rATIO, float rATE, String PROVIDER) {
		CHANNEL = cHANNEL;
		RATIO = rATIO;
		RATE = rATE;
		this.PROVIDER = PROVIDER;
	}
	public String getCHANNEL() { return CHANNEL; }
	public void setCHANNEL(String channel) { this.CHANNEL = channel; }
	public Long getRATIO() { return RATIO; }
	public void setRATIO(Long rate) { this.RATIO = rate;  this.RATE = (float)rate/100f;}
	public float getRATE() { return RATE; }
	public void setRATE(float rate) { this.RATE = rate;	}
	public float getREALRATE() { return REALRATE; }
	public void setREALRATE(float rate) { this.REALRATE = rate;	}
	public void setREALRATE(long totalCnt) { this.REALRATE = ((float)SENTCNT/(float)totalCnt)*100;	}
	public String getPROVIDER() { return PROVIDER; }
	public void setPROVIDER(String provider) { this.PROVIDER = provider; }
	public long getSENTCNT() { return SENTCNT; }
	public void setSENTCNT(long sentCnt) { this.SENTCNT = sentCnt; }
	public long increaseSentCnt(int cnt) {return (this.SENTCNT+=cnt);}

}
