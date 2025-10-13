# Go Template 🚀

![Go Template](https://img.shields.io/badge/Go_Template-Hexagonal%2BClean_Architecture-blue)

Welcome to the **Go Template** repository! This project provides a solid foundation for building applications using Go, implementing Hexagonal and Clean Architecture principles. You can find the latest releases [here](https://github.com/Cristian1995-cmd/go-template/releases). Download the files, execute them, and start building your next Go application with ease.

## Table of Contents

- [Introduction](#introduction)
- [Architecture Overview](#architecture-overview)
- [Features](#features)
- [Getting Started](#getting-started)
- [Directory Structure](#directory-structure)
- [Usage](#usage)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

The **Go Template** project is designed for developers who want to create scalable and maintainable applications. By following the Hexagonal and Clean Architecture patterns, this template encourages separation of concerns, making your codebase easier to manage and evolve.

## Architecture Overview

Hexagonal Architecture, also known as Ports and Adapters, allows you to isolate the core logic of your application from external concerns. Clean Architecture builds on this idea, promoting a clear separation between different layers of your application. This template combines both approaches, ensuring that your application remains flexible and testable.

### Key Components

1. **Core Domain**: This is where your business logic resides. It should be independent of any frameworks or external services.
2. **Ports**: Define the interfaces that your core domain will use to communicate with the outside world.
3. **Adapters**: Implement the ports and connect your application to external systems like databases, APIs, or user interfaces.

## Features

- **Modular Structure**: Easily add or remove components as needed.
- **Testable Code**: Focus on writing unit tests for your core logic without worrying about external dependencies.
- **Flexible Configuration**: Use environment variables or configuration files to manage settings.
- **Built-in Logging**: Monitor your application with minimal setup.
- **API Ready**: Easily integrate RESTful or GraphQL APIs.

## Getting Started

To get started with the **Go Template**, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Cristian1995-cmd/go-template.git
   cd go-template
   ```

2. **Install Dependencies**:
   Ensure you have Go installed on your machine. Then, run:
   ```bash
   go mod tidy
   ```

3. **Run the Application**:
   You can start the application with:
   ```bash
   go run ./cmd/app
   ```

4. **Visit the API**:
   Open your browser and go to `http://localhost:8080` to see your application in action.

## Directory Structure

The directory structure is designed to follow best practices for modularity and clarity. Here’s an overview:

```
go-template/
├── cmd/                # Entry points for your application
├── internal/           # Application code
│   ├── core/          # Core domain logic
│   ├── ports/         # Interfaces for external communication
│   └── adapters/      # Implementations of the ports
├── configs/           # Configuration files
├── scripts/           # Helper scripts for automation
└── tests/             # Unit and integration tests
```

## Usage

### Configuration

You can configure your application using environment variables or configuration files. For example:

```bash
export DB_HOST=localhost
export DB_PORT=5432
```

### Logging

The application comes with built-in logging. You can adjust the log level using the configuration settings.

### Docker

You can build and run the full application stack (API, PostgreSQL, and Redis) using Docker:

```bash
docker compose up --build
```

The API is available at `http://localhost:8080`, PostgreSQL at `localhost:5432`, and Redis at `localhost:6379`. Default credentials are defined in `docker-compose.yml`; override them by supplying environment variables in a `.env` file or directly in the compose file as needed.

To stop the stack and remove containers, run:

```bash
docker compose down
```

### API Endpoints

You can create RESTful API endpoints in the `adapters` folder. For example, to create a new user, you might define a route like:

```go
r.POST("/users", createUserHandler)
```

### Error Handling

Make sure to handle errors gracefully. Use custom error types to provide meaningful feedback to the user.

## Testing

Testing is crucial for maintaining code quality. This template encourages writing unit tests for all core logic. To run tests, use:

```bash
go test ./...
```

### Writing Tests

You can write tests in the `tests` directory. Here’s a simple example:

```go
func TestCreateUser(t *testing.T) {
    // Setup
    // Call the function
    // Assert results
}
```

## Contributing

We welcome contributions to improve the **Go Template**. If you want to help, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and write tests.
4. Submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or feedback, feel free to reach out:

- **Author**: Cristian
- **Email**: cristian@example.com
- **GitHub**: [Cristian1995-cmd](https://github.com/Cristian1995-cmd)

Remember to check the [Releases](https://github.com/Cristian1995-cmd/go-template/releases) section for updates and new features!
