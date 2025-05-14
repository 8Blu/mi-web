# Imagen base ligera y limpia
FROM ubuntu:latest

# Evita errores de interacción
ENV DEBIAN_FRONTEND=noninteractive

# Actualiza y agrega git (opcional)
RUN apt update && apt install -y git && apt clean

# Crea un directorio dentro del contenedor para guardar la web
RUN mkdir -p /mi-web

# Copia tu web al contenedor
COPY src/ /mi-web

# Establece el directorio de trabajo
WORKDIR /mi-web

# Comando por defecto (para que el contenedor quede activo en pruebas)
CMD ["tail", "-f", "/dev/null"]
