alert("Bienvenue aux aventures de 6ème");

const openBtn = document.getElementById("openModal");
const closeBtn = document.getElementById("closeModal");
const overlay = document.getElementById("overlay");

// Sécurise le modal (évite les erreurs si openModal n'existe pas)
if (openBtn && overlay) {
  openBtn.addEventListener("click", () => {
    overlay.style.display = "flex";
  });
}

if (closeBtn && overlay) {
  closeBtn.addEventListener("click", () => {
    overlay.style.display = "none";
  });
}

// Scroll fluide uniquement pour les ancres internes
document.querySelectorAll("nav a").forEach((link) => {
  link.addEventListener("click", function (e) {
    const target = this.getAttribute("href");
    if (target && target.startsWith("#")) {
      e.preventDefault();
      const section = document.querySelector(target);
      if (section) section.scrollIntoView({ behavior: "smooth" });
    }
  });
});

// Lightbox (fonctions globales appelées depuis le HTML)
function openLightbox(img) {
  const lightbox = document.getElementById("lightbox");
  const lightboxImg = document.getElementById("lightbox-img");
  if (!lightbox || !lightboxImg) return;

  lightboxImg.src = img.src;
  lightbox.style.display = "flex";
}

function closeLightbox() {
  const lightbox = document.getElementById("lightbox");
  if (!lightbox) return;

  lightbox.style.display = "none";
}
