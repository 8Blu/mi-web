FROM ubuntu:22.04

# Evita preguntas al instalar
ENV DEBIAN_FRONTEND=noninteractive

# Instala Git y crea la carpeta mi-web
RUN apt update && apt install -y git && apt clean
RUN mkdir -p /mi-web

# Copia los archivos del sitio (carpeta /docs) al contenedor
COPY docs/ /mi-web

# Directorio de trabajo
WORKDIR /mi-web

# Mantiene el contenedor activo
CMD ["tail", "-f", "/dev/null"]

