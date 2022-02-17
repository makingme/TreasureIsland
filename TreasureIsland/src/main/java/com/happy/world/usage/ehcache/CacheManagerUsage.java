package com.happy.world.usage.ehcache;

import java.util.List;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.EnableCaching;

import com.happy.world.utils.Out;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheException;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

@EnableCaching
public class CacheManagerUsage {
	private static String rootPath = Thread.currentThread().getContextClassLoader().getResource("").getPath();
	private static CacheManager cm = CacheManager.create(rootPath +"ehcache.xml");
	
	public static void getCache() throws CacheException {
		for(String cacheName : cm.getCacheNames()) {
			Out.print(cacheName);
			Cache c = cm.getCache(cacheName);
			Out.print(c.getGuid());
			Out.print(c.getSize());			
			Out.cutLine();
			
		}
	}
	
	public static void getCacheElement() {
		Out.cutLine();
		String name = findByNameCache("name");
		name = findByNameCache("name");
		Cache c = cm.getCache("MEMBER_CACHE");

		Out.print(c.get("name"));
		List<Object> list = c.getKeys();
		Out.print("List size : "+list.size());
		c.put(new Element("1","test"));
		for(Object key : c.getKeys()) {
			Out.print(key.toString());
		}
	}
	
	public static void putCacheElement() {

		Cache c = cm.getCache("MEMBER_CACHE");
		c.put(new Element("name","name"));	
		Out.print("List size : "+ c.getKeys().size());
		refresh("name");
		Out.print("List size : "+ c.getKeys().size());
	}
	
	@CacheEvict(value = "findMemberCache", key="#name")
	public static void refresh(String name) {
		Out.print(name + "의 Cache Clear!");
	}


	@Cacheable(value="MEMBER_CACHE", key="#name")
	public static String findByNameCache(String name) {
		return name;
	}
	
	public static void main(String[] args) {
		CacheManagerUsage.getCache();
		CacheManagerUsage.getCacheElement();
		CacheManagerUsage.putCacheElement();
	}
}

