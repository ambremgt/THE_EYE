  let currentTab = 0 ;
  let fieldset = document.querySelectorAll('fieldset') ;


const showTab = () => {

    fieldset[currentTab].classList.remove('d-none');

    if (currentTab == 0) {
    document.querySelector('#prev').classList.add('d-none');
  } else {
    document.querySelector('#prev').classList.remove('d-none');
  };
  if (currentTab == (fieldset.length - 1)) {
    document.querySelector('#next').classList.add('d-none');
    document.querySelector('#sub').classList.remove('d-none');
  } else {
    document.querySelector('#next').classList.remove('d-none');
    document.querySelector('#sub').classList.add('d-none');
  };
  // ... and run a function that displays the correct step indicator:

  fixStepIndicator(currentTab)
}
const fixStepIndicator = () => {
  // This function removes the "active" class of all steps...
  let i = currentTab ;
  let x = document.querySelectorAll('#progressbar > li');
  for (i = currentTab; i < x.length; i++) {
    x[i].classList.remove('active');
  }
  //... and adds the "active" class to the current step:
  x[currentTab].classList.add('active');
}

const multiForm = () => {
    if (currentTab < fieldset.length) {
document.querySelector('#next').addEventListener('click', (event) => {
  fieldset[currentTab].classList.add('d-none');
  currentTab = currentTab + 1;
  showTab(currentTab);
  });

document.querySelector('#prev').addEventListener('click', (event) => {
  fieldset[currentTab].classList.add('d-none');
  currentTab = currentTab - 1;
  showTab(currentTab);
});
}
}







  // Otherwise, display the correct tab:


export { multiForm };
