package test.happy.world.basic;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class CastingTest {
	@Test
	@DisplayName("String to Boolean 캐스팅")
	void stringToBooleanCasting() {
		String a="test";
		String b="true";
		String c="TruE";
		String d="TruE  ";
		String e="true  ";
		
		assertEquals(false, Boolean.parseBoolean(a));
		assertEquals(true, Boolean.parseBoolean(b));
		assertEquals(true, Boolean.parseBoolean(c));
		assertEquals(false, Boolean.parseBoolean(d));
		assertEquals(false, Boolean.parseBoolean(e));
	}
}
