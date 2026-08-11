#!/bin/bash

# PHP-FPM service health check module

check_php_fpm() {
    if systemctl is-active --quiet php-fpm; then
        echo "PHP-FPM running"
        return 0
    else
        echo "PHP-FPM stopped"
        return 1
    fi
}

check_php_fpm
