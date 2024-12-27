# Dockerfile
FROM python:3.11-slim

# Install required dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    sshpass openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN pip install --no-cache-dir ansible

# Set a working directory
WORKDIR /ansible

# Default command
CMD ["bash"]

