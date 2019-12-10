import "bootstrap";
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
// import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initFavorite } from '../plugins/favorite';
import { initLike } from '../plugins/favorite';


if (document.querySelector('#map')) {
initMapbox();
}


(function() {
  var body = document.body;
  var burgerMenu = document.getElementsByClassName('b-menu')[0];
  var containerHome = document.getElementsByClassName('container')[1];
  var burgerContain = document.getElementsByClassName('b-container')[0];
  var burgerNav = document.getElementsByClassName('b-nav')[0];
  if (burgerMenu) {
  burgerMenu.addEventListener('click', function toggleClasses() {
    [body, burgerContain, burgerNav].forEach(function (el) {
      el.classList.toggle('open');
      containerHome.style.display = containerHome.style.display === 'none' ? '' : 'none';

    });
  }, false);
}
})();

if (document.querySelector('.favorites')) {
  initFavorite();
}
if (document.querySelector('.favorites2')) {

initLike();

}

document.querySelectorAll('.card-category').forEach((card) => {

  const liked = card.querySelector('.liked')
  liked.addEventListener('click', () => {
    card.style.display = 'none';
  })
});



