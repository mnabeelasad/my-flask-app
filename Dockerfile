# Python Dockerfile
FROM python:3.8-slim

# Working directory
WORKDIR  /app

# Copy requirements file
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]