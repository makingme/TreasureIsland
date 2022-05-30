package com.happy.world.usage.basic;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.happy.world.utils.Out;
import com.ibm.icu.text.SimpleDateFormat;
import com.ibm.icu.util.Calendar;

public class DateUsage {
	private final static Calendar calendar = Calendar.getInstance();
	
	public static void showCurrentDate() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		Out.print(dtf.format(now));
		Out.print(System.currentTimeMillis());
		
	}
	
	public static void getNow(String format){//2022-05-23 08:24
		if(format == null ) format = "yyyy-MM-dd HH:mm";
		SimpleDateFormat f = null;
		try {
			f = new SimpleDateFormat (format);
		}catch(IllegalArgumentException e) {
			f = new SimpleDateFormat ("yyyyMMddHHmmss");
		}
		Out.print(f.format(calendar.getTimeInMillis()+(60*1000)));
		System.out.println(System.currentTimeMillis());
	}
	
	public static void main(String[] args) {
		DateUsage.showCurrentDate();
		DateUsage.getNow(null);
	}
}
