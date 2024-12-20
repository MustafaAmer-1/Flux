ROOT_DIR = $(PWD)
FRONTEND_DIR = ./Flux_frontend
BACKEND_DIR = ./Flux_backend
BACKEND_DB_SCHEMA_DIR = $(BACKEND_DIR)/sql/schema

# Define the default target
.PHONY: all
all: run_frontend backend

# Target to build the frontend client
.PHONY: build_frontend
build_frontend:
	cd $(FRONTEND_DIR) && npm install && cd $(ROOT_DIR)

# Target to build the backend client
.PHONY: build_backend
build_backend:
	cd $(BACKEND_DB_SCHEMA_DIR) && goose postgres ${DB_URL} up && cd $(ROOT_DIR)

# Target to run the frontend client
.PHONY: run_frontend
run_frontend: build_frontend
	cd $(FRONTEND_DIR) && npm run dev

# Target to run the backend client
.PHONY: run_backend
run_backend: build_backend
	cd $(BACKEND_DIR) && go mod vendor && go build -o Flux && ./Flux

# Target to run both frontend and backend simultaneously
.PHONY: run
run:
	@echo "Starting frontend and backend clients..."
	$(MAKE) -j2 run_frontend run_backend
