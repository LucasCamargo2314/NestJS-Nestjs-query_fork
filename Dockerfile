# Usar uma imagem leve baseada no Node 16
FROM node:16-alpine As development

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar arquivos de dependência primeiro
COPY package*.json ./
COPY yarn.lock ./

# Instalar dependências
RUN yarn

# Copiar o restante dos arquivos da aplicação
COPY . .

# Comando para iniciar a aplicação
CMD ["yarn", "start:dev"]
