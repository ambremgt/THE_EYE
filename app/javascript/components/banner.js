import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["The first ^1000 filmmakers's community.", "Collaboration, ^500 Innovation, ^500 Creativity.", "Camea ^2000 project"],
    shuffle: false,
    typeSpeed: 100,
    loop: true,
    showCursor: false,
  });
}

export { loadDynamicBannerText };
