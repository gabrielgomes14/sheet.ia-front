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
FROM nginx:alpine3.22

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Copia os arquivos da build para o NGINX
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
