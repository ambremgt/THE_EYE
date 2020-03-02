const hiddenPoster = () => {
  const videos = document.querySelectorAll('.poster');
  videos.forEach((video) => {
    video.addEventListener('mouseover', (event) => {
      event.currentTarget.classList.add('hidden-poster');
    })
    // video.addEventListener('mouseleave', (event) => {
    //   event.currentTarget.classList.remove('hidden-poster');
    // })
  })
}

export { hiddenPoster };
