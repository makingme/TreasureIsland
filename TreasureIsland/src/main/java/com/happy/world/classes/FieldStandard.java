package com.happy.world.classes;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface FieldStandard {
	public boolean required() default true;
	public int MAX() default 0;
	public int MIN() default 0;
}
