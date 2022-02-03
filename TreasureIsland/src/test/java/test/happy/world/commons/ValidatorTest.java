package test.happy.world.commons;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.apache.commons.validator.GenericValidator;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;

public class ValidatorTest {
	// 컨트폴 + R
	@Test
	@Order(1)
	@DisplayName("Validator Date 유효성 확인")
	void isValidDate() {
		String date="20211231113030";
		assertEquals(true, GenericValidator.isDate(date, "yyyyMMddHHmmss", true));
	}
}
