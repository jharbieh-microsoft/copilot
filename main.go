// write a hello world example in go
package main

import "fmt"

func main() {
	fmt.Println("Hello World")

	//	return 2 integers
	fmt.Println(add(1, 2))
}

// create a function that returns two integers
func add(x int, y int) int {
	return x + y
}

// Path: main_test.go

// How do I run this code?
// go test -v
