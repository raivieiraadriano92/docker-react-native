# Ambiente React Native (Android) + Docker

Um facilitador para iniciar o ambiente de desenvolvimento em React Native (Android).

## Docker Compose

Na pasta do seu projeto, crie o arquivo docker-compose.yml com o conteúdo abaixo:

### Linux

```docker-compose
version: '2'

services:
  app:
    image: raivieiraadriano92/docker-react-native
    volumes:
      - .:/usr/src
      - /dev:/dev
    tty: true
    privileged: true
```

## Iniciando Serviço

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

## Observações

1. No momento só possível executar a aplicação em um dispositivo físico via USB, estamos trabalhando para fazer funcionar também no Genymotion.

2. Testamos apenas no Linux, mas achamos que o mapeamento do volume `/dev` no arquivo `docker-compose.yml` funcione também no Mac.
