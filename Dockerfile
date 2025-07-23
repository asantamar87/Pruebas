# Usa una imagen base de Eclipse Temurin OpenJDK 17 (JRE) en Ubuntu Focal
FROM eclipse-temurin:17-jre-focal

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de tu aplicación al contenedor
# Asume que el JAR se llama 'blackjackapi-0.0.1-SNAPSHOT.jar'
# y está en el directorio 'target/' de tu proyecto Maven
COPY target/blackjackapi-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que tu aplicación Spring Boot escucha
EXPOSE 8080

# Comando para ejecutar tu aplicación cuando el contenedor se inicie
ENTRYPOINT ["java", "-jar", "app.jar"]