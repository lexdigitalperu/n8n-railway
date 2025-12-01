FROM docker.io/n8nio/n8n:latest

USER root
RUN npm install -g \
    n8n-nodes-serpapi \
    n8n-nodes-upload-post \
    n8n-nodes-langchain \
    @n8n/n8n-nodes-ai

USER node
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
