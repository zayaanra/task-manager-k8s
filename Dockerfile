# Official Python image
FROM python:3.10

# Specify working directory
WORKDIR /app

# Copy all files locally to the working directory
COPY . /app

# Environment variables needed for the Flask application
ENV FLASK_ENV=development
ENV FLASK_APP=app.py
ENV PORT=5000

# Install any dependencies as specified by requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 5000

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]