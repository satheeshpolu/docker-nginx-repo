
# Approach One  with Alpine Image
FROM nginx:alpine

# Install git and nginx
RUN apk update

# Set working directory to nginx web root
WORKDIR /app

COPY . .

RUN cp nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

# ===== Approach Two  with Ubuntu Image =====
# FROM ubuntu:22.04

# # Install git and nginx
# RUN apt-get update && \
#     apt-get install -y git nginx && \
#     apt-get clean && rm -rf /var/lib/apt/lists/*

# # Remove default nginx web files
# RUN rm -rf /var/www/html/*

# # Set working directory to nginx root
# WORKDIR /var/www/html

# # Clone the Git repo directly into /var/www/html
# RUN git clone https://github.com/satheeshpolu/test-repo.git .

# # Expose port 80
# EXPOSE 80

# # Start nginx in foreground
# CMD ["nginx", "-g", "daemon off;"]
