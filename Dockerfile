   # Указывается операционная система
    FROM mcr.microsoft.com/playwright:v1.56.1-noble

    # Скопировать автотесты сюда
    COPY . .

    RUN npm install
    RUN npx playwright install --with-deps

    CMD ["npm", "run", "test"]



