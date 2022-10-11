package main

import (
	"fmt"

	"github.com/sudosapan/redis/client"
)

func main() {
	client.Set("key", "value2312")
	client.Get("key")

	fmt.Println(18446744073692774399 / 8 / 1024 / 1024 / 1024 / 1024)
}
