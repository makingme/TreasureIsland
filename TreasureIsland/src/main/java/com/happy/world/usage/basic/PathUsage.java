package com.happy.world.usage.basic;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
	
	public static void main(String[] args) throws Exception {
		PathUsage.isExsist();
	}
}
