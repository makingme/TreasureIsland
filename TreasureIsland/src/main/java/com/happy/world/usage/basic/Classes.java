package com.happy.world.usage.basic;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.happy.world.utils.Out;
import com.happy.world.vo.extend.Person;
import com.happy.world.vo.extend.Student;


public class Classes {
	final static Gson gson=new Gson();
	List<Order> list = new ArrayList<Order>();
	
	public Classes() {
		list.add(new Order("Ans","Candy"));
		list.add(new Order("Nuke","ball"));
	}
	
	class Order{
		public Order(String name, String product) {
			this.name = name;
			this.product = product;
		}
		
		public String name="";
		public String product="";
		
		@Override
		public String toString() {
			return "name: "+name+", product:"+product;
		}
	}
	
	public static void findClassType() throws ClassNotFoundException {
		Map<String, Object> typeMap =new HashMap<String, Object>();
		
		final String target1="adgds";
		final int target2=111;
		final String[] target3= {"1","2"};
		final Map<String, String> target4= new HashMap<String, String>();
		final List<Map<String,String>> target5=new ArrayList<Map<String, String>>();
		final List<String> target6=new ArrayList<String>();
		typeMap.put("target1", target1);
		typeMap.put("target2", target2);
		typeMap.put("target3", target3);
		typeMap.put("target4", target4);
		typeMap.put("target5", target5);
		typeMap.put("target6", target6);
		
		final Class<?> cl1= Class.forName("java.lang.String");
		final Class<?> cl2= Class.forName("java.lang.Integer");
		final Class<?> cl3= Class.forName("java.util.List");
		final Class<?> cl4= Class.forName("java.util.Arrays");
		final Class<?> cl5= Class.forName("java.util.Map");
		List<Class> list = new ArrayList<Class>();
		list.add(cl1);list.add(cl2);list.add(cl3);list.add(cl4);list.add(cl5);
		
		for(Map.Entry<String, Object> v: typeMap.entrySet()) {
			String key = v.getKey();
			Object value = v.getValue();
			for(Class c : list) {
				if (c.isInstance(value)) {
					Out.print(key+" : "+c.getName());
					Out.cutLine();
				}
			}
		}

	}
	
	public static void useInnerClass() {
		Classes a= new Classes();
		for(Order o :a.list) {
			Out.print(o.toString());
		}
	}
	
	public static void extendsClass() {
		Student s = new Student();
		s.setGrade("1");
		s.setGroup("A");
		s.setAge("17");
		s.setName("sam");
		Object temp = s;
		Person  p = (Person) temp;
		Out.print(gson.toJson(p));
	}
	
	public static void gerenateClass() throws Exception {
		Class cls = Class.forName("com.happy.world.vo.extend.Student");
		Out.print(cls.toString());
		Constructor constructor = cls.getConstructor(null); 
		Out.print(constructor);
		Student s = (Student) constructor.newInstance(null);
		Out.print(s.toString());
	}
	public static void main(String[] args) throws Exception {
		Classes.findClassType();
		Classes.useInnerClass();
		Classes.extendsClass();
		Classes.gerenateClass();
	}
}
