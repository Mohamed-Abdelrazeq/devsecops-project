# Use the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root to perform installations
USER root

# Update and install Maven and Git
RUN apt-get update && apt-get install -y \
    maven \
    git \
    && rm -rf /var/lib/apt/lists/*

# Switch back to the Jenkins user for security
USER jenkins