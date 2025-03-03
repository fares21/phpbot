# استخدم صورة PHP الرسمية
FROM php:8.1-cli

# تثبيت Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# تعيين مجلد العمل
WORKDIR /app

# نسخ ملفات المشروع
COPY . /app

# تثبيت الحزم باستخدام Composer
RUN composer install

# تشغيل البوت عند بدء الحاوية
CMD ["php", "index.php"]
