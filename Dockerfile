FROM docker.io/n8nio/n8n:1.121.3

USER root

# Instalación de nodos adicionales
RUN npm install -g \
    n8n-nodes-serpapi \
    n8n-nodes-upload-post \
    n8n-nodes-langchain

USER node

# Seguridad: permisos de archivos
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

