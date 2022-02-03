package com.happy.world.usage.component;

import java.util.Date;

import com.happy.world.component.DateUtils;
import com.happy.world.utils.Out;



public class DateUtailsUsage {
	public static void taransType() {
		final String dummy="20211227153059";
		final Date date=DateUtils.strToDate(dummy, "yyyyMMddHHmmss");
		final String strDate = DateUtils.dateToStr(date, "yyyyMMdd HHmmss");
		Out.print(date);
		Out.print(strDate);
	}
	
	public static void throwIllegalArgumentException() {
		final String date=DateUtils.getToday("NotSupportedFormat");
		System.out.println(date);
	}
	public static void main(String[] args) {
		DateUtailsUsage.taransType();
		try {
			DateUtailsUsage.throwIllegalArgumentException();			
		}catch(IllegalArgumentException e) {
			Out.print("IllegalArgumentException 발생");
		}
	}
}
