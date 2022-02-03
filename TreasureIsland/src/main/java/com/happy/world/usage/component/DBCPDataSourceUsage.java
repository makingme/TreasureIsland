package com.happy.world.usage.component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.happy.world.component.DBCPDataSource;
import com.happy.world.utils.Out;



public class DBCPDataSourceUsage {
	public static void getConnection() {
		int cnt=0;
		long ctime=System.currentTimeMillis();
		Connection conex=null;
		try (	Connection con = DBCPDataSource.getConnection();
				PreparedStatement ps=con.prepareStatement("select 1 from dual")	){
			conex=con;
			for(int i=0;i<10000;i++) {			
				ps.executeUpdate();
				cnt++;
				
			}
			long dtime=System.currentTimeMillis();
			Out.print((dtime-ctime));
			Out.print(cnt);
			Out.print(conex.isClosed());
			throw new SQLException("SQLException 고의발생");
		}catch(SQLException e) {
			Out.print(e.getMessage());
			try {
				Out.print(conex.isClosed());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
		try {
			Out.print(conex.isClosed());
			Out.print(conex==null?"null":"NotNull");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void main(String[] args) {
		DBCPDataSourceUsage.getConnection();
	}
}
