import "bootstrap";
import { toggleIcons } from '../components/favorite'
import { initUpdateNavbarOnScroll } from '../components/navbar';


initUpdateNavbarOnScroll();

toggleIcons();

const pagesHome = document.querySelector(".pages.home");
if(pagesHome) {

  var slideIndex = 1;
  showSlides(slideIndex);


  function plusSlides(n) {
    showSlides(slideIndex += n);
  }

  function currentSlide(n) {
    showSlides(slideIndex = n);
  }

  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");

    console.log(slides);

    if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }

    slides[slideIndex-1].style.display = "block";
    //dots[slideIndex-1].className += " active";
  }

  const prev = document.querySelector(".prev");
  prev.addEventListener("click", (e) => {
    plusSlides(-1);
  });

  const next = document.querySelector(".next");
  next.addEventListener("click", (e) => {
    plusSlides(1);
  });

}
