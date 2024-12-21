# 使用官方 PHP Apache 镜像
FROM php:8.1-apache

# 将项目文件复制到容器的 Web 根目录
COPY . /var/www/html/

# 设置 Web 根目录权限
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# 暴露端口 80
EXPOSE 80
