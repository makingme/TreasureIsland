package com.happy.world.classes;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedType;
import java.lang.reflect.Field;

public class AnnoTationValidation {
	public static boolean validationVoClass(Object object) {
		Field[] fields = object.getClass().getDeclaredFields();
		for(Field field :fields) {
			boolean isOk =field.isAnnotationPresent(FieldStandard.class);
			Annotation[]  annos =field.getDeclaredAnnotations();
			Annotation anno = annos[0];
			Class<?> test = anno.annotationType();
			AnnotatedType annoType= field.getAnnotatedType();
			Class<?> classes =  annoType.getClass();
			System.out.println("=======");
		}
		return true;
	}
}
