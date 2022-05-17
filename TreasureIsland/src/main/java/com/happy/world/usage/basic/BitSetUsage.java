package com.happy.world.usage.basic;

import java.util.BitSet;
import java.util.Iterator;

import com.happy.world.utils.Out;

public class BitSetUsage {
	
	public static void bitSetBasic() {
		BitSet bitSet = new BitSet(2);
		Out.print(bitSet.toString());
		bitSet.set(0, false);
		bitSet.set(1, true);
		bitSet.set(2);
		Out.print(bitSet.get(0));
		Out.print(bitSet.get(1));
		Out.print(bitSet.get(2));
		Out.print(bitSet.size());
		Out.print(bitSet.cardinality());
		Out.print(bitSet.length());
		
	}
	
	public static void bitSetIncrease() {
		String s = Integer.toBinaryString(0);
		String ss = Integer.toBinaryString(1);
		String sss = Integer.toBinaryString(2);
		Out.print(String.format("%2s", s).replace(' ', '0'));
		Out.print(String.format("%2s", ss).replace(' ', '0'));
		Out.print(String.format("%2s", sss).replace(' ', '0'));
	}
	
	public static void test() {
		for(int i =0; i<4;i++) {
			String twoCase = String.format("%2s", Integer.toBinaryString(i)).replace(' ', '0');
			System.out.println(twoCase);
		}
	}
	public static void main(String[] args) {
		BitSetUsage.bitSetBasic();
		Out.cutLine();
		//BitSetUsage.bitSetIncrease();
		BitSetUsage.test();
	}
}

