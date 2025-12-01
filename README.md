# 🚀 n8n Personalizado – LexDigital Perú

Este repositorio contiene una imagen personalizada de **n8n**, configurada para trabajar con nodos comunitarios adicionales y optimizada para desplegarla fácilmente en:

- Railway (recomendado)
- Render (plan gratuito con reinicios)
- Docker Desktop
- VPS (Ubuntu, Debian, AlmaLinux, etc.)

## 🔌 Nodos incluidos

- `n8n-nodes-serpapi`
- `n8n-nodes-upload-post`
- `n8n-nodes-langchain`

## 📦 Archivos del repositorio

```
Dockerfile
.dockerignore
README.md
package.json
data/
```

## 🚀 Cómo desplegar en Railway

1. Crear un proyecto → **Deploy from GitHub Repo**
2. Conectar este repositorio
3. Railway detectará automáticamente el `Dockerfile`
4. Agregar las variables:

```
N8N_PORT=5678
N8N_PROTOCOL=https
N8N_HOST=0.0.0.0
WEBHOOK_URL=https://<tu-subdominio>.up.railway.app/
N8N_ENCRYPTION_KEY=pon-una-clave-larga-y-segura
```

Opcional:

```
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=tuclave123
```

## 🛠 Ejecutar localmente

```bash
docker build -t n8n-lexdigital .
docker run -p 5678:5678 n8n-lexdigital
```

Acceder en:

```
http://localhost:5678
```

## 🧩 Agregar nuevos nodos

Editar el Dockerfile:

```
RUN npm install -g <nuevo-nodo>
```

## 🏢 LexDigital Perú

Automatización y transformación digital para empresas.
