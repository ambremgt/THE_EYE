const dashboardLine = () => {
  const x = document.querySelectorAll('.line2');
  x.forEach((element) => {
    window.addEventListener('scroll', () => {
      if ( element.getBoundingClientRect().top < 400 ) {
        element.classList.add('line2appear');
      } else{
        element.classList.remove('line2appear');
      }
    });
  });
}

export { dashboardLine };
