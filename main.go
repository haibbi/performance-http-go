package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "I'm build with Go!",
		})
	})
	r.Run(":8080") // By default, it listens on 0.0.0.0:8080
}
