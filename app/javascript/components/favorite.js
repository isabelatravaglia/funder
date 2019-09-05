const toggleIcons = function() {
  const icons = document.querySelectorAll('.site-content i')

  const toggleIcon = function(icon) {
    icon.classList.toggle('far');
    icon.classList.toggle('fas');
  }

  icons.forEach((icon) => {
    const scholarship = icon.parentElement
    const scholarshipId = scholarship.id
    icon.addEventListener('click', () => {
      if (icon.classList.contains('far')) {
        fetch('/favorite_scholarships', {
          method: 'post',
          body: JSON.stringify({scholarship_id: scholarshipId}),
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken()
          },
          credentials: 'same-origin'
        }).then(() => toggleIcon(icon))

      } else if (icon.classList.contains('fas')) {
        fetch(`/favorite_scholarships/${scholarshipId}`, {
          method: 'delete',
          body: JSON.stringify({scholarship_id: scholarshipId}),
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken()
          },
          credentials: 'same-origin'
        }).then(() => toggleIcon(icon))
      }
    })
  })
};

export { toggleIcons };
