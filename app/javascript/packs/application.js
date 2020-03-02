// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initUpdateFooterOnScroll } from '../components/footer';
import { multiForm } from '../components/multiform';
import { activeCheck } from '../components/checkbox';
import { attachShotlist } from '../components/attach_shotlist';
import { dashboardLine } from '../components/dashbordline';


import { hiddenPoster } from '../components/video';

// import { shotlistPreviewLink } from '../components/shotlist_preview_link';

// import { video } from '../components/home';
import { loadDynamicBannerText } from '../components/banner';



// document.addEventListener('turbolinks:load', () => {
//   // Call your JS functions here
//   initUpdateNavbarOnScroll();
//   multiForm();
//   // loadDynamicBannerText();
// });



document.addEventListener('turbolinks:load', () => {
  // video();
  initUpdateNavbarOnScroll();
  initUpdateFooterOnScroll();
  hiddenPoster();


  if (document.querySelector('.shotlist-link')) {

    attachShotlist();
  }
  if (document.querySelector('.category-choice')) {
  activeCheck();

  }
  if (document.querySelector('.blocktoIt')) {
    multiForm();
  }
  // if (document.querySelector('#banner-typed-text')) {
  //   loadDynamicBannerText();
  // }
  if (document.querySelector('.line2')){
    dashboardLine();
  }


});

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
