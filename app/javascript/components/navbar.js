// app/javascript/components/navbar.js
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-show');
      } else {
        navbar.classList.remove('navbar-lewagon-show');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
