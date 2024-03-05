FROM cirrusci/flutter:latest

# Install dependencies
RUN sudo apt-get update && sudo apt-get install -y git curl

# Set up the workspace
WORKDIR /workspace

# Clone your Flutter project (optional, if you want the container to clone your project)
# RUN git clone https://github.com/yourusername/your-flutter-project.git /workspace
ENV PATH="/home/codespace/flutter/bin:$PATH"

RUN git clone https://github.com/flutter/flutter && \
    /home/codespace/flutter/bin/flutter config --enable-web
