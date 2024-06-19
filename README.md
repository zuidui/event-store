# Zuidui resources

## Overview

This repository sets up a a development environment for all resources neede to debug Zuidui components using Docker Compose such as RabbitMQ and PgAdmin. The services are interconnected within a Docker network named `zuidui`.

## Prerequisites

Ensure you have the following installed on your system:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Project Structure

- `docker-compose.yml`: Defines the services, their configurations, and networking.
- `.env`: Contains environment variables used by Docker Compose and the services.
- `Makefile`: Provides a set of commands to automate common tasks.

## Getting Started

### Configuration

1. **.env File**: Update the `.env` file with appropriate values.

2. **docker-compose.yml**: Ensure it references the `.env` file for environment variables.

### Commands

Use the `Makefile` for common tasks:

- **Build and start the services**:

    ```sh
    make run
    ```

- **Stop the services**:

    ```sh
    make clean
    ```

### Services

- **RabbitMQ Management Console**: Accessible at `http://localhost:${BROKER_PORT_MANAGEMENT}`
- **PgAdmin**: Accessible at `http://localhost:${PGADMIN_PORT}`

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a Pull Request.

## License

This project is licensed under the Apache 2.0 License. See the LICENSE file for details.

## Contact

For any inquiries or issues, please open an issue on the [GitHub repository](https://github.com/zuidui/resources) or contact any of the maintainers.

---
