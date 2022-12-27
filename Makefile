BINARY_NAME=ferzApp

build:
	@go mod vendor
	@echo "Building ferz..."
	@go build -o tmp/${BINARY_NAME} .
	@echo "ferz built!"

run: build
	@echo "Starting ferz..."
	@./tmp/${BINARY_NAME} &
	@echo "ferz started!"

clean:
	@echo "Cleaning..."
	@go clean
	@rm tmp/${BINARY_NAME}
	@echo "Cleaned!"

test:
	@echo "Testing..."
	@go test ./...
	@echo "Done!"

stop:
	@echo "Stopping ferz..."
	@-pkill -SIGTERM -f "./tmp/${BINARY_NAME}"
	@echo "Stopped ferz!"

restart: stop start