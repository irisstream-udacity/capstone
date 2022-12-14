FROM python:3.7.3-stretch

ARG version=local

ENV VERSION ${version}

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . /app

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip && \
	pip install --no-cache-dir -r requirements.txt

## Step 4:
# Expose port 5000
EXPOSE 5000

## Step 5:
# Run app.py at container launch
CMD ["flask", "run", "--host", "0.0.0.0"]
