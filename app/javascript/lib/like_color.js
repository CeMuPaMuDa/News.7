const changeColorToRed = (element) => {
  element.classList.add('heart-red')
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