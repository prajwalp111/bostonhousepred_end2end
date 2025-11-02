FROM python:3.9-slim

# Copy everything to /app
COPY . /app

# Set working directory
WORKDIR /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Command to run app (note: typo fix "bing" → "bind")
CMD ["gunicorn", "--workers=4", "--bind=0.0.0.0:5000", "app:app"]
