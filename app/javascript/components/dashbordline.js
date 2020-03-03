const dashboardLine = () => {
  const x = document.querySelectorAll('.line2');
  x.forEach((element) => {
    window.addEventListener('scroll', () => {
      if ( element.getBoundingClientRect().top < 480 ) {
        element.classList.add('line2appear', 'animated', 'fadeInRight');

      } else{
        element.classList.remove('line2appear', 'animated', 'fadeInRight');
      }
    });
  });

}

export { dashboardLine };
