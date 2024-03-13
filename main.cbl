      * write me a sample COBOL program that reads a file and writes it to another file.
        * write me a sample COBOL program that reads a file and writes it to another file, but only if the record is not already in the output file.

## COBOL

COBOL is a high-level programming language for business applications. It was the first popular language designed to be operating system agnostic and is still in use in many financial and business applications today.

### History

COBOL was created in 1959 by a group of computer professionals called the Conference on Data Systems Languages (CODASYL). The group was a committee of the U.S. Department of Defense charged with developing a standard programming language for business data processing. The language was based on the programming language FLOW-MATIC, which was developed by Rear Admiral Grace Hopper.

### Syntax

COBOL is a verbose language, with a syntax that is designed to be easily readable by non-programmers. It uses English-like keywords and phrases to describe the program logic. For example, a simple COBOL program to add two numbers might look like this:

```cobol
IDENTIFICATION DIVISION.
PROGRAM-ID. ADD-TWO-NUMBERS.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NUM1 PIC 9(3).
01 NUM2 PIC 9(3).
01 RESULT PIC 9(4).

PROCEDURE DIVISION.
ADD-NUMBERS.
    MOVE 123 TO NUM1
    MOVE 456 TO NUM2
    ADD NUM1 TO NUM2 GIVING RESULT
    DISPLAY "THE RESULT IS " RESULT
    STOP RUN.
```

### Features

COBOL has a number of features that make it well-suited for business applications, including:

* Support for fixed-length records and files
* Support for decimal arithmetic
* Support for date and time manipulation
* Support for string manipulation
* Support for file handling
* Support for report generation

