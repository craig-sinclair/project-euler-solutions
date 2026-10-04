package main

import (
	"strconv"
	"fmt"
)

func reverseString(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

func main() {
	largestProd := 0

	for i := 999; i >= 100; i-- {
		for j := 999; j >= 100; j-- {
			product := i * j
			strProduct := strconv.Itoa(product)
			reverseStrProduct := reverseString(strProduct)
			if strProduct == reverseStrProduct && product > largestProd {
				largestProd = product
			}
		}
	}
	fmt.Println(largestProd)
}

