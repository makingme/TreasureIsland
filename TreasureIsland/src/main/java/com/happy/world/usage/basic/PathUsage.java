package com.happy.world.usage.basic;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileTime;
import java.util.List;
import java.util.stream.Collectors;

import com.happy.world.utils.Out;

public class PathUsage {
	
	public static void isExsist() throws IOException {
		String path = "D:\\TEST\\test1223";
		Path pp = Paths.get(path);
		Files.isWritable(pp);
		Out.print(Files.isDirectory(pp));
		if(pp.toFile().exists() ==false) Files.createDirectory(pp);
		List<Path> list = Files.walk(Paths.get(path)).filter(p -> p.toFile().isFile()).collect(Collectors.toList());
		for(Path p : list) {
			//Out.print(p.getFileName());
		}
		Out.print(File.pathSeparator);
		Out.print(File.separator);
		Out.print(pp.isAbsolute());
	}
	
	public static void filePath() {
		String path = "D:\\TEST\\test1223\\test.txt";
		String path2 = "D:\\TEST\\test1223\\";
		Path p = Paths.get(path);
		Path p2 = Paths.get(path2);
		Out.print(p.getParent());
		Out.print(p.getParent().getParent());
		Out.print(p2.getParent());
		Out.print(p2.toString()+File.separator);
		
		Out.print(p.getFileSystem());
		Out.print(p.getRoot());		
		Out.print(p.getFileName().toString());
	}
	
	public static void updateModifiedTime() throws IOException {
		String path = "D:\\TEST\\FETCHER\\test.txt";
		Path p = Paths.get(path);
		Out.print(Files.getLastModifiedTime(p));
		FileTime f = FileTime.fromMillis(System.currentTimeMillis());
		Files.setLastModifiedTime(p, f);
		Out.print(Files.getLastModifiedTime(p));
	}
	
	public static void getName() {
		String path = "D:\\TEST\\FETCHER\\test.txt";
		Path p = Paths.get(path);
		Out.print(p.getFileName());
	}
	
	public static void main(String[] args) throws Exception {
		//PathUsage.isExsist();
		//PathUsage.filePath();;
		//PathUsage.updateModifiedTime();
		getName();
	}
}

