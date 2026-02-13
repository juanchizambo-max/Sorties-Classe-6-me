touch mon_script.sh
#!/usr/bin/env bash
echo "Bonjour 👋"
chmod +x mon_script.sh
./mon_script.sh
#!/usr/bin/env bash
nom="${1:-ami}"
echo "Salut $nom"
