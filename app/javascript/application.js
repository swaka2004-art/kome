// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
document.addEventListener("DOMContentLoaded", () => {
  const items = document.querySelectorAll(".category-item");

  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add("show");
        observer.unobserve(entry.target); // 一度だけ発動
      }
    });
  }, {
    threshold: 0.2 // 20%見えたら反応
  });

  items.forEach(item => observer.observe(item));
});

