# Use an official python runtime as a parent image
FROM python:3.8-slim

# set the working directory in the container
WORKDIR /app

# Copy the current directory content into the container at /app
COPY . /app

# install any needed packages specified in the requirements.txt
RUN  pip install --no-cache-dir -r requirements.txt

# Make port 500 available to the world outside this container
EXPOSE 5000

# Run the flask app
ENV FLASK_APP = app.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]