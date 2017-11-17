FROM unocha/alpine-base-php-fpm

RUN crontab -l > crontab.txt && \
    echo -e "0\t1\t*\t*\t*\tphp /srv/www/html/index.php" >> crontab.txt && \
    crontab crontab.txt
