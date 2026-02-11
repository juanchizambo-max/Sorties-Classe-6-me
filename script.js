alert("Bienvenues aux aventures de 6ème");
const openBtn = document.getElementById("openModal");
const closeBtn = document.getElementById("closeModal");
const overlay = document.getElementById("overlay");

openBtn.addEventListener("click", () => {
  overlay.style.display = "flex";
});

closeBtn.addEventListener("click", () => {
  overlay.style.display = "none";
});
document.querySelectorAll('nav a').forEach(link => {
  link.addEventListener('click', function (e) {
    const target = this.getAttribute('href');

    // Only apply smooth scroll for IDs (like #galerie-photos)
    if (target.startsWith('#')) {
      e.preventDefault();

      const section = document.querySelector(target);
      if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
      }
    }
    function openLightbox(img) {
  const lightbox = document.getElementById("lightbox");
  const lightboxImg = document.getElementById("lightbox-img");
  lightboxImg.src = img.src;
  lightbox.style.display = "flex";
}

function closeLightbox() {
  const lightbox = document.getElementById("lightbox");
  lightbox.style.display = "none";
}

    // else: normal link (index.html, apropos.html) → browser handles it
  });
});


