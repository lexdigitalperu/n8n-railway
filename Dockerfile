FROM n8nio/n8n:latest-debian

# Important: railway does not allow switching to USER node
USER root

# instalar paquetes comunitarios
RUN npm install -g \
    n8n-nodes-serpapi \
    n8n-nodes-upload-post \
    n8n-nodes-langchain

# crear carpeta .n8n con permisos correctos
RUN mkdir -p /home/node/.n8n && chmod -R 777 /home/node/.n8n

# Variables para evitar errores de permisos
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Puerto obligatorio
EXPOSE 5678

# Iniciar n8n directamente como root
CMD ["n8n"]
