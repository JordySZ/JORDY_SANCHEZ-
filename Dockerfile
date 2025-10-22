# Usar la imagen base de Python 3.9
FROM python:3.9-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar todos los archivos del proyecto al contenedor
COPY . /app

# Instalar las dependencias (asegúrate de tener requirements.txt en la raíz)
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto en el que se ejecutará la aplicación (por ejemplo, 3000 o 8080)
EXPOSE 8080

# Comando para ejecutar la aplicación. Si es un archivo Python principal, usa:
CMD ["python", "app/main.py"]
