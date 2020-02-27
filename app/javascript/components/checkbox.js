const activeCheck = () => {
  const activate = document.querySelectorAll('.category-choice');
  activate.forEach((element) => {
  element.addEventListener('click', (event) => {
  element.classList.toggle('active');
  });
});
}

export { activeCheck };
