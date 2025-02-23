# Go compiler
GO=go
# Binary name
BINARY=game_of_life
# Source files
SRC=$(wildcard *.go)

# Build the binary
.PHONY: all
all: run

# Build the project
.PHONY: build
build: $(SRC)
	@mkdir -p dist
	$(GO) build -o ./dist/$(BINARY) $(SRC)

# Run the project
.PHONY: run
run: build
	./dist/$(BINARY)

# Clean the project
.PHONY: clean
clean:
	rm -f ./dist