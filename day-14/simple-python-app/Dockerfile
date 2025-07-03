# Accept a build-time argument for the base image (default is your Docker Hub image)
ARG BASE_IMAGE=srinivasyadav552/python:3.11
FROM ${BASE_IMAGE}

# Set the working directory inside the container
WORKDIR /app

# Copy only requirements first for better layer caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port your Flask app will run on
EXPOSE 5000

# Optional: Set environment variables if needed
# ENV FLASK_ENV=production

# Set the default command to run the Flask app
CMD ["python", "app.py"]
