import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('.typewrite', {
    strings: ["be better !", "be better !", "be yourself !", "biqom"],
    typeSpeed: 80,
    loop: true,
    loopCount: 1,
    showCursor: false
  });
}

export { loadDynamicBannerText };