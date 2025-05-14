FROM ubuntu:22.04

# Evita preguntas al instalar
ENV DEBIAN_FRONTEND=noninteractive

# Instala Git (opcional) y crea la carpeta del sitio
RUN apt update && apt install -y git && apt clean
RUN mkdir -p /mi-web

# Copia los archivos del sitio (carpeta src/) al contenedor
COPY src/ /mi-web

# Directorio de trabajo
WORKDIR /mi-web

# Mantiene el contenedor activo
CMD ["tail", "-f", "/dev/null"]

