# Ambiente React Native (Android) + Docker

Um facilitador para iniciar o ambiente de desenvolvimento em React Native (Android).

## Docker Compose

Crie o arquivo docker-compose.yml com o conteúdo abaixo na pasta do seu projeto.

### Linux

```docker-compose
version: '2'

services:
  app:
    image: react-native:latest
    volumes:
      - .:/usr/src
      - /dev:/dev
    tty: true
    privileged: true
```

## Iniciado Serviço

Abra o terminal na pasta do seu projeto e execute:

```sh
docker-compose up -d
docker-compose exec app bash
react-native start
```

Abra uma nova janela no terminal e execute:

```sh
docker-compose exec app bash
react-native run-android
```
