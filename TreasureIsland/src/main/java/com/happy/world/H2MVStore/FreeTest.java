package com.happy.world.H2MVStore;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.h2.mvstore.MVMap;
import org.h2.mvstore.MVStore;

public class FreeTest {
	
	
	public static void main(String[] args) throws InterruptedException {
		
		Map<String, int[]> totalMap = new HashMap<String, int[]>();
		
		Thread.sleep(2000);
		System.out.println("시작");
		String fileName = "D:\\TEST\\sample_test\\h2.fileq";
		MVStore s = MVStore.open(fileName);
		MVMap<String, String> map = s.openMap("data");
		
		Map<String, Integer> orderMap = new HashMap<String, Integer>(10);
		Iterator<String>  iterator = map.keySet().iterator();
		int dupCnt =0;
		while(iterator.hasNext()){
			String key = iterator.next();
			String name = key.split("_")[0];
			int index = Integer.parseInt(key.split("_")[1]);
			//if(index%2 ==1)System.out.println("데이터 삭제 이상");
			if(orderMap.get(name) == null) {
				orderMap.put(name, index);
			}else {
				int preIndex = orderMap.get(name);
				if(preIndex > index)System.out.println(key+"순서 역전, 이전:"+preIndex+", 현재:"+index);
				orderMap.put(name, index);
				dupCnt++;
			}
		}
		System.out.println("순서 역전 확인"+dupCnt);
		System.out.println(map.size());
		Thread.sleep(20000);
		map.entrySet().iterator();
		for( Entry<String, String> e:map.entrySet()) {
			String key = e.getKey();
			String name = key.split("_")[0];
			Integer index =   Integer.parseInt(key.split("_")[1]); 
			int[] indexArray = totalMap.get(name);
			if(indexArray == null) {
				indexArray = new int[100000];
				indexArray[index-1] = index;
				totalMap.put(name, indexArray);
			}else {
				int dup = indexArray[index -1];
				if(dup != 0)System.out.println("중복!!!"+key);
				indexArray[index-1] = index;
				totalMap.put(name, indexArray);
			}	
		}
		
			
//		for(Entry<String, int[]> e: totalMap.entrySet()) {
//			String key = e.getKey();
//			int[] indexArray = e.getValue();
//			if(indexArray ==null)System.out.println("데이터 이상:"+key);
//			
//			for(int i=0; i<indexArray.length;i++) {
//				if(indexArray[i]==0)System.out.println("데이터 이상:"+key+", INDEX:"+i);
//			}
//		}
		System.out.println("검사 끝");
		

	}
}
