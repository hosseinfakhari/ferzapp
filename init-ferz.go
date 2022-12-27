package main

import (
	"log"
	"os"

	"github.com/shinogati/ferz"
)

func initApplication() *application {
	path, err := os.Getwd()
	if err != nil {
		log.Fatal(err)
	} 

	// init ferz
	fer := &ferz.Ferz{}
	err = fer.New(path)
	if err != nil {
		log.Fatal(err)
	}

	fer.AppName = "ferapp"
	fer.Debug = true

	app := &application{
		App: fer,
	}

	return app
}