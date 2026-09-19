package main

import "fmt"

func main() {	
	var sum uint32 = 0
	var prevPrev uint32 = 0
	var prev uint32 = 1

	for {
		var curr uint32 = prevPrev + prev
		if curr > 4000000 {
			break
		}

		if curr % 2 == 0 {
			sum += curr
		}
		prevPrev = prev
		prev = curr
	}

	fmt.Println(sum)
}
