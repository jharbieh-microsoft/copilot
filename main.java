// create a hello world program
public static class main {
    public static void hw(String[] args) {
        System.out.println("Hello World");
    }

    //  create a fibonaci program
    public int fib(int n) {
        if (n <= 1) {
            return n;
        }
        return fib(n - 1) + fib(n - 2);
    }
}

//  write me a method that takes in a string and returns the string in reverse
public static String reverseString(String str) {
    String result = "";
    for (int i = str.length() - 1; i >= 0; i--) {
        result += str.charAt(i);
    }
    return result;
}



