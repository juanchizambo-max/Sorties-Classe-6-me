touch mon_script.sh
#!/usr/bin/env bash
echo "Bonjour 👋"
chmod +x mon_script.sh
./mon_script.sh
#!/usr/bin/env bash
nom="${1:-ami}"
echo "Salut $nom"
./mon_script.sh Juan
printf "parent:%s\n" "$(openssl passwd -apr1 'TonMotDePasseFort!')" > .htpasswd
cat > .htaccess <<'EOF'
AuthType Basic
AuthName "Zone parents"
AuthUserFile /CHEMIN/ABSOLU/VERS/.htpasswd
Require valid-user
EOF
pwd
