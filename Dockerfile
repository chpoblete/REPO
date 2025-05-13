<<<<<<< HEAD
FROM ubuntu
RUN apt-get update && apt-get install -y curl
=======
# Usa una imagen base de Ubuntu
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y curl

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo desde tu máquina local al contenedor
COPY . /app

# Instala dependencias (por ejemplo, en una aplicación Node.js)
RUN apt-get update && apt-get install -y nodejs npm

# Expone el puerto 3000
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["npm", "start"]
>>>>>>> 04f25632c0fbdacebc64795b808cfdcc0a3c533c
