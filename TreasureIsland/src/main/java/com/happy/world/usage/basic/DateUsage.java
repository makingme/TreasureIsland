package com.happy.world.usage.basic;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.happy.world.utils.Out;

public class DateUsage {
	public static void showCurrentDate() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		Out.print(dtf.format(now));
		Out.print(System.currentTimeMillis());
		
	}
	public static void main(String[] args) {
		DateUsage.showCurrentDate();
	}
}
