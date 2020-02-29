const attachShotlist = () => {
  const shotlistLink = document.querySelector('.shotlist-link');
  shotlistLink.addEventListener('click', (data) => {
    data.preventDefault()
    const msgInput = document.querySelector('#message_content');
    msgInput.value = data.target
    //document.getElementById('notif-counter').insertAdjacentHTML('beforeend',
      //`<span class="msg-number">${data.notif_counter}</span>`)
  })
}

export { attachShotlist };

