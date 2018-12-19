# Ambiente React Native (Android) + Docker

Um facilitador para iniciar o ambiente de desenvolvimento em React Native (Android).

## Docker Compose

Na pasta do seu projeto, crie o arquivo `docker-compose.yml` com o conteúdo abaixo:

```docker-compose
version: '2'

services:
  app:
    image: raivieiraadriano92/docker-react-native:with-emulator #imagem COM emulador android
    #image: raivieiraadriano92/docker-react-native #imagem SEM emulador android
    volumes:
      - .:/usr/src
      - ~/.gradle:/root/.gradle
      - /dev:/dev
      - "/tmp/.X11-unix:/tmp/.X11-unix"
    tty: true
    privileged: true
    environment:
      NODE_ENV: development
      DISPLAY: $DISPLAY
```

OBS: Emuladores instalados diretamente na máquina não funcionam, nesse caso é necessário um dispositivo físico via USB.

## Iniciando Serviço

Abra o terminal na pasta do seu projeto e execute:

```sh
docker-compose up -d
docker-compose exec app react-native start
```

Abra uma nova janela no terminal e execute:

```sh
docker-compose exec app run-android
```

## Emulador

Para iniciar o emulador do Android execute:

```sh
docker-compose exec app bash
openEmulator
```
Caso ocorra o erro de QXcbConnection no ubuntu basta executar o comando 
xhost para dar permissão de acesso ao display.

```sh
  xhost +
```

### Sugestões e melhorias são muito bem vindas :)
