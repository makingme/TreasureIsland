package com.happy.world.usage.basic;

import java.nio.ByteBuffer;

import com.happy.world.utils.Out;

public class ByteBufferUsage {
	
	/*
	 * clear() 
	 * - The position is set to zero, the limit is set to the capacity, and the mark is discarded.
	 * 
	 * flip()
	 * - The limit is set to the current position and then the position is set to zero. If the mark is defined then it is discarded.
	 * 
	 * compact()
	 * read buffer but remain not read data and want to keep writing then use compact()
	 * remain data move 0 position ( 0 - remain.size) and set position the remain.size
	 * 
	 */
	
	public static void position() {
		ByteBuffer b = ByteBuffer.allocateDirect(1024);
		Out.print(showPosition(b));
		
		b.flip();
		Out.print(showPosition(b));
		
		b.clear();
		Out.print(showPosition(b));
		
		b.put("123457890".getBytes());
		Out.print(showPosition(b));
		
		b.clear();
		Out.print(showPosition(b));
		
		b.put("12345".getBytes());
		Out.print(showPosition(b));
		
		b.flip();
		Out.print(showPosition(b));
		
		Out.print(b.get());
		Out.print(showPosition(b));
		
		Out.print(b.get());
		Out.print(showPosition(b));
		
		b.compact();
		Out.print(showPosition(b));
		
		b.flip();
		Out.print(showPosition(b));
		
		Out.print(b.get());
		Out.print(b.get());
		Out.print(b.get());
		
	}
	
	public static String showPosition(ByteBuffer b) {
		return "buffer.position:"+b.position()+", buffer.limit:"+b.limit()+", buffer.capacity:"+b.capacity()+", buffer.hasRemaining:"+b.hasRemaining();
	}
	public static void main(String[] args) {
		ByteBufferUsage.position();
	}
}
