# Docke and Docker Compose for WordPress

## Overview

This project provides a Docker Compose configuration for deploying a secure and reliable WordPress website. It includes all of the essential components, such as NGINX, PHP-FPM, MariaDB, and WordPress, and it is pre-configured with security best practices in mind.

## Features

  Secure: NGINX is configured to use only TLSv1.2 or TLSv1.3, and WordPress is installed in a subdirectory of the web root directory. The WordPress database is configured to use strong passwords, and the WordPress admin panel is protected with a strong username and password.
  
  Reliable: The Docker Compose configuration ensures that all of the services are started and stopped in the correct order, and that they are restarted automatically in case of a crash.

  Scalable: The Docker Compose configuration can be easily scaled up or down to meet the needs of your website.

## Getting Started

  Clone this repository to your local machine.

  Create a .env file in the root directory of the project and add the following environment variables:

        DOMAIN_NAME         : The domain name that you want to use for your WordPress website.
        MYSQL_ROOT_PASSWORD : The root password for the MariaDB database.
        MYSQL_USER          : The username for the WordPress database user.
        MYSQL_PASSWORD      : The password for the WordPress database user.

  Build the Docker images:

    docker-compose build

  Start the containers:

    docker-compose up

  Build and Run containers:
  
    docker-compose up --build
  
  Configure your domain name to point to your local IP address.

Once you have completed these steps, your WordPress website will be up and running! You can access it at your domain name in a web browser.

Bonus Services

This project also includes additional services, such as a Redis cache, an FTP server, a static website, Adminer, or any other service that you think is useful.
