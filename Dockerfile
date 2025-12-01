FROM docker.io/n8nio/n8n:1.121.3

USER root

# Crear carpeta custom
RUN mkdir -p /home/node/.n8n/custom

# Instalar nodos EN LA CARPETA CUSTOM (ahora sí los reconoce n8n)
RUN cd /home/node/.n8n/custom && \
    npm init -y && \
    npm install n8n-nodes-serpapi && \
    npm install n8n-nodes-upload-post && \
    npm install n8n-nodes-langchain

# Ajustar permisos
RUN chown -R node:node /home/node/.n8n

USER node

# Decirle a n8n dónde están los nodos instalados
ENV N8N_CUSTOM_EXTENSIONS="/home/node/.n8n/custom"
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

