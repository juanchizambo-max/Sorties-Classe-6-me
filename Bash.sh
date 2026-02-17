touch mon_script.sh
#!/usr/bin/env bash
echo "Bonjour 👋"
chmod +x mon_script.sh
./mon_script.sh
#!/usr/bin/env bash
nom="${1:-ami}"
echo "Salut $nom"
./mon_script.sh Juan
sudo apt update
sudo apt install -y nginx apache2-utils certbot python3-certbot-nginx
sudo mkdir -p /var/www/sorties
sudo cp -r /workspace/Sorties-Classe-6-me/* /var/www/sorties/
sudo chown -R www-data:www-data /var/www/sorties
sudo htpasswd -c /etc/nginx/.htpasswd parent
sudo tee /etc/nginx/sites-available/sorties >/dev/null <<'EOF'
server {
    listen 80;
    server_name juanchizambo.fr www.juanchizambo.fr;

    root /var/www/sorties;
    index index.html;

    location / {
        auth_basic "Acces parents";
        auth_basic_user_file /etc/nginx/.htpasswd;
        try_files $uri $uri/ =404;
    }
}
EOF
sudo ln -s /etc/nginx/sites-available/sorties /etc/nginx/sites-enabled/sorties
sudo nginx -t
sudo systemctl reload nginx
sudo ufw allow 'Nginx Full'
sudo ufw status
sudo certbot --nginx -d juanchizambo.fr -d www.juanchizambo.fr
sudo systemctl status certbot.timer
sudo certbot renew --dry-run
