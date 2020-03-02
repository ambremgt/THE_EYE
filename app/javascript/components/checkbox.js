const activeCheck = () => {
  const activate = document.querySelectorAll('.category-choice');
  let i = 0;
  activate.forEach((element) => {
  element.addEventListener('click', (event) => {
    for (i = 0; i < activate.length; i++) {
    activate[i].classList.remove('active');
  }
  element.classList.add('active');
  });
});
}

export { activeCheck };

