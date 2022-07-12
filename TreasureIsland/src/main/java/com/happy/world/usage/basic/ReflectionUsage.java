package com.happy.world.usage.basic;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

import com.happy.world.classes.AbstractClass;
import com.happy.world.classes.InterfaceClass;
import com.happy.world.utils.Out;
import com.happy.world.vo.BasicVo;

public class ReflectionUsage {
	static BasicVo b= new BasicVo("honggildoing","100");
	public static void printField(Object object, String name) {
		
		String msg= object.getClass().getName()+" INFO\n";
		
		Field[] fields = object.getClass().getDeclaredFields();
		for(Field pf : fields) {
			try {				
				pf.setAccessible(true);
				String value = pf.get(object) == null?"": pf.get(object).toString()+"\n";
				Class<?> className =pf.getType();
				msg+=pf.getName()+"("+className.getName()+") : "+value;
			} catch (IllegalArgumentException e) {
				Out.print(e.getMessage());
			} catch (IllegalAccessException e) {
				Out.print(e.getMessage());
			}
		}
		
		Out.print(msg);
	}
	
	public static void createClass() throws Exception {
		Class<?> targetClass = Class.forName("com.happy.world.classes.AbstractExtendClass");
		Constructor ctor = targetClass.getDeclaredConstructor(null);
		AbstractClass test= (AbstractClass)ctor.newInstance(null);
		
		Class<?> targetClass1 = Class.forName("com.happy.world.classes.InterfaceImplClass");
		Constructor<?> ctor1 = targetClass1.getDeclaredConstructor(Integer.class);
		InterfaceClass test1= (InterfaceClass)ctor1.newInstance(1);
		test1.diff(1, 1);
		
	}
	
	public static void main(String[] args) throws Exception {
		ReflectionUsage.printField(b, "basicVo");
		//ReflectionUsage.createClass();
	}
}
