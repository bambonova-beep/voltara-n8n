FROM n8nio/n8n:1.68.0

# Set directory
WORKDIR /data

# Copy local files
COPY . /data/

# Environment variables for production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Required for Render
ENV N8N_HOST=voltana-n8n.onrender.com

# Start n8n
CMD ["n8n"]
