package com.happy.world.usage.basic;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

import com.happy.world.utils.Out;

public class FileUsage {
	
	private static void listFiles() {
		File[] files= new File("D:\\TEST\\ex1").listFiles(new FileFilter() {
			
			@Override
			public boolean accept(File f) {
				if(f.isFile() && f.getName().endsWith("js")) {
					return true;
				}
				return false;
			}
		});
		
		if(files.length == 0) {
			Out.print("파일 없음");
			return ;
		}
		
		for(File f: files) {
			String fname = f.getName();
			Out.print(fname);	
		}
	}
	
	
	private static void getFileCount() {
		Out.print(getFiles(new File("D:\\TEST\\ex1")));
	}
	
	private static void getFileCount8() throws IOException {
		Path path = Paths.get("D:\\TEST\\ex1");
		long size = Files.walk(path).filter(p -> p.toFile().isFile() && p.toFile().length() > 0 ).count();
		Out.print(size);
	}
	
	
	private static void getFileList8() throws IOException {
		long now = System.currentTimeMillis();
		Path path = Paths.get("D:\\TEST\\ex1");
		List<Path> list =Files.walk(path).filter(p -> p.toFile().isFile() && p.toFile().length() >0).collect(Collectors.toList());
		for(Path p : list) {
			File f = p.toFile();
			long modyTime = f.lastModified(); 
			if(now - modyTime > (5*60*1000) ) Out.print(f.getName());
			
		}
	}
	
	
	public static void main(String[] args) throws Exception {
		FileUsage.listFiles();
		FileUsage.getFileCount();
		FileUsage.getFileCount8();
		FileUsage.getFileList8();
	}
	
	private static int getFiles(File f) {
		int count = 0;
		File[] files=null;
		if(f.isDirectory()) {
			files = f.listFiles(new FileFilter() {
				@Override
				public boolean accept(File f) {
					if(f.exists()) {
						return true;
					}
					return false;
				}
			});
			
			if(files != null && files.length > 0 ) {
				for(File fail : files)	{
					count += getFiles(fail);
				}
			}
		}else {
			count = 1;
		}
		return count;
	}
}
