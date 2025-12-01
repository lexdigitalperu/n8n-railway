FROM n8nio/n8n:latest-debian

USER root

# Instalar nodos comunitarios
RUN npm install -g \
    n8n-nodes-serpapi \
    n8n-nodes-upload-post \
    n8n-nodes-langchain

# Crear carpeta de datos con permisos
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
WORKDIR /home/node

ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Ejecutar n8n (Railway necesita CMD explícito)
CMD ["bash", "-c", "n8n"]
