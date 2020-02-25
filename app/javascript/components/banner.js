import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["CAMEA", "Find the SHOT"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
