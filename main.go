package main

import (
	"fmt"
	"os"
	"os/exec"
	"strings"
)

const ARTISAN_COMMAND = "/artisan"

func main() {
	pwd, _ := os.Getwd()
	paths := strings.Split(pwd, "/")

	paths = paths[:len(paths)-1]

	for {
		if len(paths) == 0 {
			break
		}

		path := strings.Join(paths, "/")
		if _, err := os.Stat(path + ARTISAN_COMMAND); err == nil {
			runCommand(path + ARTISAN_COMMAND)
		}

		paths = paths[:len(paths)-1]
	}

	fmt.Println("artisan command not found")
	os.Exit(1)
}

func runCommand(command string) {
	args := []string{command}
	args = append(args, os.Args[1:]...)
	cmd := exec.Command("php", args...)

	cmd.Stdout = os.Stdout

	cmd.Run()
	os.Exit(0)
}
