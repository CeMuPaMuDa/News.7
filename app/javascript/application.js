// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"
import "popper"
import "bootstrap"

const changeColorToRed = (element) => {
  element.classList.add('heart-red');
}

const options = {
  "capture": false,
  "once": true,
  "passive": false
}
const heartButton = window.document.querySelector('.heart')


const redHeart = (event) => {
  const likeIcon = event.currentTarget
  changeColorToRed(likeIcon)
}

heartButton.addEventListener("click", redHeart)