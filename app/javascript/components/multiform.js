const showTab = (currentTab, fieldset, fieldset_2) => {

    fieldset[currentTab].classList.remove('d-none');
    fieldset_2[currentTab].classList.remove('d-none');

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
const fixStepIndicator = (currentTab) => {
  // This function removes the "active" class of all steps...
  let i = currentTab ;
  let x = document.querySelectorAll('#progressbar > li');
  for (i = 0; i < x.length; i++) {
    x[i].classList.remove('active');
  }
  for (i = 0; i <= currentTab; i++)
  //... and adds the "active" class to the current step:
  x[i].classList.add('active');
}

const multiForm = () => {
  let currentTab = 0 ;
  let fieldset = document.querySelectorAll('.blocktoIt') ;
  let fieldset_2 = document.querySelectorAll('.blocktoPic') ;
    if (currentTab < fieldset.length) {
      document.querySelector('#next').addEventListener('click', (event) => {
        fieldset[currentTab].classList.add('d-none');
        fieldset_2[currentTab].classList.add('d-none');

    //     fieldset[currentTab].classList.add('animated', 'fadeOutLeft');
    //     fieldset[currentTab].addEventListener('animationend', (event)  => {
    // fieldset[currentTab].classList.remove('animated', 'fadeOutLeft')
    // });
        currentTab = currentTab + 1;
        showTab(currentTab, fieldset, fieldset_2);

  //       fieldset[currentTab].classList.add('animated', 'fadeInRight')
  // fieldset[currentTab].addEventListener('animationend', (event) => {
  //   fieldset[currentTab].classList.remove('animated', 'fadeInRight')
  // });

  });
    }

document.querySelector('#prev').addEventListener('click', (event) => {
  fieldset[currentTab].classList.add('d-none');
  fieldset_2[currentTab].classList.add('d-none');

//   fieldset[currentTab].classList.add('animated', 'fadeOutRight')
//   fieldset[currentTab].addEventListener('animationend', (event) => {
//     fieldset[currentTab].classList.remove('animated', 'fadeOutRight')
// });
  currentTab = currentTab - 1;
  showTab(currentTab, fieldset, fieldset_2);
//   fieldset[currentTab].classList.add('animated', 'fadeInRight');
//         fieldset[currentTab].addEventListener('animationend', (event) => {
//           fieldset[currentTab].classList.remove('animated', 'fadeInRight')
// });
});
}









  // Otherwise, display the correct tab
export { multiForm };
