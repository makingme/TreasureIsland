package com.happy.world.component;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class DBCPDataSource {
	private static BasicDataSource ds;
	static {
		Resource resource=new ClassPathResource("/conf/db.properties");
		try(InputStream is = new FileInputStream(resource.getFile())) {
			ds = new BasicDataSource();
			Properties properties = new Properties();
			properties.load(is);
			ds.setDriverClassName(properties.getProperty("driver"));
			ds.setUrl(properties.getProperty("url"));
			ds.setUsername(properties.getProperty("user"));
			ds.setPassword(properties.getProperty("pw"));
			ds.setInitialSize(5);;
			ds.setMaxTotal(5);
			//.....
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		return ds.getConnection();
	}
	
	private DBCPDataSource() {}
}
