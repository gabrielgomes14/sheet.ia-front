# Etapa 1: build da aplicação com Node + pnpm
FROM node:20-alpine AS build

WORKDIR /app

# Copia apenas os arquivos necessários para instalar dependências
COPY package.json pnpm-lock.yaml ./

# Instala o pnpm globalmente e instala dependências
RUN npm install -g pnpm && pnpm install

# Copia o restante da aplicação
COPY . .

# Executa o build de produção
RUN pnpm run build


# Etapa 2: imagem final com NGINX para servir os arquivos
FROM nginx:alpine

# Remove configuração default
RUN rm -rf /etc/nginx/conf.d

# Copia a configuração nginx da pasta front/front-ecar/nginx para dentro do container
COPY ./nginx /etc/nginx

# Copia os arquivos da build para o NGINX
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
