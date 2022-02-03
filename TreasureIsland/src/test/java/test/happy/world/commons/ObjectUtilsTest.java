package test.happy.world.commons;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.ObjectUtils;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;

import com.happy.world.vo.company.CompanyVo;

class ObjectUtilsTest {
	// 컨트폴 + R
	@Test
	@Order(1)
	@DisplayName("새로 생성한 VO EMPTY 여부 확인")
	void voEmptyCheck() {
		CompanyVo company =new CompanyVo();
		assertEquals(false, ObjectUtils.isEmpty(company));
	}

	@Test
	@Order(2)
	@DisplayName("새로 생성한 MAP EMPTY 여부 확인")
	void mapEmptyCheck() {
		Map map =new HashMap();
		assertEquals(true, ObjectUtils.isEmpty(map));
	}
}
