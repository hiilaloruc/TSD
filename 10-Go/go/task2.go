package main

import "fmt"

func fibonacci() func() int {
	a, b := 0, 1
	return func() int {
		result := a
		a, b = b, a+b
		return result
	}
}

func main() {

	n := 21
	closureUsing := fibonacci()
	for i := 0; i <= n; i++ {
		fmt.Println(closureUsing())
	}
	fmt.Println()
}
