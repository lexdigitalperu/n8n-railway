FROM docker.io/n8nio/n8n:1.121.3

USER root

# Crear la carpeta donde n8n carga extensiones
RUN mkdir -p /home/node/.n8n/custom

# Instalar nodos dentro de esa carpeta
RUN cd /home/node/.n8n/custom && \
    npm install n8n-nodes-serpapi && \
    npm install n8n-nodes-upload-post && \
    npm install n8n-nodes-langchain

# Permisos
RUN chown -R node:node /home/node/.n8n

USER node

# Decirle a n8n dónde están tus nodos personalizados
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

