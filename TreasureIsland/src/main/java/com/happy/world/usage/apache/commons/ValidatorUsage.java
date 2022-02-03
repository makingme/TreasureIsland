package com.happy.world.usage.apache.commons;

import org.apache.commons.validator.GenericValidator;

import com.happy.world.utils.Out;

public class ValidatorUsage {
	public static void isValidDate() {
		final String ok1 ="20211231113030";
		final String ok2 ="15:30";
		final String ok3 ="15:50-21:00";
		final String wrong1 ="15:50-91:00";
		final String wrong2 ="15:5021:00";
		Out.print(GenericValidator.isDate(ok1, "yyyyMMddHHmmss", true));
		Out.print(GenericValidator.isDate(ok2, "HH:mm", true));
		Out.print(GenericValidator.isDate(ok3, "HH:mm-HH:mm", true));
		Out.print(GenericValidator.isDate(wrong1, "HH:mm-HH:mm", true));
		Out.print(GenericValidator.isDate(wrong2, "HH:mm-HH:mm", true));
		
	}
	public static void main(String[] args) {
		ValidatorUsage.isValidDate();
	}
}

