# Última versión estable de n8n (con IA Agents y LLM Tools)
FROM docker.io/n8nio/n8n:latest

# Cambiamos al usuario root para permitir instalaciones
USER root

# Instalar paquetes adicionales necesarios para tus flujos
RUN npm install -g \
    n8n-nodes-serpapi \
    n8n-nodes-upload-post \
    @n8n/n8n-nodes-langchain \
    @n8n/n8n-nodes-ai \
    @n8n/langchain-nodes

# Permisos correctos para evitar errores en Railway
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node

# Regresar al usuario n8n para ejecutar con seguridad
USER node

# Exponer el puerto por defecto
EXPOSE 5678

# Comando de inicio
CMD ["n8n"]

