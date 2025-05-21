# Use an official Python runtime
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy the content into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

