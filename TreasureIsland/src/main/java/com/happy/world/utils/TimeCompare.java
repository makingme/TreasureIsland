package com.happy.world.utils;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class TimeCompare {
	public static void main(String[] args) throws Exception {
		
		String start ="::";
		String end ="14:00";
		start = start.replaceAll("\\D", "");
		System.out.println(start);
		end = end.replaceAll("\\D", "");
		System.out.println(end);
		
		int startTime = Integer.parseInt(start);
		int endTime = Integer.parseInt(end);
		System.out.println(startTime);
		System.out.println(endTime);
		
		if(startTime >0 ) {
			
		}
		
		Instant time = Instant.now();

		System.out.println(time.toString());
		LocalTime compare = LocalTime.of(17, 54);
		LocalTime myObj = LocalTime.now();
		System.out.println(myObj.getHour());
		System.out.println(myObj.getMinute());
		System.out.println(myObj.compareTo(compare));
		DateTimeFormatter DATE_TIME_FORMAT = DateTimeFormatter.ofPattern("HHmm");
		System.out.println(DATE_TIME_FORMAT.format(LocalTime.now()));
		
		
		
	}
}
