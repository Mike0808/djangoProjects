# Pull base image
FROM python:latest AS python
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /code
# Install dependencies
COPY hello/Pipfile hello/Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system
# Copy project
COPY hello/ /code/
