package test.happy.world.basic;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class StringTest {
	String dummy="M0021";

	@Test
	@DisplayName("문자열 마지막 한자리 SUBSTRING")
	void substringEx10() {
		assertEquals("1", dummy.substring(dummy.length()-1));
	}
	
	@Test
	@DisplayName("문자열 마지막 전 한자리 SUBSTRING")
	void substringEx11() {
		assertEquals("2", dummy.substring(dummy.length()-2, dummy.length()-1));
	}
	
	@Test
	@DisplayName("문자열 SUBSTRING Exception")
	void substringEx100() {
		dummy="";
	    Throwable exception = assertThrows(StringIndexOutOfBoundsException.class, () -> {
	    	dummy.substring(dummy.length()-1);	    		
	    });
		assertEquals(StringIndexOutOfBoundsException.class, exception.getClass());
	}
	

}
