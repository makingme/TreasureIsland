package com.happy.world.usage.basic;

import java.lang.reflect.Field;

import com.happy.world.utils.Out;
import com.happy.world.vo.basicVo;

public class ReflectionUsage {
	static basicVo b= new basicVo("honggildoing","100");
	public static void printField(Object object, String name) {
		
		String msg= name+" INFO\n";
		
		Field[] fields = object.getClass().getDeclaredFields();
		for(Field pf : fields) {
			try {				
				pf.setAccessible(true);
				String value = pf.get(object) == null?"": pf.get(object).toString()+"\n";
				msg+=pf.getName()+" : "+value;
			} catch (IllegalArgumentException e) {
				Out.print(e.getMessage());
			} catch (IllegalAccessException e) {
				Out.print(e.getMessage());
			}
		}
		
		Out.print(msg);
	}
	
	public static void main(String[] args) {
		ReflectionUsage.printField(b, "basicVo");
	}
}
