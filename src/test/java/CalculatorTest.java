import org.example.Calculator;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class CalculatorTest {
    @Test
    public void testAdd() {
        Calculator calc = new Calculator();
        assertEquals(5, calc.add(2, 3)); // 覆盖 add 方法
    }
    // 未编写 subtract 方法的测试 → 覆盖率将显示部分覆盖
}