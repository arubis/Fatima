killall thin ; thin -s 3 -p 5000 -R config.ru start && tail -f /var/log/nginx/*.log log/*.log | ccze
