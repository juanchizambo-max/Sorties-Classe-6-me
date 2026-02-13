touch mon_script.sh
#!/usr/bin/env bash
echo "Bonjour 👋"
chmod +x mon_script.sh
./mon_script.sh
#!/usr/bin/env bash
nom="${1:-ami}"
echo "Salut $nom"
./mon_script.sh Juan
cp index.html index.html.bak
cp script.js script.js.bak
cat > access-gate.js <<'EOF'
(function () {
  const PASSWORD = "SUGER2026"; // change ce code
  const KEY = "site_access_ok";

  // déjà validé dans la session ?
  if (sessionStorage.getItem(KEY) === "1") return;

  const input = prompt("Code d'accès au site :");
  if (input === PASSWORD) {
    sessionStorage.setItem(KEY, "1");
    return;
  }

  document.body.innerHTML = "<h1>Accès refusé</h1><p>Code incorrect.</p>";
})();
EOF
rg -n "access-gate.js|script.js" index.html
