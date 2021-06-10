#!/bin/bash
wget https://raw.githubusercontent.com/amitsdalal/cp-fix/main/fix.pl
chmod +x fix.pl
find /var/cpanel/userdata -type f -iname '*fpm.cache' | while read file; do ./fix.pl ${file} > $(echo ${file} | sed 's/cache/yaml/'); done
/scripts/php_fpm_config --rebuild