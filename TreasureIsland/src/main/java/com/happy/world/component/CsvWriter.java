package com.happy.world.component;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import com.opencsv.CSVWriter;

public class CsvWriter {
	public static void main(String[] args) {
		String filePath = "D:\\TEST\\writer.txt";
		String targetPath = "D:\\TEST\\writer.csv";
		
		
		try(BufferedReader reader = Files.newBufferedReader(Paths.get(filePath), Charset.forName("UTF-8"));
				CSVWriter writer = new CSVWriter(new OutputStreamWriter(new FileOutputStream(targetPath), StandardCharsets.UTF_8), ',', CSVWriter.DEFAULT_QUOTE_CHARACTER, CSVWriter.DEFAULT_ESCAPE_CHARACTER, CSVWriter.DEFAULT_LINE_END);
				){
				String line = null;
				while((line = reader.readLine()) != null) {
					String[] array = line.split("\\|");
					writer.writeNext(array);
				}
				writer.flush();
			}catch(IOException e) {
				e.printStackTrace();
			}
	}
}
