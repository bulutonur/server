# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory to /app
WORKDIR /app

# Copy required files to the working directory
COPY requirements.txt /app
COPY OnlineSubsystemPythonServer.py /app
COPY cert.crt /app
COPY cert.key /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make the port available to the world outside this container
EXPOSE 443

# Run app when the container launches
CMD ["python", "./OnlineSubsystemPythonServer.py"]
