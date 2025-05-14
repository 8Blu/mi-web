# Imagen base Linux
FROM ubuntu:latest

# Instalar Git (opcional, si usarás git clone en CI/CD)
RUN apk update && apk add git

# Crear una carpeta dentro del contenedor para tu web
RUN mkdir /app

# Copiar el contenido de src/ en tu proyecto local al contenedor
COPY src/ /app

# Establece el directorio de trabajo
WORKDIR /app

# Comando por defecto cuando se ejecuta el contenedor
CMD ["sh"]
