+// create a function that returns a string literal
+// call the function from main

+ (void) testReturnStringLiteral
{
    NSString *source = @"#include <stdio.h>\nchar *hello() { return \"Hello World!\\n\"; }\nint main() { printf(hello()); return 0; }";
    NSString *executable = @"a.out";
    NSString *output = [self compileAndRun:source executable:executable];
    STAssertEqualObjects(output, @"Hello World!\n", @"Hello World test failed");
    [self deleteExecutable:executable];
}

+// create a function that returns a string literal
+// call the function from main

+ (void) testReturnStringLiteral
{
    NSString *source = @"#include <stdio.h>\nchar *hello() { return \"Hello World!\\n\"; }\nint main() { printf(hello()); return 0; }";
    NSString *executable = @"a.out";
    NSString *output = [self compileAndRun:source executable:executable];
    STAssertEqualObjects(output, @"Hello World!\n", @"Hello World test failed");
    [self deleteExecutable:executable];
}

+// create a function that returns a string literal
+// call the function from main

+ (void) testReturnStringLiteral
{
    NSString *source = @"#include <stdio.h>\nchar *hello() { return \"Hello World!\\n\"; }\nint main() { printf(hello()); return 0; }";
    NSString *executable = @"a.out";
    NSString *output = [self compileAndRun:source executable:executable];
    STAssertEqualObjects(output, @"Hello World!\n", @"Hello World test failed");
    [self deleteExecutable:executable];
}

+// create a function that returns a string literal
+// call the function from main

+ (void) testReturnStringLiteral
{
    NSString *source = @"#include <stdio.h>\nchar *hello() { return \"Hello World!\\n\"; }\nint main() { printf(hello()); return 0; }";
    NSString *executable = @"a.out";
    NSString *output = [self compileAndRun:source executable:executable];
    STAssertEqualObjects(output, @"Hello World!\n", @"Hello World test failed");
    [self deleteExecutable:executable];
}

+// create a function that returns a string literal
+// call the function from main

+// compile it
+// run it
+// check the output
+// delete the executable

+ (void) testHelloWorld
{
    NSString *source = @"#include <stdio.h>\nint main() { printf(\"Hello World!\\n\"); return 0; }";
    NSString *executable = @"a.out";
    NSString *output = [self compileAndRun:source executable:executable];
    STAssertEqualObjects(output, @"Hello World!\n", @"Hello World test failed");
    [self deleteExecutable:executable];
}

// create a program that uses a function from a library

+ (void) testLibrary
{
    NSString *source = @"#include <stdio.h>\nint main() { printf(\"Hello World!\\n\"); return 0; }";
    NSString *executable = @"a.out";
    NSString *output = [self compileAndRun:source executable:executable];
    STAssertEqualObjects(output, @"Hello World!\n", @"Hello World test failed");
    [self deleteExecutable:executable];
}


