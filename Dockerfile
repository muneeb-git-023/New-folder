# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy only requirements first to use cache
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the files
COPY . .

# Expose the Flask port
EXPOSE 5000

# Run the Flask app correctly (note: "app/main.py" inside repo becomes /app/app/main.py)
CMD ["python", "app/main.py"]
