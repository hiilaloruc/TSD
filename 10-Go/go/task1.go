package main

import (
	"fmt"
	"strings"
)

func wordCount(text string) map[string]int {
	list := make(map[string]int)
	data := strings.Split(text, " ")

	for _, val := range data {

		list[val]++
	}

	return list
}

func main() {
	list := make(map[string]int)
	list = wordCount("Hi, I am hilal, I really like learning new things, things that includes new point of views")
	fmt.Println(list)
}