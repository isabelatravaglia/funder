import Noty from 'noty';

const toggleIcons = function() {
  const icons = document.querySelectorAll('.site-content i')

  const toggleIcon = function(icon) {
    icon.classList.toggle('heart-fav');
    icon.classList.toggle('heart-fas');
    icon.classList.toggle('fas');
    icon.classList.toggle('color-fas');
    icon.classList.toggle('far');
    icon.classList.toggle('color-far');
  }

  icons.forEach((icon) => {
    const scholarship = icon.parentElement
    const scholarshipId = scholarship.id
    icon.addEventListener('click', () => {
      if (icon.classList.contains('heart-fav')) {
        fetch('/favorite_scholarships', {
          method: 'post',
          body: JSON.stringify({scholarship_id: scholarshipId}),
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken()
          },
          credentials: 'same-origin'
        }).then(() => toggleIcon(icon),
        new Noty({
          type: 'success',
          layout: 'bottomRight',
          text: 'Favorite created!',
          theme: 'semanticui',
          timeout: 3000
        }
          ).show()
        )


      } else if (icon.classList.contains('heart-fas')) {
        console.log(scholarshipId)
        fetch(`/favorite_scholarships/${scholarshipId}`, {
          method: 'delete',
          body: JSON.stringify({scholarship_id: scholarshipId}),
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken()
          },
          credentials: 'same-origin'
        }).then(() => toggleIcon(icon),
          new Noty({
          type: 'warning',
          layout: 'bottomRight',
          text: 'Favorite deleted!',
          theme: 'semanticui',
          timeout: 3000
        }
          ).show()
        )
      }
    })
  })
};

export { toggleIcons };
