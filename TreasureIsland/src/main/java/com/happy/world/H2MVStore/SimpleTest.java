package com.happy.world.H2MVStore;

import org.h2.mvstore.MVMap;
import org.h2.mvstore.MVStore;

import com.happy.world.vo.ProviderVo;

public class SimpleTest {
	public static void main(String[] args) {

		System.out.println("시작");
		String fileName = "D:\\TEST\\sample_test\\h2.fileq";
		MVStore s = MVStore.open(fileName);
		MVMap<String, Object> map = s.openMap("sample");
		System.out.println(map.size());
//		ProviderVo p = new ProviderVo("SMS", 100l, 100f, "KT");
//		Object b = p;
//		map.put("1", b);
		
		Object o = map.get("1");
		if(o instanceof ProviderVo) {
			ProviderVo p = (ProviderVo)o;
			System.out.println(p.getCHANNEL()+ p.getPROVIDER());
			
		}
//		map.remove("1");
		s.close();
	}
}
