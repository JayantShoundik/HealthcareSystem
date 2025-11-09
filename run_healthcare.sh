#!/bin/bash
# Healthcare System build and run script

echo "🔄 Cleaning and building the project..."
mvn clean install

if [ $? -eq 0 ]; then
    echo "✅ Build successful! Starting the Spring Boot application..."
    mvn spring-boot:run
else
    echo "❌ Build failed. Please check errors above."
fi
