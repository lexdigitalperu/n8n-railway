# Imagen oficial de n8n
FROM n8nio/n8n:latest

# Instalar nodos comunitarios
USER root
RUN npm install -g \
    n8n-nodes-serpapi \
    n8n-nodes-upload-post \
    n8n-nodes-langchain

# Asegurar permisos
RUN mkdir -p /data && chown -R node:node /data

USER node
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

WORKDIR /home/node

# Comando final compatible (sh en vez de bash)
CMD ["sh", "-c", "/usr/local/bin/n8n"]

