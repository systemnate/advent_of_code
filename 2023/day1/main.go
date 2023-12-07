package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"regexp"
	"strconv"
	"strings"
)

func main() {
	part1()
	part2()
}

func part1() {
	file, err := os.Open("./input2.txt")

	if err != nil {
		panic(err)
	}

	defer file.Close()

	scanner := bufio.NewScanner(file)

	re := regexp.MustCompile("[0-9]")
	foundNumbers := []int{}

	for scanner.Scan() {
		if numbers := re.FindAllString(scanner.Text(), -1); err == nil {
			number := numbers[0] + numbers[len(numbers)-1]
			numberAsInt, _ := strconv.Atoi(number)
			foundNumbers = append(foundNumbers, numberAsInt)
		} else {
			log.Fatal(err)
		}
	}

	sum := 0
	for _, n := range foundNumbers {
		sum += n
	}

	fmt.Println(sum)
}

func part2() {
	file, err := os.Open("./input2.txt")

	if err != nil {
		panic(err)
	}

	defer file.Close()

	scanner := bufio.NewScanner(file)

	re := regexp.MustCompile("[0-9]")
	foundNumbers := []int{}

	for scanner.Scan() {
		line := scanner.Text()

		line = strings.Replace(line, "one", "o1e", -1)
		line = strings.Replace(line, "two", "t2o", -1)
		line = strings.Replace(line, "three", "t3e", -1)
		line = strings.Replace(line, "four", "f4r", -1)
		line = strings.Replace(line, "five", "f5e", -1)
		line = strings.Replace(line, "six", "s6x", -1)
		line = strings.Replace(line, "seven", "s7n", -1)
		line = strings.Replace(line, "eight", "e8t", -1)
		line = strings.Replace(line, "nine", "n9e", -1)

		if numbers := re.FindAllString(line, -1); err == nil {
			number := numbers[0] + numbers[len(numbers)-1]
			numberAsInt, _ := strconv.Atoi(number)
			foundNumbers = append(foundNumbers, numberAsInt)
		} else {
			log.Fatal(err)
		}
	}

	sum := 0

	for _, n := range foundNumbers {
		sum += n
	}

	fmt.Println(sum)
}
