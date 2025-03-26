# Use official Python image
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy files into the container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose Flask's default port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
