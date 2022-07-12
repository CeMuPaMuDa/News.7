const changeColorToRed = (element) => {
  element.classList.add('heart-red')
}

const heartButton = window.document.querySelector('.heart')

const redHeart = (event) => {
  const likeIcon = event.currentTarget
  changeColorToRed(likeIcon)
}

if (heartButton){heartButton.addEventListener("click", redHeart)}