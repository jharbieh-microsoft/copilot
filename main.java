// create a hello world program
public class main {
    public static void hw(String[] args) {
        System.out.println("Hello World");
    }

    //  create a fibonaci program
    public static int fib(int n) {
        if (n <= 1) {
            return n;
        }
        return fib(n - 1) + fib(n - 2);
    }
}
