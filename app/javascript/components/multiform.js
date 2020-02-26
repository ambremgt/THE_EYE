
const multiForm = () => {
document.querySelector('.next').addEventListener('click', (event) => {
    document.querySelector('.block-1').classList.add('d-none');
    document.querySelector('.block-2').classList.remove('d-none');
  }
}

  export { multiForm };

