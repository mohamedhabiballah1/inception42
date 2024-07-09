# Inception Project

This project is part of the 42 School curriculum. It aims to deepen your understanding of system administration by using Docker to virtualize multiple services within a personal virtual machine.

## Table of Contents

1. [Introduction](#introduction)
2. [Mandatory Requirements](#mandatory-requirements)
3. [Setup and Installation](#setup-and-installation)
4. [Usage](#usage)
5. [Conclusion](#conclusion)

## Introduction

The Inception project broadens your knowledge of system administration by utilizing Docker to virtualize several services. The project involves setting up an infrastructure composed of different services, each running in a dedicated Docker container within a virtual machine.

## Mandatory Requirements

1. **Docker Containers**:
    - NGINX with TLSv1.2 or TLSv1.3
    - WordPress + php-fpm (without NGINX)
    - MariaDB (without NGINX)
2. **Volumes**:
    - One for the WordPress database
    - One for WordPress website files
3. **Network**:
    - A Docker network to connect containers
4. **Constraints**:
    - Containers must restart in case of a crash.
    - Use the penultimate stable versions of Alpine or Debian as base images.
    - Write custom Dockerfiles for each service (no pre-built images except Alpine/Debian).
    - Use environment variables stored in a `.env` file.
    - NGINX container must be the only entrypoint via port 443 using TLSv1.2/1.3.

## Setup and Installation

### Prerequisites

- Docker
- Docker Compose
- Virtual Machine software (e.g., VirtualBox)

### Steps

1. Clone the repository:
    ```bash
    git clone https://github.com/mohamedhabiballah1/inception.git
    cd inception
    ```

2. Configure environment variables:
    - Create a `.env` file in the `srcs` directory:
        ```env
        DOMAIN_NAME=mhabib-a.42.fr
        MYSQL_ROOT_PASSWORD=1234
        MYSQL_USER=mhabib-a
        MYSQL_PASSWORD=1234
        ```

3. Build and start the containers:
    ```bash
    make
    ```

## Usage

- Access the WordPress site via `https://yourlogin.42.fr`.
- The NGINX server handles all requests through port 443 with TLSv1.2/1.3.
- The WordPress and MariaDB containers run independently with persistent storage for data and files.

## Conclusion

This project enhances your skills in system administration by setting up a robust infrastructure with Docker, providing hands-on experience with containerization, networking, and service management.
