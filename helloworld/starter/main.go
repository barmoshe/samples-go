package main

import (
	"context"
	"fmt"
	"log"
	"time"

	"go.temporal.io/sdk/client"

	"github.com/temporalio/samples-go/helloworld"
)

func main() {
	c, err := client.Dial(client.Options{})
	if err != nil {
		log.Fatalln("Unable to create client:", err)
	}
	defer c.Close()

	workflowOptions := client.StartWorkflowOptions{
		ID:        "hello_world_workflowID",
		TaskQueue: "hello-world",
	}

	counter := 0

	for {
		counter++
		name := fmt.Sprintf("%d", counter)

		we, err := c.ExecuteWorkflow(context.Background(), workflowOptions, helloworld.Workflow, name)
		if err != nil {
			log.Fatalln("Unable to execute workflow:", err)
		}

		log.Println("Started workflow. WorkflowID:", we.GetID(), "RunID:", we.GetRunID())

		var result string
		err = we.Get(context.Background(), &result)
		if err != nil {
			log.Fatalln("Unable to get workflow result:", err)
		}

		log.Println("Workflow result:", result)

		// Delay for 5 seconds before the next iteration
		time.Sleep(5 * time.Second)
	}
}
