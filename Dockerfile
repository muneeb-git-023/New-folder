# Use slim Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements first (for caching)
COPY app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files
COPY app/ .

# Expose port
EXPOSE 5000

# Start the app
CMD ["python", "app/main.py"]
