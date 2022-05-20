package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

func main() {

    f, err := os.Open("quiz.csv")

    if err != nil {
        log.Fatal(err)
    }
    defer f.Close()

    scanner := bufio.NewScanner(f)
	var questions[]string
	var answers[]string
	var userCorrectAnswers int

    for scanner.Scan() {
		//fmt.Println(scanner.Text())
		question := scanner.Text()[:strings.IndexByte(scanner.Text(), ',')]
		answer := scanner.Text()[strings.IndexByte(scanner.Text(), ',')+1:]
		
		fmt.Println(question, "= ")
		var answer_user string
		fmt.Scanln(&answer_user)
		if answer_user == answer{
			userCorrectAnswers++
		}

		questions = append(questions,question)
		answers = append(answers,answer)

    }

    if err := scanner.Err(); err != nil {
        log.Fatal(err)
    }
	fmt.Println("Number of Questions = " + strconv.Itoa(len(questions)))
	fmt.Println("Number of Correct Answers = " + strconv.Itoa(userCorrectAnswers))
}