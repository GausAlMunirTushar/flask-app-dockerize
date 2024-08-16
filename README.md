# Dockerized Python Flask App
This repository contains a simple Python Flask application Dockerized for easy deployment and testing.

## Prerequisites
Docker installed on your local machine. If you don't have Docker installed, follow the official installation guide.
Getting Started
These instructions will help you run the Dockerized Flask app on your local machine.

### Building the Docker Image

```bash
# # Use an official Python runtime as the base image
FROM python:3.9

# # Set the working directory in the container
 WORKDIR /app

# # Copy the current directory contents into the container at /app
COPY . /app

# # Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# # Make port 80 available to the world outside this container
 EXPOSE 80

# # Define environment variable
ENV NAME TANVIR

# # Run app.py when the container launches
CMD ["python", "app.py"]
```

``` cd Guide to Containers with Docker\01 flask demo ```

### Build the Docker image:


``` docker build -t my-python-app . ```

### Running the Docker Container

After building the image, you can run the Docker container:

```docker run -p 4000:80 my-python-app ```

The app will be accessible at http://localhost:4000.

### Stopping the Container
To stop the running container, use Ctrl + C in your terminal.


## Contributing
If you find any issues or have suggestions for improvements, please feel free to open an issue or create a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.
