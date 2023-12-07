package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strconv"
)

func main() {
	file, err := os.Open("./sample.txt")

	if err != nil {
		panic(err)
	}

	defer file.Close()

	scanner := bufio.NewScanner(file)

	//hash := make(map[string]int)

	for scanner.Scan() {
		text := scanner.Text()
		gameIDRegex := regexp.MustCompile(`Game (\d+):`)
		ids := gameIDRegex.FindStringSubmatch(text)
		gameID, _ := strconv.Atoi(ids[1])

		fmt.Println(gameID)
	}
}
