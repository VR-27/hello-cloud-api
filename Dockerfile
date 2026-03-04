# 1. Use an official, lightweight Python image
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy our requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of our application code
COPY app.py .

# 5. Tell Docker that this container uses port 5000
EXPOSE 5000

# 6. Define the command to run our app when the container starts
CMD ["python", "app.py"]