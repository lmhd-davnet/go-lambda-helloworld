// Based on https://docs.aws.amazon.com/lambda/latest/dg/golang-handler.html

package main

import (
	"context"
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
)

type MyEvent struct {
	Name string `json:"name"`
}

func HandleRequest(ctx context.Context, event *MyEvent) (*string, error) {
	message := fmt.Sprintf("Hello World!")
	return &message, nil
}

func main() {
	lambda.Start(HandleRequest)
}
