FROM python:3.9-slim

# Create working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY service/ ./service/

# Create a non-root user and switch to it
RUN useradd --uid 1000 theuser && chown -R theuser /app
USER theuser

# Expose service port
EXPOSE 8080

# Run gunicorn server
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "service:app"]
