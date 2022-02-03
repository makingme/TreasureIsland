package com.happy.world.usage.apache.commons;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.XMLConfiguration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.happy.world.utils.Out;

public class XMLConfigurationUsage {
	
	public static void loadXML() throws ConfigurationException, IOException {
		Map<String, String> confMap = new HashMap<String, String>();
		String path ="/conf/conf.xml"; 
		Resource resource=new ClassPathResource(path);
		File confFile = resource.getFile();
		Out.print(confFile.getAbsolutePath());

		XMLConfiguration.setDefaultListDelimiter((char) (0));
		XMLConfiguration xml = new XMLConfiguration(confFile);
		
		Iterator<String> it=xml.getKeys();
		while(it.hasNext()) {
			String key=it.next();
			confMap.put(key, xml.getString(key));
		}
		
		for(Map.Entry<String, String> map: confMap.entrySet()) {
			Out.print(map.getKey());
			Out.print(map.getValue());
		}
	}
	
	public static void main(String[] args) throws ConfigurationException, IOException {
		Out.cutLine();
		XMLConfigurationUsage.loadXML();
		Out.cutLine();
	}
}

