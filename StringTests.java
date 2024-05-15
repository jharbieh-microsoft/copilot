import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class StringTests {

    @Test
    public void testReverseString() {
        assertEquals("dlroW olleH", main.reverseString("Hello World"));
        assertEquals("gnirtS esreveR", main.reverseString("Reverse String"));
        assertEquals("olleH", main.reverseString("Hello"));
        assertEquals("", main.reverseString(""));
    }
}