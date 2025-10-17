package main

import (
	"fmt"
	"os"
	"path/filepath"
)

func main() {
	rel := filepath.Join("simple-recipe-browser-30180-30189", "flutter_frontend", "android")
	if st, err := os.Stat(rel); err == nil && st.IsDir() {
		abs, _ := filepath.Abs(rel)
		fmt.Println(abs)
		os.Exit(0)
	}
	fmt.Fprintf(os.Stderr, "ERROR: Android root not found at %s\n", rel)
	os.Exit(1)
}
