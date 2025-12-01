# Imagen oficial estable de n8n
FROM n8nio/n8n:latest

# Instalar nodos comunitarios
USER root
RUN npm install -g \
    n8n-nodes-serpapi \
    n8n-nodes-upload-post \
    n8n-nodes-langchain

USER node

EXPOSE 5678

CMD ["n8n"]
