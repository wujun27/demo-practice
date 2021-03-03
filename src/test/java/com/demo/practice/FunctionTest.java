package com.demo.practice;

import com.demo.practice.unittest.TestUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.anyString;

/**
 * @author wujun
 * create time: 2:14 下午
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({TestUtils.class})
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

    @Test
    public void 测试静态mock方法() {
        String testString = "abc";
        PowerMockito.mockStatic(TestUtils.class);
        Mockito.when(TestUtils.getUpperCase(anyString())).thenReturn("BCD");
        String result = TestUtils.getUpperCase(testString);
        assertThat(result).isEqualTo("BCD");
    }

}
