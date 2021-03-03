package com.demo.practice;

import com.demo.practice.unittest.TestUtils;
import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * @author wujun
 * create time: 2:14 下午
 */
public class FunctionTest {

    @Test
    public void 测试断言() {
        String testString = "";

    }

    @Test
    public void 测试静态方法() {
        String testString = "abc";
        String result = TestUtils.getUpperCase(testString);
        assertThat(result).isEqualTo("ABC");
    }
}
