package com.happy.world.classes;

import com.happy.world.vo.BasicVo;

public class InstanceCopy {
	
	public static void copy() {
		BasicVo p = new BasicVo("kibum", "38");
		System.out.println("원본 - "+p.getName()+", "+p.getAge());
		BasicVo pp = p;
		System.out.println("카피본 - "+pp.getName()+", "+pp.getAge());
	}
	
	public static void copyOriUpdate() {
		BasicVo p = new BasicVo("kibum", "38");
		System.out.println("원본 - "+p.getName()+", "+p.getAge());
		BasicVo pp = p;
		System.out.println("카피본 - "+pp.getName()+", "+pp.getAge());
		p.setName("yuna"); p.setAge("34");
		System.out.println("원본 수정 후 카피본 - "+pp.getName()+", "+pp.getAge());
	}
	
	public static void copyUpdate() {
		BasicVo p = new BasicVo("kibum", "38");
		System.out.println("원본 - "+p.getName()+", "+p.getAge());
		BasicVo pp = p;
		System.out.println("카피본 - "+pp.getName()+", "+pp.getAge());
		pp.setName("yuna"); pp.setAge("34");
		System.out.println("카피 수정 후 원본 - "+p.getName()+", "+p.getAge());
	}
	
	public static void main(String[] args) {
		//copy();
		//copyOriUpdate();
		copyUpdate();
	}
}
