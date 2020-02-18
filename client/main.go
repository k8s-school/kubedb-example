package main

import (
	"fmt"

	kubedbv1 "kubedb.dev/apimachinery/apis/kubedb/v1alpha1"
)

func main() {
	var RedisSpec kubedbv1.RedisSpec
	fmt.Println("Hello world!")
	fmt.Println("Hello world! My lucky number is %v", RedisSpec)
}
