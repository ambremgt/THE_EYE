const dashboardLine = () => {
  const x = document.querySelectorAll('.line2');
  console.log(x);
  x.forEach((element) => {
    window.addEventListener('scroll', () => {
      if ( element.getBoundingClientRect().top < 550 ) {
        element.classList.remove('d-none');
      } else {
        element.classList.add('d-none');
      }
    });
  });
}

export { dashboardLine };
